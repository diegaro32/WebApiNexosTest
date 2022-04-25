using Microsoft.AspNetCore.Hosting;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Filters;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Services.Filters
{
    public class ExceptionFilter : IExceptionFilter
    {
        private readonly IWebHostEnvironment _host;

        public ExceptionFilter(IWebHostEnvironment host)
        {
            _host = host;
        }
        public void OnException(ExceptionContext context)
        {
            context.Result = new JsonResult("Falló algo en la aplicacion " + _host.ApplicationName + " La excepcion es de tipo " +
                context.Exception.Message);
        }
    }
}
