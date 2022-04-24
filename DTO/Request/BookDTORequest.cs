using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DTO.Request
{
    public class BookDTORequest
    {
        public int IdBook { get; set; }
        [Required]
        [MaxLength(200)]
        public string Title { get; set; }
        [Required]
        public short Year { get; set; }
        [Required]
        public short NumberOfPages { get; set; }
        [Required]
        public int IdAutor { get; set; }
    }
}
