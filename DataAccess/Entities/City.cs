using System;
using System.Collections.Generic;

namespace DataAccess
{
    public partial class City
    {
        public City()
        {
            Autor = new HashSet<Autor>();
        }

        public int IdCity { get; set; }
        public string Name { get; set; }

        public virtual ICollection<Autor> Autor { get; set; }
    }
}
