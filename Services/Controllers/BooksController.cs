using DTO.Request;
using DTO.Response;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Repository.Interfaces;
using Services.CustomExceptions;
using Services.Filters;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Services.Controllers
{
    [Route("[controller]")]
    [ApiController]
    [TypeFilter(typeof(ExceptionFilter))]
    public class BooksController : ControllerBase
    {
        private readonly IBookRepository _bookRepository;

        public BooksController(IBookRepository bookRepository)
        {
            _bookRepository = bookRepository;
        }

        [HttpGet]
        public IActionResult Get()
        {
            List<BookDTOResponse> _booksList = _bookRepository.GetBooks();
            return Ok(_booksList);
        }

        [HttpPost]
        public IActionResult Post([FromBody] BookDTORequest request)
        {
            if(!_bookRepository.ValidateMaximumAllowed())
            {
                if (!ModelState.IsValid)
                    return BadRequest(ModelState);

                var response = _bookRepository.CreateBook(request);
                return Ok(response);
            }
            else
            {
                throw new MaximumAllowedException("No es posible registrar el libro, se alcanzó el máximo permitido");
            }
        }
    }
}
