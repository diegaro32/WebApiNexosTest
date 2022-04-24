﻿using DTO.Response;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Repository.Interfaces
{
    public interface ICityRepository
    {
        List<CityDTOResponse> GetCities();
    }
}
