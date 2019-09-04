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
    public partial class ChangeClass : System.Web.UI.Page
    {
        StudentRepository _StudentRepository = new StudentRepository();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                GetAllClass();
                GetAllNewClass();
                lblNewClass.Visible = false;
                NewClassDropDownList.Visible = false;
                OkButton.Visible = false;
                CancelButton.Visible = false;
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
        public void GetAllNewClass()
        {
            NewClassDropDownList.DataSource = _StudentRepository.GetAllClass();
            NewClassDropDownList.DataTextField = "Name";
            NewClassDropDownList.DataValueField = "Id";
            NewClassDropDownList.DataBind();
            NewClassDropDownList.Items.Insert(0, new ListItem("Select Class", "0"));

        }
        protected void StudentGridView_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            string name = ClassDropDownList.SelectedItem.ToString();
            StudentGridView.PageIndex = e.NewPageIndex;
            StudentGridView.DataSource = _StudentRepository.GetAllStudentByClass(name);
            DataBind();
        }

        protected void StudentGridView_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void ClassDropDownList_SelectedIndexChanged(object sender, EventArgs e)
        {
            try
            {
                string name = ClassDropDownList.SelectedItem.ToString();
                StudentGridView.DataSource = _StudentRepository.GetAllStudentByClass(name);
                StudentGridView.DataBind();
            }
            catch
            { }
        }

        protected void ChangeButton_Click(object sender, EventArgs e)
        {
            lblClass.Visible = false;
            ClassDropDownList.Visible = false;
            ChangeButton.Visible = false;
            lblNewClass.Visible = true;
            NewClassDropDownList.Visible = true;
            OkButton.Visible = true;
            CancelButton.Visible = true;

        }

        protected void OkButton_Click(object sender, EventArgs e)
        {
            try
            {
                Class _Class = new Class();
                _Class.Name = ClassDropDownList.SelectedItem.ToString();
                _Class.NewName = NewClassDropDownList.SelectedItem.ToString();

                int changeclass = _StudentRepository.ChangeClass(_Class);
                if(changeclass>0)
                {
                    Response.Redirect(Request.Url.AbsoluteUri);
                }
                
            }
            catch
            {
            }
        }

        protected void CancelButton_Click(object sender, EventArgs e)
        {
            lblClass.Visible = true;
            ClassDropDownList.Visible = true;
            ChangeButton.Visible = true;
            lblNewClass.Visible = false;
            NewClassDropDownList.Visible = false;
            OkButton.Visible = false;
            CancelButton.Visible = false;
        }
    }
}