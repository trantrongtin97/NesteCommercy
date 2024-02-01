using Microsoft.AspNetCore.Components.WebAssembly.Hosting;
using NesteCommercy.Client.ServiceProxys;
using NesteCommercy.Shared.Services.GUIs;

var builder = WebAssemblyHostBuilder.CreateDefault(args);

builder.Services.AddScoped(http => new HttpClient
{
    BaseAddress = new Uri(builder.HostEnvironment.BaseAddress)
});

builder.Services.AddScoped<IHomeGuiAppService, HomeGuiServiceProxy>();

await builder.Build().RunAsync();
