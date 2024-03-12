using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Text;

namespace AdvertBoard.Domain
{
    /// <summary>
    /// Тег
    /// </summary>
    public class Tag
    {
        public int Id { get; set; }
        
        [MaxLength(32)]
        public string TagText { get; set; }

        public virtual ICollection<Tag> MyAdvertisements { get; set; }
    }
}