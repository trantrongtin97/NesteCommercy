using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace NesteCommercy.Domain.Models
{
    [Table("tbl_EC_DescriptionProduct")]
    public class DescriptionProduct
    {
        public int Id { get; set; }
        public string? TopMainDes { get; set; }
        [MaxLength(500)]
        public string? TypeOfPacking { get; set; }
        [MaxLength(500)]
        public string? Color { get; set; }
        [MaxLength(500)]
        public string? QuantityPerCase { get; set; }
        [MaxLength(500)]
        public string? EthylAlcohol { get; set; }
        [MaxLength(500)]
        public string? PieceInOne { get; set; }
        public string? BotMainDes { get; set; }
        public string? PackagingAndDelivery { get; set; }
        public string? SuggestedUse { get; set; }
        public string? OtherIngredients { get; set; }
        public string? Warnings { get; set; }
    }
}
