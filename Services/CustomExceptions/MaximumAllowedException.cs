using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Services.CustomExceptions
{
    public class MaximumAllowedException : Exception
    {
        public MaximumAllowedException(string _mensaje) : base(_mensaje)
        {

        }
    }
}
