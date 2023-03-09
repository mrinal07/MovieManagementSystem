using System.ComponentModel;

namespace MovieManagementSystem.Models
{
    public class HomePageModel
    {
        public int ProductId { get; set; }
        [DisplayName("Product Name")]
        public string ProductName { get; set; }
        public decimal Price { get; set; }
        public int Count { get; set; }
    }
}
