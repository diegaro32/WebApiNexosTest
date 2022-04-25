using DTO.Response;
using DTO.Request;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Repository.Interfaces;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Services.Filters;

namespace Services.Controllers
{
    [Route("[controller]")]
    [ApiController]
    [TypeFilter(typeof(ExceptionFilter))]
    public class AutorsController : ControllerBase
    {
        private readonly IAutorRepository _autorRepository;

        public AutorsController(IAutorRepository autorRepository)
        {
            _autorRepository = autorRepository;
        }

        [HttpGet]
        public IActionResult Get()
        {
            List<AutorDTOResponse> _autorsList = _autorRepository.GetAutors();
            return Ok(_autorsList);
        }

        [HttpPost]
        public IActionResult Post([FromBody]AutorDTORequest request)
        {
            if (!ModelState.IsValid)
                return BadRequest(ModelState);

            var response = _autorRepository.CreateAutor(request);

            return Ok(response);

        }

    }
}
