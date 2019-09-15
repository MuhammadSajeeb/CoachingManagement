<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="testingtabcontainer.aspx.cs" Inherits="CoachingManagement.testingtabcontainer" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <br />
    <br />
    <h4>Change Class</h4>
    <div class="form-horizontal">
        <div class="row">
            <div class="col-xs-10">

                <ul class="nav nav-tabs nav-justified">
                    <li class="active">
                        <a href="#homeTab" data-toggle="tab">Home</a>
                    </li>
                    <li>
                        <a href="#contactTab" data-toggle="tab">Contact</a>
                    </li>
                    <li class="dropdown">
                        <a href="#" data-toggle="dropdown" class="dropdown-toggle">Locations <b class="caret"></b>
                        </a>
                        <ul class="dropdown-menu">
                            <li><a href="#indiaTab" data-toggle="tab">India</a></li>
                            <li><a href="#usaTab" data-toggle="tab">USA</a></li>
                        </ul>
                    </li>
                </ul>
                <div class="tab-content">
                    <div id="homeTab" class="tab-pane active">
                        <br />
                        <div class="form-group">
                            <asp:Label runat="server" ID="lblClass" CssClass="col-md-2 control-label" Font-Bold="true" Text="Class" Font-Size="Medium"></asp:Label>
                            <div class="col-md-10">
                                <asp:DropDownList ID="ClassDropDownList" runat="server" CssClass="form-control" AutoPostBack="true"></asp:DropDownList>
                                <asp:RequiredFieldValidator runat="server" ControlToValidate="ClassDropDownList"
                                    CssClass="text-danger" ErrorMessage="The Department field is required." />
                                <asp:HiddenField ID="IdHiddenField" runat="server" />
                            </div>
                        </div>
                    </div>
                    <div id="contactTab" class="tab-pane">
                        <h3>Contact</h3>
                        <p>Contact page content</p>
                    </div>
                    <div id="indiaTab" class="tab-pane">
                        <h3>India</h3>
                        <p>India Location Details</p>
                    </div>
                    <div id="usaTab" class="tab-pane">
                        <h3>USA</h3>
                        <p>USA Location Details</p>
                    </div>
                </div>

            </div>
        </div>
    </div>
</asp:Content>
