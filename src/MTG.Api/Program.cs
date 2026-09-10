using Microsoft.EntityFrameworkCore;
using MTG.Api.DatabaseContext;
using MTG.Api.Interfaces;
using MTG.Api.Services;

var myAllowSpecificOrigins = "_myAllowSpecificOrigins";

var builder = WebApplication.CreateBuilder(args);

builder.Services.AddCors(options =>
{
    options.AddPolicy(name: myAllowSpecificOrigins,
                      corsPolicyBuilder =>
                      {
                          corsPolicyBuilder.WithOrigins("http://localhost:4200");
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
builder.Services.AddDbContext<MtgDbContext>(db => db.UseSqlServer(builder.Configuration.GetConnectionString("MTGConnectionString")), ServiceLifetime.Singleton);

builder.Services.AddControllers().AddJsonOptions(options =>
{
    options.JsonSerializerOptions.PropertyNamingPolicy = null;
});
// Learn more about configuring Swagger/OpenAPI at https://aka.ms/aspnetcore/swashbuckle
builder.Services.AddEndpointsApiExplorer();
builder.Services.AddSwaggerGen();

var app = builder.Build();

// Configure the HTTP request pipeline.
if (app.Environment.IsDevelopment())
{
    app.UseSwagger();
    app.UseSwaggerUI();
}

app.UseCors(myAllowSpecificOrigins);

app.UseHttpsRedirection();

app.UseAuthorization();

app.MapControllers();

app.Run();
