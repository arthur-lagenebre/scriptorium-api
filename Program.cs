using Microsoft.EntityFrameworkCore;
using MTG.Api.DatabaseContext;
using MTG.Api.Interfaces;
using MTG.Api.Services;

var builder = WebApplication.CreateBuilder(args);

// Add services to the container.
builder.Services.AddTransient<IArtistService, ArtistService>();
builder.Services.AddTransient<ICardFaceService, CardFaceService>();
builder.Services.AddTransient<ICardNameService, CardNameService>();
builder.Services.AddTransient<ICardService, CardService>();
builder.Services.AddTransient<ICardSetFaceService, CardSetFaceService>();
builder.Services.AddTransient<ICardSetService, CardSetService>();
builder.Services.AddTransient<ICardSubtypeService, CardSubtypeService>();
builder.Services.AddTransient<ICardSupertypeService, CardSupertypeService>();
builder.Services.AddTransient<ICardTextService, CardTextService>();
builder.Services.AddTransient<ICardTutorsService, CardTutorsService>();
builder.Services.AddTransient<ICardTypeService, CardTypeService>();
builder.Services.AddTransient<IColorService, ColorService>();
builder.Services.AddTransient<IRelatedCardService, RelatedCardService>();
builder.Services.AddTransient<ISetService, SetService>();
builder.Services.AddTransient<ISupertypeService, SupertypeService>();
builder.Services.AddTransient<ISubtypeService, SubtypeService>();
builder.Services.AddTransient<ITypeService, TypeService>();
builder.Services.AddDbContext<MTGDbContext>(db => db.UseSqlServer(builder.Configuration.GetConnectionString("MTGConnectionString")), ServiceLifetime.Singleton);

builder.Services.AddControllers();
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

app.UseHttpsRedirection();

app.UseAuthorization();

app.MapControllers();

app.Run();
