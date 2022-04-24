using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DTO.Response
{
    public class CityDTORequest
    {
        public int IdCity { get; set; }
        [Required]
        [MaxLength(200)]
        public string Name { get; set; }
    }
}
