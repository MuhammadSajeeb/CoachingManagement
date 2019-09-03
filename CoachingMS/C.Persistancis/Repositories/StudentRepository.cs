using C.Core.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace C.Persistancis.Repositories
{
    public class StudentRepository
    {
        MainRepository _MainRepository = new MainRepository();
        public decimal AlreadyExistName(Students _Students)
        {
            string query = "Select Count(*)from Students Where Contact='" + _Students.Contact + "' ";
            return _MainRepository.ExecuteScalar(query, _MainRepository.ConnectionString());
        }
        public int Add(Students _Students)
        {
            string query = "Insert Into Categories(Name) Values ('" + _Students.Name + "')";
            return _MainRepository.ExecuteNonQuery(query, _MainRepository.ConnectionString());
        }
    }
}
