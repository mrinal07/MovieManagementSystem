using System.ComponentModel;

namespace MovieManagementSystem.Models
{
    public class MovieModel
    {
        public int MovieId { get; set; }

        [DisplayName("Movie Title")]
        public string? Title { get; set; }

        [DisplayName("Movie Language")]       
        public string? Language { get; set; }

        [DisplayName("Movie Genre")]
        public string? Genre { get; set; }

        [DisplayName("Movie ReleaseDate")]
        public DateTime? ReleaseDate { get; set; }

        [DisplayName("Movie Description")]
        public string? Description { get; set; }
    }
}
