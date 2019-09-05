using C.Core.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace C.Persistancis.Repositories
{
    public class TuitionFeesRepository
    {
        MainRepository _MainRepository = new MainRepository();

        public int PaidFees(TuitionFee _TuitionFee)
        {
            string query = "Insert Into TuitionFees(StudentId,Fees,Due,Date) Values ('" + _TuitionFee.StudentId + "','" + _TuitionFee.Fees + "','" + _TuitionFee.Due + "','" + _TuitionFee.Date + "')";
            return _MainRepository.ExecuteNonQuery(query, _MainRepository.ConnectionString());
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
                //_Students.StudentId = (reader["StudentId"].ToString());
                _Students.Name = (reader["Name"].ToString());
                _Students.Class = (reader["Class"].ToString());
                _Students.Fees = Convert.ToDecimal(reader["Fees"].ToString());
            }
            reader.Close();

            return _Students;
        }

        public TuitionFee GetLastPaymentData(string Id)
        {
            TuitionFee _TuitionFee = null;

            string query = "Select top 1 *from tuitionFees Where StudentId='"+Id+"' And Year(Date)='"+DateTime.Now.Year+"' order by Date desc";
            var reader = _MainRepository.Reader(query, _MainRepository.ConnectionString());
            if (reader.HasRows)
            {
                reader.Read();
                _TuitionFee = new TuitionFee();
                _TuitionFee.LastPaid = Convert.ToDecimal(reader["Fees"].ToString());
                _TuitionFee.RemainingDue = Convert.ToDecimal(reader["Due"].ToString());
                _TuitionFee.Date = (reader["Date"].ToString());
            }
            reader.Close();

            return _TuitionFee;
        }
        public List<TuitionFee> GetAllLastPaymentData(string Id)
        {
            var _TuitionFeeList = new List<TuitionFee>();
            string query = ("Select *from tuitionFees Where StudentId='" + Id + "' And Year(Date)='" + DateTime.Now.Year + "' ");
            var reader = _MainRepository.Reader(query, _MainRepository.ConnectionString());
            if (reader.HasRows)
            {
                while (reader.Read())
                {
                    var _TuitionFee = new TuitionFee();

                    _TuitionFee.StudentId = (reader["StudentId"].ToString());

                    _TuitionFee.Fees = Convert.ToDecimal(reader["Fees"].ToString());
                    _TuitionFee.Due = Convert.ToDecimal(reader["Due"].ToString());
                    _TuitionFee.Date =(reader["Date"].ToString());

                    _TuitionFeeList.Add(_TuitionFee);
                }
            }
            reader.Close();

            return _TuitionFeeList;
        }
    }
}
