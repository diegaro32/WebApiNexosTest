using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DTO.Request;
using DTO.Response;

namespace Repository.Interfaces
{
    public interface IBookRepository
    {
        List<BookDTOResponse> GetBooks();

        int CreateBook(BookDTORequest book);

        bool ValidateMaximumAllowed();
    }
}
