using C.Persistancis.Repositories;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CoachingManagement.Student
{
    public partial class Update : System.Web.UI.Page
    {
        string Id;
        StudentRepository _StudentRepository = new StudentRepository();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Convert.ToInt32(Request.QueryString["StudentId"]) != 0)
            {
                GetAllDataByStudent();
                GetAllClass();
            }
            else
            {
                Response.Redirect("View.aspx");
            }
        }
        public void GetAllClass()
        {
            ClassDropDownList.DataSource = _StudentRepository.GetAllClass();
            ClassDropDownList.DataTextField = "Name";
            ClassDropDownList.DataValueField = "Id";
            ClassDropDownList.DataBind();
            ClassDropDownList.Items.Insert(0, new ListItem("Select Class", "0"));

        }
        public void GetAllDataByStudent()
        {
            Id = (Request.QueryString["StudentId"]);

            var GetData = _StudentRepository.GetStudentData(Id);
            if(GetData != null)
            {
                txtStudentId.Text = GetData.StudentId;
                txtName.Text = GetData.Name;
                txtContact.Text = GetData.Contact;
                GenderDropDownList.DataTextField = GetData.Gender;
                txtInstitute.Text = GetData.Institute;
                ClassDropDownList.DataTextField = GetData.Class;
                GroupDropDownList.DataTextField = GetData.Groups;
                txtSubjects.Text = GetData.Subjects;
                txtAddress.Text = GetData.Address;
                txtFather.Text = GetData.Father;
                txtNid.Text = GetData.Nid;
                txtFees.Text = Convert.ToDecimal(GetData.Fees).ToString();
            }
        }
        protected void UpdateButton_Click(object sender, EventArgs e)
        {

        }
    }
}