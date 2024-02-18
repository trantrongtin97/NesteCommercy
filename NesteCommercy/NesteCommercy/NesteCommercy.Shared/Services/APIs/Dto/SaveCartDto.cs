namespace NesteCommercy.Shared.Services.APIs.Dto
{
    public class SaveCartDto
    {
        public required List<ItemCartDto> Items { get; set; }
        public required decimal SubTotal { get; set; }
        public required decimal Total { get; set; }
        public required decimal Shipping { get; set; }
    }
}
