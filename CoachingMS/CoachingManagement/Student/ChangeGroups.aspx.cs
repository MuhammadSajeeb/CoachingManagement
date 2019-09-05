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
    public partial class ChangeGroups : System.Web.UI.Page
    {
        StudentRepository _StudentRepository = new StudentRepository();
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                GetAllClass();
                ChangeButton.Visible = false;
                lblNewGroup.Visible = false;
                NewGroupDropDownList.Visible = false;
                OkButton.Visible = false;
                CancelButton.Visible = false;
                IdHiddenField.Value = "";
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
        protected void ClassDropDownList_SelectedIndexChanged(object sender, EventArgs e)
        {
            try
            {
                string name = ClassDropDownList.SelectedItem.ToString();
                StudentGridView.DataSource = _StudentRepository.GetAllStudentByClass(name);
                StudentGridView.DataBind();
                ChangeButton.Visible = true;
            }
            catch
            { }
        }
        protected void StudentGridView_SelectedIndexChanged(object sender, EventArgs e)
        {
            lblClass.Visible = false;
            ClassDropDownList.Visible = false;
            ChangeButton.Visible = false;
            lblNewGroup.Visible = true;
            NewGroupDropDownList.Visible = true;
            OkButton.Visible = true;
            CancelButton.Visible = true;
            StudentGridView.Enabled = false;

            IdHiddenField.Value = (StudentGridView.SelectedRow.Cells[0].Text);
        }

        protected void StudentGridView_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            string name = ClassDropDownList.SelectedItem.ToString();
            StudentGridView.PageIndex = e.NewPageIndex;
            StudentGridView.DataSource = _StudentRepository.GetAllStudentByClass(name);
            DataBind();
        }

        protected void ChangeButton_Click(object sender, EventArgs e)
        {
            lblClass.Visible = false;
            ClassDropDownList.Visible = false;
            ChangeButton.Visible = false;
            lblNewGroup.Visible = true;
            NewGroupDropDownList.Visible = true;
            OkButton.Visible = true;
            CancelButton.Visible = true;
            StudentGridView.Enabled = false;
        }

        protected void OkButton_Click(object sender, EventArgs e)
        {
            try
            {
                if (IdHiddenField.Value != "")
                {
                    Students _Students = new Students();
                    _Students.Groups = NewGroupDropDownList.SelectedItem.ToString();
                    _Students.StudentId = IdHiddenField.Value.ToString();

                    int changeclass = _StudentRepository.ChangeGroupsByStudent(_Students);
                    if (changeclass > 0)
                    {
                        Response.Redirect(Request.Url.AbsoluteUri);
                    }
                }
                else
                {
                    Students _Students = new Students();
                    _Students.Groups = NewGroupDropDownList.SelectedItem.ToString();
                    _Students.Class = ClassDropDownList.SelectedItem.ToString();

                    int changeclass = _StudentRepository.ChangeGroups(_Students);
                    if (changeclass > 0)
                    {
                        Response.Redirect(Request.Url.AbsoluteUri);
                    }
                }
            }
            catch
            { }
        }

        protected void CancelButton_Click(object sender, EventArgs e)
        {
            lblClass.Visible = true;
            ClassDropDownList.Visible = true;
            ChangeButton.Visible = true;
            lblNewGroup.Visible = false;
            NewGroupDropDownList.Visible = false;
            OkButton.Visible = false;
            CancelButton.Visible = false;
            StudentGridView.Enabled = true;
        }


    }
}