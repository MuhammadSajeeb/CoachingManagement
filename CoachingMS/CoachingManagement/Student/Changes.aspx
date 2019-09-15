<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Changes.aspx.cs" Inherits="CoachingManagement.Student.Changes" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <br />
    <br />
 
    <h4>Changes Student Curriculam</h4>
    <br />

    <div class="form-horizontal">

        <div class="row">
            <div class="col-xs-12">

                <ul class="nav nav-tabs nav-justified">
                    <li class="active">
                        <a href="#Class" data-toggle="tab">Class</a>
                    </li>
                    <li>
                        <a href="#Subjects" data-toggle="tab">Subjects</a>
                    </li>
                    <li>
                        <a href="#Groups" data-toggle="tab">Groups</a>
                    </li>
                    <li>
                        <a href="#Fees" data-toggle="tab">Fees</a>
                    </li>
                </ul>

                <div class="tab-content">

                    <div id="Class" class="tab-pane active">
                        <br />

                        <h4 style="color:red;margin-left:40px">Changes Class</h4>

                        <br />
                        <div class="form-group">
                            <asp:Label runat="server" ID="lblChangeClass" CssClass="col-md-2 control-label" Font-Bold="true" Text="Class" Font-Size="Medium"></asp:Label>
                            <div class="col-md-10">
                                <asp:DropDownList ID="ChangeClassDropDownList" runat="server" CssClass="form-control" AutoPostBack="true"></asp:DropDownList>
                                <asp:HiddenField ID="IdHiddenField" runat="server" />
                            </div>
                        </div>
                        <hr />
                        <div class="form-group">
                            <div class="col-md-12">
                                <asp:GridView ID="ChangeClassStudentGridView" runat="server" EmptyDataText="No Student Available This class" Width="100%" CssClass="table table-striped table-bordered table-hover" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="10" ForeColor="Black" GridLines="Horizontal" AllowPaging="True" PageSize="2" CellSpacing="10">
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
                                        <asp:CommandField HeaderText="Change" SelectText="Only" ShowSelectButton="True">
                                            <ItemStyle ForeColor="#CC0000" />
                                        </asp:CommandField>
                                    </Columns>
                                    <PagerStyle Font-Bold="true" Font-Size="Small" ForeColor="#3399FF" />
                                </asp:GridView>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-md-offset-2 col-md-10">
                                <asp:Button ID="ClassChangeButton" runat="server" Text="Change" CssClass="btn btn-info" />
                            </div>
                        </div>
                        <div class="form-group">
                            <asp:Label runat="server" ID="lblNewClass" CssClass="col-md-2 control-label" Font-Bold="true" Text="Select New Class" Font-Size="Medium"></asp:Label>
                            <div class="col-md-10">
                                <asp:DropDownList ID="NewClassDropDownList" runat="server" CssClass="form-control" AutoPostBack="true"></asp:DropDownList>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-md-offset-2 col-md-5">
                                <asp:Button ID="ClassOkButton" runat="server" Text="Ok" CssClass="btn btn-info" />
                                <asp:Button ID="ClassCancelButton" runat="server" Text="Cancel" CssClass="btn btn-info" />
                            </div>
                        </div>
                    </div>

                    <div id="Subjects" class="tab-pane">
                        <br />

                        <h4 style="color:red;margin-left:40px">Changes Subjects</h4>
                        <br />
                        <div class="form-group">
                            <asp:Label runat="server" ID="lblS_Class" CssClass="col-md-2 control-label" Font-Bold="true" Text="Class" Font-Size="Medium"></asp:Label>
                            <div class="col-md-10">
                                <asp:DropDownList ID="S_ClassDropDownList" runat="server" CssClass="form-control" AutoPostBack="true"></asp:DropDownList>

                                <asp:HiddenField ID="S_HiddenField1" runat="server" />
                            </div>
                        </div>
                        <hr />
                        <div class="form-group">
                            <div class="col-md-12">
                                <asp:GridView ID="SubjectStudentGridView" runat="server" EmptyDataText="No Student Available This class" Width="100%" CssClass="table table-striped table-bordered table-hover" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="10" ForeColor="Black" GridLines="Horizontal" AllowPaging="True" PageSize="2" CellSpacing="10">
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
                                <asp:Button ID="S_ChangeButton" runat="server" Text="Change" CssClass="btn btn-info"/>
                            </div>
                        </div>
                        <div class="form-group">
                            <asp:Label runat="server" ID="lblNewSubjects" CssClass="col-md-2 control-label" Font-Bold="true" Text="New Subjects" Font-Size="Medium"></asp:Label>
                            <div class="col-md-10">
                                <asp:TextBox ID="txtNewSubjects" runat="server" CssClass="form-control" Font-Size="Medium" Font-Bold="true"></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-md-offset-2 col-md-5">
                                <asp:Button ID="S_OkButton" runat="server" Text="Ok" CssClass="btn btn-info" />
                                <asp:Button ID="S_CancelButton" runat="server" Text="Cancel" CssClass="btn btn-info" />
                            </div>
                        </div>

                    </div>

                    <div id="Groups" class="tab-pane">
                        <br />

                        <h4 style="color:red;margin-left:40px">Changes Groups</h4>
                        <br />
                        <div class="form-group">
                            <asp:Label runat="server" ID="lblG_Class" CssClass="col-md-2 control-label" Font-Bold="true" Text="Class" Font-Size="Medium"></asp:Label>
                            <div class="col-md-10">
                                <asp:DropDownList ID="G_ClassDropDownList" runat="server" CssClass="form-control" AutoPostBack="true"></asp:DropDownList>

                                <asp:HiddenField ID="G_HiddenField1" runat="server" />
                            </div>
                        </div>
                        <hr />
                        <div class="form-group">
                            <div class="col-md-12">
                                <asp:GridView ID="G_StudentGridView" runat="server" EmptyDataText="No Student Available This class" Width="100%" CssClass="table table-striped table-bordered table-hover" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="10" ForeColor="Black" GridLines="Horizontal" AllowPaging="True" PageSize="2" CellSpacing="10">
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
                                        <asp:CommandField HeaderText="Change" SelectText="Only" ShowSelectButton="True">
                                            <ItemStyle ForeColor="#CC0000" />
                                        </asp:CommandField>
                                    </Columns>
                                    <PagerStyle Font-Bold="true" Font-Size="Small" ForeColor="#3399FF" />
                                </asp:GridView>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-md-offset-2 col-md-10">
                                <asp:Button ID="G_ChangeButton" runat="server" Text="Change" CssClass="btn btn-info"/>
                            </div>
                        </div>
                        <div class="form-group">
                            <asp:Label runat="server" ID="lblNewGroup" CssClass="col-md-2 control-label" Font-Bold="true" Text="Select New Group" Font-Size="Medium"></asp:Label>
                            <div class="col-md-10">
                                <asp:DropDownList ID="NewGroupDropDownList" runat="server" CssClass="form-control" AutoPostBack="true">
                                    <asp:ListItem>Select</asp:ListItem>
                                    <asp:ListItem>Science</asp:ListItem>
                                    <asp:ListItem>Commerce</asp:ListItem>
                                    <asp:ListItem>Arts</asp:ListItem>
                                    <asp:ListItem>None</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-md-offset-2 col-md-5">
                                <asp:Button ID="G_OkButton" runat="server" Text="Ok" CssClass="btn btn-info" />
                                <asp:Button ID="G_CancelButton" runat="server" Text="Cancel" CssClass="btn btn-info" />
                            </div>
                        </div>

                    </div>

                    <div id="Fees" class="tab-pane">
                        <br />

                        <h4 style="color:red;margin-left:40px">Changes Fees</h4>
                        <br />
                        <div class="form-group">
                            <asp:Label runat="server" ID="lblF_Class" CssClass="col-md-2 control-label" Font-Bold="true" Text="Class" Font-Size="Medium"></asp:Label>
                            <div class="col-md-10">
                                <asp:DropDownList ID="F_ClassDropDownList" runat="server" CssClass="form-control" AutoPostBack="true"></asp:DropDownList>
                                <asp:HiddenField ID="F_HiddenField1" runat="server" />
                            </div>
                        </div>
                        <hr />
                        <div class="form-group">
                            <div class="col-md-12">
                                <asp:GridView ID="F_StudentGridView" runat="server" EmptyDataText="No Student Available This class" Width="100%" CssClass="table table-striped table-bordered table-hover" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="10" ForeColor="Black" GridLines="Horizontal" AllowPaging="True" PageSize="2" CellSpacing="10">
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
                                <asp:Button ID="F_ChangeButton" runat="server" Text="Change" CssClass="btn btn-info" />
                            </div>
                        </div>
                        <div class="form-group">
                            <asp:Label runat="server" ID="lblNewFees" CssClass="col-md-2 control-label" Font-Bold="true" Text="New Fees" Font-Size="Medium"></asp:Label>
                            <div class="col-md-10">
                                <asp:TextBox ID="txtNewFees" runat="server" CssClass="form-control" Style="text-align: center" Font-Size="Medium" Font-Bold="true"></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-md-offset-2 col-md-5">
                                <asp:Button ID="F_OkButton" runat="server" Text="Ok" CssClass="btn btn-info" />
                                <asp:Button ID="F_CancelButton" runat="server" Text="Cancel" CssClass="btn btn-info" />
                            </div>
                        </div>

                    </div>

                </div>

            </div>
        </div>
    </div>
    <link href="../Content/Gridviewstyle.css" rel="stylesheet" />
</asp:Content>
