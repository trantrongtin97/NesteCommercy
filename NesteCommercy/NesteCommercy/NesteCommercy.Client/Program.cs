using Microsoft.AspNetCore.Components.WebAssembly.Hosting;
using NesteCommercy.Shared.Services.GUIs;

var builder = WebAssemblyHostBuilder.CreateDefault(args);

builder.Services.AddScoped(http => new HttpClient
{
    BaseAddress = new Uri(builder.HostEnvironment.BaseAddress)
});


await builder.Build().RunAsync();
