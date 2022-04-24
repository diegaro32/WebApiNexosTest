using DataAccess;
using DTO.Request;
using DTO.Response;
using Repository.Interfaces;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Repository.Repository
{
    public class AutorRepository : IAutorRepository
    {
        private readonly NexosTestContext _context;

        public AutorRepository(NexosTestContext context)
        {
            _context = context;
        }


        public List<AutorDTOResponse> GetAutors()
        {
            var _autorsList = from _autor in _context.Autor
                                join _city in _context.City
                                on _autor.IdCity equals _city.IdCity
                                select _autor;
            List<AutorDTOResponse> _autorsListDTO = _autorsList.Select(autor => new AutorDTOResponse()
            {
                IdAutor = autor.IdAutor,
                Name = autor.Name,
                BirthDate = autor.BirthDate,
                CityName = autor.IdCityNavigation.Name,
                Email = autor.Email
            }).ToList();

            return _autorsListDTO;
        }

        public int CreateAutor(AutorDTORequest autor)
        {
            var entity = (new Autor()
            {
                Name = autor.Name,
                BirthDate = autor.BirthDate,
                IdCity = autor.IdCity,
                Email = autor.Email
            });

            _context.Autor.Add(entity);
            return _context.SaveChanges();
        }
    }
}
