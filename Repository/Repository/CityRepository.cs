using DataAccess;
using DTO.Response;
using Repository.Interfaces;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Repository.Repository
{
    public class CityRepository : ICityRepository
    {
        private readonly NexosTestContext _context;

        public CityRepository(NexosTestContext context)
        {
            _context = context;
        }

        public List<CityDTOResponse> GetCities()
        {
            var _citiesList = _context.City.ToList();

            List<CityDTOResponse> _citiesListsDTO = _citiesList.Select(city => new CityDTOResponse()
            {
                IdCity = city.IdCity,
                Name = city.Name
            }).ToList();

            return _citiesListsDTO;
        }
    }
}
