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

        public decimal AlreadyExistData()
        {
            string query = "Select Count(*)from Students";
            return _MainRepository.ExecuteScalar(query, _MainRepository.ConnectionString());
        }
        public Students GetLastStudentId()
        {
            Students _Students = null;

            string query = "Select top 1 StudentId from Students order by StudentId desc";
            var reader = _MainRepository.Reader(query, _MainRepository.ConnectionString());
            if (reader.HasRows)
            {
                reader.Read();
                _Students = new Students();
                _Students.StudentId = (reader["StudentId"].ToString());
            }
            reader.Close();

            return _Students;
        }

        public decimal AlreadyExistStudent(Students _Students)
        {
            string query = "Select Count(*)from Students Where Contact='" + _Students.Contact + "' ";
            return _MainRepository.ExecuteScalar(query, _MainRepository.ConnectionString());
        }
        public int Add(Students _Students)
        {
            string query = "Insert Into Students(StudentId,Name,Contact,Gender,Institute,Class,Groups,Subjects,Address,Father,Nid,Fees,Images,Date) Values ('" + _Students.StudentId + "','" + _Students.Name + "','" + _Students.Contact + "','" + _Students.Gender + "','" + _Students.Institute + "','" + _Students.Class + "','" + _Students.Groups + "','" + _Students.Subjects + "','" + _Students.Address + "','" + _Students.Father + "','" + _Students.Nid + "','" + _Students.Fees + "','"+_Students.Images+"','" + DateTime.Now.ToShortDateString() + "')";
            return _MainRepository.ExecuteNonQuery(query, _MainRepository.ConnectionString());
        }
    }
}
