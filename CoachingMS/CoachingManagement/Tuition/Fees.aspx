<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Fees.aspx.cs" Inherits="CoachingManagement.Tuition.Fees" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <br />
    <h4>Tuition Fees</h4>
    <br />
    <div class="form-horizontal">
        <div class="form-group">
            <asp:Label runat="server" ID="lblMessage" AssociatedControlID="lblMessage" CssClass="col-md-1 control-label"></asp:Label>
            <div class="col-md-10">
                <div class="messagealert" id="alert_container">
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-offset-1 col-md-5" style="width: 500px">
                <div class="panel panel-info">
                    <div class="panel-heading">
                        <h3 class="panel-title">Student Information</h3>
                    </div>
                    <div class="panel-body">
                        <div class="form-group">
                            <asp:Label runat="server" ID="lblStudentId" AssociatedControlID="txtStudentId" CssClass="col-md-2 control-label">Student Id</asp:Label>
                            <div class="col-md-10">
                                <asp:TextBox runat="server" ID="txtStudentId" CssClass="form-control" Font-Bold="true" Font-Size="Medium" Style="text-align: center" AutoPostBack="true" OnTextChanged="txtStudentId_TextChanged" />
                            </div>
                        </div>
                        <div class="form-group">
                            <asp:Label runat="server" ID="lblName" AssociatedControlID="txtName" CssClass="col-md-2 control-label">Name</asp:Label>
                            <div class="col-md-10">
                                <asp:TextBox runat="server" ID="txtName" CssClass="form-control" Font-Bold="true" Font-Size="Medium" Style="text-align: center" Enabled="false" />
                            </div>
                        </div>
                        <div class="form-group">
                            <asp:Label runat="server" ID="lblClass" AssociatedControlID="txtClass" CssClass="col-md-2 control-label">Class</asp:Label>
                            <div class="col-md-10">
                                <asp:TextBox runat="server" ID="txtClass" CssClass="form-control" Font-Bold="true" Font-Size="Medium" Style="text-align: center" Enabled="false" />
                            </div>
                        </div>
                        <div class="form-group">
                            <asp:Label runat="server" ID="lblMonthlyFees" AssociatedControlID="txtStudentId" CssClass="col-md-2 control-label">Monthly Fees</asp:Label>
                            <div class="col-md-10">
                                <asp:TextBox runat="server" ID="txtMonthlyFees" CssClass="form-control" Font-Bold="true" Font-Size="Medium" Style="text-align: center" Enabled="false" />
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-5">
                <div class="panel panel-info">
                    <div class="panel-heading">
                        <h3 class="panel-title">Payment History</h3>
                    </div>
                    <div class="panel-body">
                        <div class="form-group">
                            <div class="col-md-12">
                                    <asp:GridView ID="PaymentGridView" runat="server" EmptyDataText="No Categories Available Now" Width="100%" CssClass="table table-striped table-bordered table-hover" PageSize="3" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="10" ForeColor="Black" GridLines="Horizontal" AllowPaging="true" CellSpacing="10" OnPageIndexChanging="PaymentGridView_PageIndexChanging">
                                        <Columns>
                                            <asp:TemplateField HeaderText="Serial No" ItemStyle-Width="130">
                                                <ItemTemplate>
                                                    <asp:Label ID="lblSerialNo" Text='<%# Container.DataItemIndex + 1 %>' runat="server" />
                                                </ItemTemplate>
                                                <ItemStyle Width="130px"></ItemStyle>
                                            </asp:TemplateField>
                                            <asp:BoundField DataField="Fees" HeaderText="Fees" />
                                            <asp:BoundField DataField="Due" HeaderText="Due" />
                                            <asp:BoundField DataField="Date" HeaderText="Paid Date" />
                                        </Columns>
                                        <PagerStyle Font-Bold="true" Font-Size="Small" ForeColor="#3399FF" />
                                    </asp:GridView>
                                </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-offset-1 col-md-5" style="width: 500px">
                <div class="panel panel-info">
                    <div class="panel-heading">
                        <h3 class="panel-title">Last Payment Details</h3>
                    </div>
                    <div class="panel-body">
                        <div class="form-group">
                            <asp:Label runat="server" ID="lblLastPaid" AssociatedControlID="txtLastPaid" CssClass="col-md-2 control-label">Last Paid</asp:Label>
                            <div class="col-md-10">
                                <asp:TextBox runat="server" ID="txtLastPaid" CssClass="form-control" Font-Bold="true" Font-Size="Medium" Style="text-align: center" Enabled="false" />
                            </div>
                        </div>
                        <div class="form-group">
                            <asp:Label runat="server" ID="lblRemainingDue" AssociatedControlID="txtRemainigDue" CssClass="col-md-2 control-label">Remaining Due</asp:Label>
                            <div class="col-md-10">
                                <asp:TextBox runat="server" ID="txtRemainigDue" CssClass="form-control" Font-Bold="true" Font-Size="Medium" Style="text-align: center" Enabled="false" />
                            </div>
                        </div>
                        <div class="form-group">
                            <asp:Label runat="server" ID="lblLastPaidMonth" AssociatedControlID="txtLastPaidMonth" CssClass="col-md-2 control-label">Paid Date</asp:Label>
                            <div class="col-md-10">
                                <asp:TextBox runat="server" ID="txtLastPaidMonth" CssClass="form-control" Font-Bold="true" Font-Size="Medium" Style="text-align: center" Enabled="false" />
                            </div>
                        </div>
                        <div class="form-group">
                            <asp:Label runat="server" ID="lblCurrentPaid" AssociatedControlID="txtCurrentpaid" CssClass="col-md-2 control-label">Current Paid</asp:Label>
                            <div class="col-md-10">
                                <asp:TextBox runat="server" ID="txtCurrentpaid" CssClass="form-control" Font-Bold="true" Font-Size="Medium" Style="text-align: center" Enabled="false" />
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-5">
                <div class="panel panel-info">
                    <div class="panel-heading">
                        <h3 class="panel-title">Paid Fees</h3>
                    </div>
                    <br />
                    <br/>
                    <div class="panel-body">
                        <div class="form-group">
                            <asp:Label runat="server" ID="lblDate" AssociatedControlID="txtDate" CssClass="col-md-2 control-label">Date</asp:Label>
                            <div class="col-md-10">
                                <asp:TextBox runat="server" ID="txtDate" CssClass="form-control" Font-Bold="true" Font-Size="Medium" Style="text-align: center" TextMode="Date" />
                            </div>
                        </div>
                        <div class="form-group">
                            <asp:Label runat="server" ID="lblPaid" AssociatedControlID="txtPaid" CssClass="col-md-2 control-label">Paid</asp:Label>
                            <div class="col-md-10">
                                <asp:TextBox runat="server" ID="txtPaid" CssClass="form-control" Font-Bold="true" Font-Size="Medium" Style="text-align: center" TextMode="Number" />
                            </div>
                        </div>
                        <div class="form-group">
                            <asp:Label runat="server" ID="lblAfterRemaining" AssociatedControlID="txtAfterRremaining" CssClass="col-md-2 control-label">After Remaining</asp:Label>
                            <div class="col-md-10">
                                <asp:TextBox runat="server" ID="txtAfterRremaining" CssClass="form-control" Font-Bold="true" Font-Size="Medium" Style="text-align: center" Enabled="false" />
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-md-offset-7 col-md-12">
                                <asp:Button ID="PaidFeesButton" runat="server" Text="Paid" CssClass="btn btn-info" Width="85px" />
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <style type="text/css">
        .messagealert {
            width: 470px;
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
                case 'Error':
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
    <link href="../Content/Gridviewstyle.css" rel="stylesheet" />
</asp:Content>
