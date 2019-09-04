<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ChangeSubjects.aspx.cs" Inherits="CoachingManagement.Student.ChangeSubjects" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <br />
    <br />
    <h4>Change Subjects</h4>
    <div class="form-horizontal">
        <div class="form-group">
            <div class="col-md-10">
                <a class="nav-link" href="Setup.aspx">Create New</a>
            </div>
        </div>
        <br />
        <div class="form-group">
            <asp:Label runat="server" ID="lblClass" CssClass="col-md-2 control-label" Font-Bold="true" Text="Class" Font-Size="Medium"></asp:Label>
            <div class="col-md-10">
                <asp:DropDownList ID="ClassDropDownList" runat="server" CssClass="form-control" AutoPostBack="true" OnSelectedIndexChanged="ClassDropDownList_SelectedIndexChanged"></asp:DropDownList>
                <asp:RequiredFieldValidator runat="server" ControlToValidate="ClassDropDownList"
                    CssClass="text-danger" ErrorMessage="The Department field is required." />
                <asp:HiddenField ID="IdHiddenField" runat="server" />
            </div>
        </div>
        <hr />
        <div class="form-group">
            <div class="col-md-12">
                <asp:GridView ID="StudentGridView" runat="server" EmptyDataText="No Student Available This class" Width="100%" CssClass="table table-striped table-bordered table-hover" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="10" ForeColor="Black" GridLines="Horizontal" AllowPaging="True" PageSize="2" CellSpacing="10" OnSelectedIndexChanged="StudentGridView_SelectedIndexChanged" OnPageIndexChanging="StudentGridView_PageIndexChanging">
                    <Columns>
                        <asp:BoundField DataField="StudentId" HeaderText="Id" />
                        <asp:BoundField DataField="Name" HeaderText="Name" />
                        <asp:BoundField DataField="Contact" HeaderText="Contact" />
                        <asp:BoundField DataField="Gender" HeaderText="Gender" />
                        <asp:BoundField DataField="Institute" HeaderText="Institute" />
                        <asp:BoundField DataField="Class" HeaderText="Class" />
                        <asp:BoundField DataField="Groups" HeaderText="Groups" />
                        <asp:BoundField DataField="Subjects" HeaderText="Subjects" />
                        <asp:BoundField DataField="Address" HeaderText="Address" />
                        <asp:BoundField DataField="Father" HeaderText="Father" />
                        <asp:BoundField DataField="Nid" HeaderText="Nid" />
                        <asp:BoundField DataField="Fees" HeaderText="Fees" />
                        <asp:BoundField DataField="date" HeaderText="Admited" />
                        <asp:CommandField HeaderText="Action" SelectText="Edit" ShowSelectButton="True">
                            <ItemStyle ForeColor="#CC0000" />
                        </asp:CommandField>
                    </Columns>
                    <PagerStyle Font-Bold="true" Font-Size="Small" ForeColor="#3399FF" />
                </asp:GridView>
            </div>
        </div>
        <div class="form-group">
            <div class="col-md-offset-2 col-md-10">
                <asp:Button ID="ChangeButton" runat="server" Text="Change" CssClass="btn btn-info" OnClick="ChangeButton_Click" />
            </div>
        </div>
        <div class="form-group">
            <asp:Label runat="server" ID="lblNewSubjects" CssClass="col-md-2 control-label" Font-Bold="true" Text="New Fees" Font-Size="Medium"></asp:Label>
            <div class="col-md-10">
                <asp:TextBox ID="txtNewSubjects" runat="server" CssClass="form-control" Font-Size="Medium" Font-Bold="true"></asp:TextBox>        
            </div>
        </div>
        <div class="form-group">
            <div class="col-md-offset-2 col-md-5">
                <asp:Button ID="OkButton" runat="server" Text="Ok" CssClass="btn btn-info" OnClick="OkButton_Click" />
                <asp:Button ID="CancelButton" runat="server" Text="Cancel" CssClass="btn btn-info" OnClick="CancelButton_Click"/>
            </div>
        </div>
    </div>
    <link href="../Content/Gridviewstyle.css" rel="stylesheet" />
</asp:Content>
