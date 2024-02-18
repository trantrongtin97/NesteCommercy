namespace NesteCommercy.Shared.Services.APIs.Dto
{
    public class ItemCartDto
    {
        public int Id { get; set; }
        public required string ProductName { get; set; }
        public required string Img { get; set; }
        public required decimal Price { get; set; }
        public required int Quantity { get; set; }
        public required decimal SubTotal { get; set; }

    }
}
