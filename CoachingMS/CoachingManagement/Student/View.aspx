﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="View.aspx.cs" Inherits="CoachingManagement.Student.View" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <br />
    <br />
    <h4>View All Students</h4>
    <div class="form-horizontal">
        <div class="form-group">
            <div class="col-md-10">
                <a class="nav-link" href="Setup.aspx">Create New</a>
            </div>
        </div>
        <br />
        <div class="form-group">
            <asp:Label runat="server" CssClass="col-md-2 control-label" Font-Bold="true" Text="Class" Font-Size="Medium"></asp:Label>
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
                <div style="height: 510px; width: 100%; overflow: auto;">
                    <asp:GridView ID="StudentGridView" runat="server" EmptyDataText="No Student Available This class" Width="100%" CssClass="table table-striped table-bordered table-hover" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="10" ForeColor="Black" GridLines="Horizontal" AllowPaging="False" PageSize="1" CellSpacing="10" OnSelectedIndexChanged="StudentGridView_SelectedIndexChanged" OnRowCommand="StudentGridView_RowCommand">
                        <Columns>
                            <asp:TemplateField>
                                <ItemTemplate>
                                    <asp:LinkButton ID="lnDelete" CommandArgument='<%# Eval("StudentId") %>' CommandName="DeleteRow" ForeColor="#8C4510" runat="server" CausesValidation="false">Delete</asp:LinkButton>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:BoundField DataField="StudentId" HeaderText="Id"/>
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
        </div>
    </div>
    <link href="../Content/Gridviewstyle.css" rel="stylesheet" />
</asp:Content>
