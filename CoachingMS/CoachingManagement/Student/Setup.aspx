<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Setup.aspx.cs" Inherits="CoachingManagement.Student.Setup" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="form-horizontal">
        <hr />
        <asp:HiddenField ID="IdHiddenField" runat="server" />
        <div class="form-group">
            <div class="col-md-10">
                <asp:Label runat="server" ID="lblMsg" CssClass="control-label"></asp:Label>
                <div class="messagealert" id="alert_container">
                </div>
            </div>
        </div>
        <div class="form-group">
            <div class="col-md-offset-2 col-md-2">
                <asp:Label runat="server" ID="lblStudentId" AssociatedControlID="txtStudentId" CssClass="control-label">Student Id</asp:Label>
                <asp:TextBox runat="server" ID="txtStudentId" CssClass="form-control" TextMode="Number" ReadOnly="true" Style="text-align: center" Font-Bold="true" Font-Size="Medium" />
            </div>
            <div class="col-md-2">
                <asp:Label runat="server" ID="lblName" AssociatedControlID="txtName" CssClass="control-label">Name</asp:Label>
                <asp:TextBox runat="server" ID="txtName" CssClass="form-control" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="txtName"
                    CssClass="text-danger" ErrorMessage="This field is required." />
            </div>
            <div class="col-md-2">
                <asp:Label runat="server" ID="lblContact" AssociatedControlID="txtContact" CssClass="control-label">Contact</asp:Label>
                <asp:TextBox runat="server" ID="txtContact" CssClass="form-control" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="txtContact"
                    CssClass="text-danger" ErrorMessage="This field is required." />
            </div>
            <div class="col-md-2">
                <asp:Label runat="server" ID="lblGender" AssociatedControlID="GenderDropDownList" CssClass="control-label">Gender</asp:Label>
                <asp:DropDownList ID="GenderDropDownList" runat="server" CssClass="form-control" AutoPostBack="true">
                    <asp:ListItem>Select</asp:ListItem>
                    <asp:ListItem>Male</asp:ListItem>
                    <asp:ListItem>Female</asp:ListItem>
                </asp:DropDownList>
            </div>
        </div>

        <div class="form-group">
            <div class="col-md-offset-2 col-md-2">
                <asp:Label runat="server" ID="lblInstitute" AssociatedControlID="txtInstitute" CssClass="control-label">Institute Name</asp:Label>
                <asp:TextBox runat="server" ID="txtInstitute" CssClass="form-control" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="txtInstitute"
                    CssClass="text-danger" ErrorMessage="This field is required." />


            </div>
            <div class="col-md-2">
                <asp:Label runat="server" ID="lblClass" AssociatedControlID="ClassDropDownList" CssClass="control-label">Class</asp:Label>
                <asp:DropDownList ID="ClassDropDownList" runat="server" CssClass="form-control" AutoPostBack="true">
                </asp:DropDownList>
            </div>
            <div class="col-md-2">
                <asp:Label runat="server" ID="lblGroup" AssociatedControlID="GroupDropDownList" CssClass="control-label">Group</asp:Label>
                <asp:DropDownList ID="GroupDropDownList" runat="server" CssClass="form-control" AutoPostBack="true">
                    <asp:ListItem>Select</asp:ListItem>
                    <asp:ListItem>Science</asp:ListItem>
                    <asp:ListItem>Commerce</asp:ListItem>
                    <asp:ListItem>Arts</asp:ListItem>
                    <asp:ListItem>None</asp:ListItem>
                </asp:DropDownList>
            </div>
            <div class="col-md-2">
                <asp:Label runat="server" ID="lblSubjects" AssociatedControlID="txtSubjects" CssClass="control-label">Subjects</asp:Label>
                <asp:TextBox runat="server" ID="txtSubjects" CssClass="form-control" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="txtSubjects"
                    CssClass="text-danger" ErrorMessage="This field is required." />
            </div>
        </div>
        <div class="form-group">
            <div class="col-md-offset-2 col-md-2">
                <asp:Label runat="server" ID="lblAddress" AssociatedControlID="txtAddress" CssClass="control-label">Address</asp:Label>
                <asp:TextBox runat="server" ID="txtAddress" CssClass="form-control" TextMode="MultiLine" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="txtAddress"
                    CssClass="text-danger" ErrorMessage="This field is required." />
            </div>
            <div class="col-md-2">
                <asp:Label runat="server" ID="lblFather" AssociatedControlID="txtFather" CssClass="control-label">Father Name</asp:Label>
                <asp:TextBox runat="server" ID="txtFather" CssClass="form-control" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="txtFather"
                    CssClass="text-danger" ErrorMessage="This field is required." />
            </div>
            <div class="col-md-2">
                <asp:Label runat="server" ID="lblNid" AssociatedControlID="txtNid" CssClass="control-label">Nid No</asp:Label>
                <asp:TextBox runat="server" ID="txtNid" CssClass="form-control" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="txtNid"
                    CssClass="text-danger" ErrorMessage="This field is required." />
            </div>
            <div class="col-md-2">
                <asp:Label runat="server" ID="lblFees" AssociatedControlID="txtFees" CssClass="control-label">Monthly Fees</asp:Label>
                <asp:TextBox runat="server" ID="txtFees" CssClass="form-control" TextMode="Number" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="txtFees"
                    CssClass="text-danger" ErrorMessage="This field is required." />
            </div>
        </div>
        <div class="form-group">
            <div class="col-md-offset-2 col-md-2">
                <asp:Label runat="server" ID="lblImageUpload" AssociatedControlID="ImageFileUpload" CssClass="control-label">Upload</asp:Label>
                <asp:FileUpload ID="ImageFileUpload" runat="server" CssClass="form-control" onchange="ImagePreview(this);" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="ImageFileUpload"
                    CssClass="text-danger" ErrorMessage="This field is required." />
            </div>
            <div class="col-md-2">
                <br />
                <asp:Image ID="ShowImage" runat="server" CssClass="form-control" Height="40px" Width="170px" />
            </div>
            <div class="col-md-2">
                <br />
                <asp:Button ID="SaveButton" runat="server" Text="Save" CssClass="btn btn-info" OnClick="SaveButton_Click" />
            </div>
        </div>
        <div class="form-group">
            <div class="col-md-offset-2 col-md-10">
                <a class="nav-link" id="ViewAlllink" href="View.aspx">Back to Student list</a>
            </div>
        </div>
    </div>
    <script src="http://code.jquery.com/jquery-1.10.2.min.js" type="text/javascript"></script>
    <script type="text/javascript">
        function ImagePreview(input) {
            if (input.files && input.files[0]) {
                var reader = new FileReader();
                reader.onload = function (e) {
                    $('#<%=ShowImage.ClientID%>').prop('src', e.target.result)
                        .width(170)
                        .height(100);
                };
                reader.readAsDataURL(input.files[0]);
            }
        }
    </script>
    <style type="text/css">
        .messagealert {
            width: 358px;
            margin-left: 120px;
        }
    </style>
    <script type="text/javascript">
        function ShowMessage(message, messagetype) {
            var cssclass;
            switch (messagetype) {
                case 'Success':
                    cssclass = 'alert-success'
                    break;
                case 'Failed':
                    cssclass = 'alert-danger'
                    break;
                case 'Warning':
                    cssclass = 'alert-warning'
                    break;
                default:
                    cssclass = 'alert-info'
            }
            $('#alert_container').append('<div id="alert_div" style="margin: 0 0.5%; -webkit-box-shadow: 3px 4px 6px #999;" class="alert fade in ' + cssclass + '"><a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a><strong>' + messagetype + '!</strong> <span>' + message + '</span></div>');
        }
    </script>
</asp:Content>
