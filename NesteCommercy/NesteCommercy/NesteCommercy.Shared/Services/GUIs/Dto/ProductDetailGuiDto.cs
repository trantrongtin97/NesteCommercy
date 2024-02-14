using System.ComponentModel.DataAnnotations;

namespace NesteCommercy.Shared.Services.GUIs.Dto
{
    public class ProductDetailGuiDto : ProductGuiDto
    {
        public string? ShortDescription { get; set; }
        public string? ImgUrl3 { get; set; }
        public string? ImgUrl4 { get; set; }
        public string? ImgUrl5 { get; set; }
        public string? ImgUrl6 { get; set; }
        public string? ImgUrl7 { get; set; }
        public string? Type { get; set; }
        public string? MFG { get; set; }
        public string? LIFE { get; set; }
        public string? SKU { get; set; }
        public string? Tags { get; set; }
        public string? StandUp { get; set; }
        public string? Folded_wo { get; set; }
        public string? Folded_w { get; set; }
        public string? DoorPassThrough { get; set; }        
        public string? Frame { get; set; }        
        public string? Weight_wo { get; set; }        
        public string? WeightCapacity { get; set; }        
        public string? Width { get; set; }        
        public string? HandleHeight { get; set; }        
        public string? Wheels { get; set; }        
        public string? SeatBackHeight { get; set; }
        public string? HeadRoom { get; set; }
        public string? Color { get; set; }
        public string? Size { get; set; }
        //Description Product
        public string? TopMainDes { get; set; }        
        public string? TypeOfPacking { get; set; }        
        public string? ColorDesProduct { get; set; }        
        public string? QuantityPerCase { get; set; }        
        public string? EthylAlcohol { get; set; }        
        public string? PieceInOne { get; set; }
        public string? BotMainDes { get; set; }
        public string? PackagingAndDelivery { get; set; }
        public string? SuggestedUse { get; set; }
        public string? OtherIngredients { get; set; }
        public string? Warnings { get; set; }
        //Vendor Info
        public string? DescriptionInProduct { get; set; }
        public string? LogoUrl { get; set; }
        public string? Since { get; set; }
        public double? RatingVendor { get; set; }
        public string? Address { get; set; }
        public string? CallUs { get; set; }
        public double? RatingInProduct { get; set; }
        public double? ShipOnTime { get; set; }
        public double? ChatResponse { get; set; }
    }
}
