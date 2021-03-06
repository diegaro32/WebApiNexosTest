using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DTO.Response
{
    public class AutorDTOResponse
    {
        public int IdAutor { get; set; }
        public string Name { get; set; }
        public DateTime BirthDate { get; set; }
        public string CityName { get; set; }
        public string Email { get; set; }
    }
}
