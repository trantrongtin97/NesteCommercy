using Microsoft.EntityFrameworkCore;
using NesteCommercy.Client.Pages;
using NesteCommercy.Components;
using NesteCommercy.EfCore.DbContexts;
using NesteCommercy.Repository;
using NesteCommercy.Services.GUIs;
using NesteCommercy.Shared.Repositories;
using NesteCommercy.Shared.Services.GUIs;

var builder = WebApplication.CreateBuilder(args);

// Add services to the container.
builder.Services.AddRazorComponents()
    .AddInteractiveServerComponents()
    .AddInteractiveWebAssemblyComponents();

builder.Services.AddSingleton<DapperRepository>();
builder.Services.AddScoped<IProductListRepository, ProductListRepository>();

builder.Services.AddControllers();

builder.Services.AddScoped(http => new HttpClient
{
    BaseAddress = new Uri(builder.Configuration.GetSection("BaseUri").Value!)
});

builder.Services.AddDbContext<NesteCommercyDbContext>(options =>
{
    options.UseSqlServer(builder.Configuration.GetConnectionString("Default"));
});

builder.Services.AddScoped<IHomeGuiAppService, HomeGuiAppService>();
builder.Services.AddScoped<IProductListGuiAppService, ProductListGuiAppService>();


var app = builder.Build();

// Configure the HTTP request pipeline.
if (app.Environment.IsDevelopment())
{
    app.UseWebAssemblyDebugging();
}
else
{
    app.UseExceptionHandler("/Error", createScopeForErrors: true);
    // The default HSTS value is 30 days. You may want to change this for production scenarios, see https://aka.ms/aspnetcore-hsts.
    app.UseHsts();
}

app.UseHttpsRedirection();

app.MapControllers();

app.UseStaticFiles();
app.UseAntiforgery();

app.MapRazorComponents<App>()
    .AddInteractiveServerRenderMode()
    .AddInteractiveWebAssemblyRenderMode()
    .AddAdditionalAssemblies(typeof(Counter).Assembly);

app.Run();
