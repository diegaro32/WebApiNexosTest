using System;
using System.Collections.Generic;

namespace DataAccess
{
    public partial class Autor
    {
        public Autor()
        {
            Book = new HashSet<Book>();
        }

        public int IdAutor { get; set; }
        public string Name { get; set; }
        public DateTime BirthDate { get; set; }
        public int IdCity { get; set; }
        public string Email { get; set; }

        public virtual City IdCityNavigation { get; set; }
        public virtual ICollection<Book> Book { get; set; }
    }
}
