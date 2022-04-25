using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DTO.Response
{
    public class BookDTOResponse
    {
        public int IdBook { get; set; }
        public string Title { get; set; }
        public short Year { get; set; }
        public short NumberOfPages { get; set; }
        public string AutorName { get; set; }
    }
}
