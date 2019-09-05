using C.Core.Models;
using C.Persistancis.Repositories;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CoachingManagement.Tuition
{
    public partial class Fees : System.Web.UI.Page
    {
        TuitionFeesRepository _TuitionFeesRepository = new TuitionFeesRepository();
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                lblShowDate.Text = DateTime.Now.ToString("MMMM");
            }
        }
        public void GetAllDataByStudent()
        {
           string Id = txtStudentId.Text;

            var GetData = _TuitionFeesRepository.GetStudentData(Id);
            if (GetData != null)
            {
                //txtStudentId.Text = GetData.StudentId;
                txtName.Text = GetData.Name;
                txtClass.Text = GetData.Class;
                txtMonthlyFees.Text = Convert.ToDecimal(GetData.Fees).ToString("");
            }
        }
        public void GetLastPaidByStudent()
        {
            string Id = txtStudentId.Text;

            var GetData = _TuitionFeesRepository.GetLastPaymentData(Id);
            if (GetData != null)
            {
                txtLastPaid.Text = Convert.ToDecimal(GetData.LastPaid).ToString("");
                txtRemainigDue.Text = Convert.ToDecimal(GetData.RemainingDue).ToString("");
                txtLastPaidMonth.Text = Convert.ToDateTime(GetData.Date).ToString("dd MMMM");
            }
        }
        public void CurrentPaid()
        {
            try
            {
                decimal monthlyfees = Convert.ToDecimal(txtMonthlyFees.Text);
                decimal remainingdue = Convert.ToDecimal(txtRemainigDue.Text);
                decimal cal = monthlyfees + remainingdue;

                txtCurrentpaid.Text =  cal.ToString("00");
            }
            catch { }
            
        }
        public void LoadPayment()
        {
            string Id = txtStudentId.Text;
            PaymentGridView.DataSource = _TuitionFeesRepository.GetAllLastPaymentData(Id);
            PaymentGridView.DataBind();
        }
        protected void txtStudentId_TextChanged(object sender, EventArgs e)
        {
            try
            {
                GetAllDataByStudent();
                GetLastPaidByStudent();
                CurrentPaid();
                LoadPayment();
            }
            catch { }
        }

        protected void PaymentGridView_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            PaymentGridView.PageIndex = e.NewPageIndex;
            LoadPayment();
        }

        protected void txtDate_TextChanged(object sender, EventArgs e)
        {
            DateTime date = Convert.ToDateTime(txtDate.Text);

            lblShowDate.Text = date.ToString("MMMM");
        }

        protected void PaidFeesButton_Click(object sender, EventArgs e)
        {
            try
            {
                TuitionFee _TuitionFee = new TuitionFee();
                _TuitionFee.StudentId = txtStudentId.Text;
                _TuitionFee.Fees = Convert.ToDecimal(txtPaid.Text);
                _TuitionFee.Due = Convert.ToDecimal(txtAfterRremaining.Text);
                _TuitionFee.Date = Convert.ToDateTime(txtDate.Text).ToShortDateString();

                int paidsuccess = _TuitionFeesRepository.PaidFees(_TuitionFee);
                if (paidsuccess > 0)
                {
                    Response.Redirect(Request.Url.AbsoluteUri);
                }
            }
            catch { }
        }

        protected void txtPaid_TextChanged(object sender, EventArgs e)
        {
            decimal totalpaid = Convert.ToDecimal(txtCurrentpaid.Text);
            decimal currentpaid = Convert.ToDecimal(txtPaid.Text);

            decimal cal = totalpaid - currentpaid;
            txtAfterRremaining.Text = cal.ToString("00");
        }
    }
}