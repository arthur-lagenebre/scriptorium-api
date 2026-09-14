using Microsoft.AspNetCore.Authentication;
using Microsoft.AspNetCore.Authentication.JwtBearer;
using Microsoft.EntityFrameworkCore;
using Microsoft.IdentityModel.Tokens;
using Microsoft.OpenApi;
using Scriptorium.Mtg.Api.Authentication;
using Scriptorium.Mtg.Api.DatabaseContext;
using Scriptorium.Mtg.Api.Interfaces;
using Scriptorium.Mtg.Api.Services;
using Scriptorium.Mtg.Api.Translations;

var myAllowSpecificOrigins = "_myAllowSpecificOrigins";

var builder = WebApplication.CreateBuilder(args);

builder.Services.AddCors(options =>
{
    options.AddPolicy(myAllowSpecificOrigins, policy =>
    {
        policy.WithOrigins("http://localhost:4200")
              .AllowAnyHeader()
              .AllowAnyMethod();
    });
});

// Add services to the container.
builder.Services.AddTransient<IArtistService, ArtistService>();
builder.Services.AddTransient<ICardFaceService, CardFaceService>();
builder.Services.AddTransient<ICardNameService, CardNameService>();
builder.Services.AddTransient<ICardService, CardService>();
builder.Services.AddTransient<ICardSetFaceService, CardSetFaceService>();
builder.Services.AddTransient<ICardSetService, CardSetService>();
builder.Services.AddTransient<ICardTextService, CardTextService>();
builder.Services.AddTransient<ICardTutorsService, CardTutorsService>();
builder.Services.AddTransient<ICardTypelineService, CardTypelineService>();
builder.Services.AddTransient<IColorService, ColorService>();
builder.Services.AddTransient<IRelatedCardService, RelatedCardService>();
builder.Services.AddTransient<IRulingService, RulingService>();
builder.Services.AddTransient<ISetService, SetService>();
builder.Services.AddTransient<ISupertypeService, SupertypeService>();
builder.Services.AddTransient<ISupertypeLanguageService, SupertypeLanguageService>();
builder.Services.AddTransient<ISubtypeService, SubtypeService>();
builder.Services.AddTransient<ISubtypeLanguageService, SubtypeLanguageService>();
builder.Services.AddTransient<ITypeService, TypeService>();
builder.Services.AddTransient<ITypeLanguageService, TypeLanguageService>();

builder.Services.AddDbContext<MtgDbContext>(db => db.UseSqlServer(builder.Configuration.GetConnectionString("MTGConnectionString")));

builder.Services.AddControllers().AddJsonOptions(options =>
{
    options.JsonSerializerOptions.PropertyNamingPolicy = null;
});
// Learn more about configuring Swagger/OpenAPI at https://aka.ms/aspnetcore/swashbuckle
builder.Services.AddEndpointsApiExplorer();
builder.Services.AddSwaggerGen();

var jwtOptions = builder.Configuration.GetSection("Jwt").Get<JwtOptions>() ?? new JwtOptions();
var jwtKey = builder.Configuration["Jwt:Key"] ?? throw new InvalidOperationException("Jwt:Key absent. Renseignez-le dans les user secrets.");

var signingCredentials = new SigningCredentials(new SymmetricSecurityKey(Convert.FromBase64String(jwtKey)), SecurityAlgorithms.HmacSha256);

builder.Services.AddSingleton(jwtOptions);
builder.Services.AddSingleton(signingCredentials);
builder.Services.AddSingleton<ITokenService, TokenService>();

builder.Services.AddScoped<IUserService, UserService>();
builder.Services.AddScoped<ITranslationEditService, TranslationEditService>();

builder.Services.AddAuthentication(options => { options.DefaultScheme = JwtBearerDefaults.AuthenticationScheme; options.DefaultChallengeScheme = JwtBearerDefaults.AuthenticationScheme; })
    .AddJwtBearer(options =>
    {
        options.TokenValidationParameters = new TokenValidationParameters
        {
            ValidateIssuer = true,
            ValidIssuer = jwtOptions.Issuer,
            ValidateAudience = true,
            ValidAudience = jwtOptions.Audience,
            ValidateLifetime = true,
            ValidateIssuerSigningKey = true,
            IssuerSigningKey = signingCredentials.Key,
            ClockSkew = TimeSpan.FromMinutes(1)
        };
    })
    .AddCookie("External", options =>
    {
        options.Cookie.Name = "scriptorium.external";
        options.Cookie.SameSite = SameSiteMode.Lax;
        options.ExpireTimeSpan = TimeSpan.FromMinutes(5);
    })
    .AddGoogle(options =>
    {
        options.ClientId = builder.Configuration["Authentication:Google:ClientId"]!;
        options.ClientSecret = builder.Configuration["Authentication:Google:ClientSecret"]!;
        options.SignInScheme = "External";
        options.CallbackPath = "/signin-google";
        options.ClaimActions.MapJsonKey("picture", "picture");
    })
    .AddGitHub(options =>
    {
        options.ClientId = builder.Configuration["Authentication:GitHub:ClientId"]!;
        options.ClientSecret = builder.Configuration["Authentication:GitHub:ClientSecret"]!;
        options.SignInScheme = "External";
        options.CallbackPath = "/signin-github";
        options.Scope.Add("user:email");
    });

builder.Services.AddSwaggerGen(options =>
{
    options.AddSecurityDefinition("Bearer", new OpenApiSecurityScheme
    {
        Type = SecuritySchemeType.Http,
        Scheme = "bearer",
        BearerFormat = "JWT",
        Description = "Collez le jeton obtenu via /api/auth/login/{provider}"
    });

    options.AddSecurityRequirement(document => new OpenApiSecurityRequirement
    {
        [new OpenApiSecuritySchemeReference("Bearer", document)] = []
    });
});

builder.Services.AddAuthorization();

var app = builder.Build();

// Configure the HTTP request pipeline.
if (app.Environment.IsDevelopment())
{
    app.UseSwagger();
    app.UseSwaggerUI();
}

app.UseCors(myAllowSpecificOrigins);

app.UseHttpsRedirection();

app.UseAuthentication();

app.UseAuthorization();

app.MapControllers();

app.Run();
