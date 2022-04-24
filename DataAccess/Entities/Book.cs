using System;
using System.Collections.Generic;

namespace DataAccess
{
    public partial class Book
    {
        public int IdBook { get; set; }
        public string Title { get; set; }
        public short Year { get; set; }
        public short NumberOfPages { get; set; }
        public int IdAutor { get; set; }

        public virtual Autor IdAutorNavigation { get; set; }
    }
}
