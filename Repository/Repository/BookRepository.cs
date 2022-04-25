using DataAccess;
using DTO.Response;
using DTO.Request;
using Repository.Interfaces;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Repository.Repository
{
    public class BookRepository : IBookRepository
    {
        private readonly NexosTestContext _context;
        private readonly int NumberOfBooksAllowed = 5;

        public BookRepository(NexosTestContext context)
        {
            _context = context;
        }

        

        public List<BookDTOResponse> GetBooks()
        {
            var _booksList = from _books in _context.Book
                               join _autor in _context.Autor
                               on _books.IdAutor equals _autor.IdAutor
                               select _books;
            List<BookDTOResponse> _booksListDTO = _booksList.Select(book => new BookDTOResponse()
            {
                IdBook = book.IdBook,
                Title = book.Title,
                Year = book.Year,
                NumberOfPages = book.NumberOfPages,
                AutorName = book.IdAutorNavigation.Name
            }).ToList();

            return _booksListDTO;
        }

        public int CreateBook(BookDTORequest book)
        {
            var entity = (new Book()
            {
                Title = book.Title,
                Year = book.Year,
                NumberOfPages = book.NumberOfPages,
                IdAutor = book.IdAutor
            });

            _context.Book.Add(entity);
            return _context.SaveChanges();
        }

        public bool ValidateMaximumAllowed()
        {
            int records = _context.Book.Count();
            return records == NumberOfBooksAllowed ? true : false;
        }
    }
}
