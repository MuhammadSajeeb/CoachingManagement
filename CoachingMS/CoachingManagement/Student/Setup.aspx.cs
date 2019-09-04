using C.Core.Models;
using C.Persistancis.Repositories;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CoachingManagement.Student
{
    public partial class Setup : System.Web.UI.Page
    {
        StudentRepository _StudentRepository = new StudentRepository();
        public enum MessageType { Success, Failed, Error, Info, Warning };
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                AutoStudentIdGenerate();
            }
        }
        protected void ShowMessage(string Message, MessageType type)
        {
            ScriptManager.RegisterStartupScript(this, this.GetType(), System.Guid.NewGuid().ToString(), "ShowMessage('" + Message + "','" + type + "');", true);
        }
        public void AutoStudentIdGenerate()
        {
            decimal AlreadyExistData = _StudentRepository.AlreadyExistData();
            decimal code = 1;
            if (AlreadyExistData >= 1)
            {
                var GetLastStudentId = _StudentRepository.GetLastStudentId();
                if (GetLastStudentId != null)
                {
                    code = Convert.ToDecimal(GetLastStudentId.StudentId);
                    code++;
                }
                txtStudentId.Text = code.ToString("000");
            }
            else
            {
                txtStudentId.Text = "001";
            }
        }
        protected void SaveButton_Click(object sender, EventArgs e)
        {
            try
            {
                ImageFileUpload.SaveAs(Server.MapPath("~/Student/Images/") + Path.GetFileName(ImageFileUpload.FileName));
                String GetImagePath = "~/Student/Images/" + Path.GetFileName(ImageFileUpload.FileName);

                Students _Students = new Students();
                _Students.StudentId = txtStudentId.Text;
                _Students.Name = txtName.Text;
                _Students.Contact = txtContact.Text;
                _Students.Gender = GenderDropDownList.SelectedItem.ToString();
                _Students.Institute = txtInstitute.Text;
                _Students.Class = ClassDropDownList.SelectedItem.ToString();
                _Students.Groups = GroupDropDownList.SelectedItem.ToString();
                _Students.Subjects = txtSubjects.Text;
                _Students.Address = txtAddress.Text;
                _Students.Father = txtFather.Text;
                _Students.Nid = txtNid.Text;
                _Students.Fees = Convert.ToDecimal(txtFees.Text);
                _Students.Images = GetImagePath;


                decimal AlreadyExistStudent = _StudentRepository.AlreadyExistStudent(_Students);
                if (AlreadyExistStudent >= 1)
                {
                    ShowMessage("This Student Already Here!!!...", MessageType.Warning);
                }
                else
                {
                    int Savesuccess = _StudentRepository.Add(_Students);
                    if (Savesuccess > 0)
                    {

                        ShowMessage("Successfully Saved Student....", MessageType.Success);
                         
                        Response.Redirect(Request.Url.AbsoluteUri);

                    }
                    else
                    {
                        ShowMessage("Failed Saving Student", MessageType.Warning);
                    }

                }
            }
            catch (Exception ex)
            {
                ShowMessage(ex.Message, MessageType.Error);
            }
        }
    }
}