using C.Core.Models;
using C.Persistancis.Repositories;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CoachingManagement.Student
{
    public partial class View : System.Web.UI.Page
    {
        StudentRepository _StudentRepository = new StudentRepository();
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                GetAllClass();
                GetAllStudents();
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
        public void GetAllStudents()
        {
            StudentGridView.DataSource = _StudentRepository.GetAllStudent();
            StudentGridView.DataBind();
        }
        public void GetAllStudentByClass()
        {
            try
            {
                IdHiddenField.Value = ClassDropDownList.SelectedItem.ToString();
                string name = ClassDropDownList.SelectedItem.ToString();
                StudentGridView.DataSource = _StudentRepository.GetAllStudentByClass(name);
                StudentGridView.DataBind();
            }
            catch
            { }
        }
        protected void ClassDropDownList_SelectedIndexChanged(object sender, EventArgs e)
        {
            try
            {
                IdHiddenField.Value = ClassDropDownList.SelectedItem.ToString();
                string name = ClassDropDownList.SelectedItem.ToString();
                StudentGridView.DataSource = _StudentRepository.GetAllStudentByClass(name);
                StudentGridView.DataBind();
            }
            catch
            { }
        }
        protected void StudentGridView_SelectedIndexChanged(object sender, EventArgs e)
        {
            string StudentId = (StudentGridView.SelectedRow.Cells[1].Text);
            Response.Redirect("Update.aspx?studentid=" + StudentId);
        }

        protected void StudentGridView_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            try
            {
                Students _Students = new Students();
                _Students.StudentId = (e.CommandArgument).ToString();

                int deletesuccess = _StudentRepository.Delete(_Students);
                if (deletesuccess > 0)
                {
                    GetAllStudentByClass();
                }

            }
            catch
            {
            }
        }
    }
}