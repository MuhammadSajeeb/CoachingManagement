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
        public int ChangeClass(Class _Class)
        {
            string query = "Update Students SET Class='" + _Class.NewName+ "' WHERE Class='" + _Class.Name + "' ";
            return _MainRepository.ExecuteNonQuery(query, _MainRepository.ConnectionString());
        }
        public int ChangeClassByStudent(Students _Students)
        {
            string query = "Update Students SET Class='" + _Students.Class + "' WHERE StudentId='" + _Students.StudentId + "' ";
            return _MainRepository.ExecuteNonQuery(query, _MainRepository.ConnectionString());
        }
        public int ChangeFees(Students _Students)
        {
            string query = "Update Students SET Fees='" + _Students.Fees + "' WHERE Class='" + _Students.Class + "' ";
            return _MainRepository.ExecuteNonQuery(query, _MainRepository.ConnectionString());
        }
        public int ChangeFeesByStudent(Students _Students)
        {
            string query = "Update Students SET Fees='" + _Students.Fees + "' WHERE StudentId='" + _Students.StudentId + "' ";
            return _MainRepository.ExecuteNonQuery(query, _MainRepository.ConnectionString());
        }
        public int ChangeSubjects(Students _Students)
        {
            string query = "Update Students SET Subjects='" + _Students.Subjects + "' WHERE Class='" + _Students.Class + "' ";
            return _MainRepository.ExecuteNonQuery(query, _MainRepository.ConnectionString());
        }
        public int ChangeSubjectsByStudent(Students _Students)
        {
            string query = "Update Students SET Subjects='" + _Students.Subjects + "' WHERE StudentId='" + _Students.StudentId + "' ";
            return _MainRepository.ExecuteNonQuery(query, _MainRepository.ConnectionString());
        }
        public int ChangeGroups(Students _Students)
        {
            string query = "Update Students SET Groups='" + _Students.Groups + "' WHERE Class='" + _Students.Class + "' ";
            return _MainRepository.ExecuteNonQuery(query, _MainRepository.ConnectionString());
        }
        public int ChangeGroupsByStudent(Students _Students)
        {
            string query = "Update Students SET Groups='" + _Students.Groups + "' WHERE StudentId='" + _Students.StudentId + "' ";
            return _MainRepository.ExecuteNonQuery(query, _MainRepository.ConnectionString());
        }
        public int Delete(Students _Students)
        {
            string query = ("Delete From Students Where StudentId ='" + _Students.StudentId + "' ");
            return _MainRepository.ExecuteNonQuery(query, _MainRepository.ConnectionString());
        }
        public List<Class> GetAllClass()
        {
            var _ClassList = new List<Class>();
            string query = ("Select *From Class");
            var reader = _MainRepository.Reader(query, _MainRepository.ConnectionString());
            if (reader.HasRows)
            {
                while (reader.Read())
                {
                    var _Class = new Class();
                    _Class.Id = Convert.ToInt32(reader["Id"].ToString());
                    _Class.Name = reader["Name"].ToString();
                    _ClassList.Add(_Class);
                }
            }
            reader.Close();

            return _ClassList;
        }
        public List<Students> GetAllStudent()
        {
            var _StudentsList = new List<Students>();
            string query = ("Select *From Students");
            var reader = _MainRepository.Reader(query, _MainRepository.ConnectionString());
            if (reader.HasRows)
            {
                while (reader.Read())
                {
                    var _Students = new Students();

                    _Students.StudentId = (reader["StudentId"].ToString());
                    _Students.Name = (reader["Name"].ToString());
                    _Students.Contact = (reader["Contact"].ToString());
                    _Students.Gender = (reader["Gender"].ToString());
                    _Students.Institute = (reader["Institute"].ToString());
                    _Students.Class = (reader["Class"].ToString());
                    _Students.Groups = (reader["Groups"].ToString());
                    _Students.Subjects = (reader["Subjects"].ToString());
                    _Students.Address = (reader["Address"].ToString());
                    _Students.Father = (reader["Father"].ToString());
                    _Students.Nid = (reader["Nid"].ToString());
                    _Students.Fees = Convert.ToDecimal(reader["Fees"].ToString());
                    _Students.Date = reader["date"].ToString();

                    _StudentsList.Add(_Students);
                }
            }
            reader.Close();

            return _StudentsList;
        }
        public List<Students> GetAllStudentByClass(string name)
        {
            var _StudentsList = new List<Students>();
            string query = ("Select *From Students Where Class='"+name+"'");
            var reader = _MainRepository.Reader(query, _MainRepository.ConnectionString());
            if (reader.HasRows)
            {
                while (reader.Read())
                {
                    var _Students = new Students();

                    _Students.StudentId = (reader["StudentId"].ToString());
                    _Students.Name = (reader["Name"].ToString());
                    _Students.Contact = (reader["Contact"].ToString());
                    _Students.Gender = (reader["Gender"].ToString());
                    _Students.Institute = (reader["Institute"].ToString());
                    _Students.Class = (reader["Class"].ToString());
                    _Students.Groups = (reader["Groups"].ToString());
                    _Students.Subjects = (reader["Subjects"].ToString());
                    _Students.Address = (reader["Address"].ToString());
                    _Students.Father = (reader["Father"].ToString());
                    _Students.Nid = (reader["Nid"].ToString());
                    _Students.Fees = Convert.ToDecimal(reader["Fees"].ToString());
                    _Students.Date = reader["date"].ToString();

                    _StudentsList.Add(_Students);
                }
            }
            reader.Close();

            return _StudentsList;
        }
        public Students GetStudentData(string Id)
        {
            Students _Students = null;

            string query = "select *From Students Where StudentId='" + Id + "'";
            var reader = _MainRepository.Reader(query, _MainRepository.ConnectionString());
            if (reader.HasRows)
            {
                reader.Read();
                _Students = new Students();
                _Students.StudentId = (reader["StudentId"].ToString());
                _Students.Name = (reader["Name"].ToString());
                _Students.Contact = (reader["Contact"].ToString());
                _Students.Gender = (reader["Gender"].ToString());
                _Students.Institute = (reader["Institute"].ToString());
                _Students.Class = (reader["Class"].ToString());
                _Students.Groups = (reader["Groups"].ToString());
                _Students.Subjects = (reader["Subjects"].ToString());
                _Students.Address = (reader["Address"].ToString());
                _Students.Father = (reader["Father"].ToString());
                _Students.Nid = (reader["Nid"].ToString());
                _Students.Fees = Convert.ToDecimal(reader["Fees"].ToString());
            }
            reader.Close();

            return _Students;
        }

    }
}
