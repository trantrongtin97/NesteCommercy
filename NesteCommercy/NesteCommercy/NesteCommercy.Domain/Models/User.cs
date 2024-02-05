using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace NesteCommercy.Domain.Models
{
    [Table("tbl_EC_User")]
    public class User
    {
        public int Id { get; set; }
        [MaxLength(50)]
        public string Username { get; set; }
        public string Password { get; set; }
        [MaxLength(200)]
        public string? FirstName { get; set; }
        [MaxLength(200)]
        public string? LastName { get; set; }
        public string? ProfilePictureUrl { get; set; }
        public DateTime? DateOfBirth { get; set; }
        public int? Theme { get; set; }
        public DateTime? CreatedDate { get; set; }
        [MaxLength(500)]
        public string Role { get; set; }
    }
}
