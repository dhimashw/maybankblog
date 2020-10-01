<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="DebugDashboard.ascx.cs" Inherits="Sitecore.Feature.Administrators.Sitecore.Admin.UserControl.DebugDashboard" %>

<%@ Register Assembly="Sitecore.Kernel" Namespace="Sitecore.Web.UI.HtmlControls" TagPrefix="cc1" %>
<%@ Register Assembly="Sitecore.Kernel" Namespace="Sitecore.Shell.Applications.ContentEditor" TagPrefix="cc2" %>

<div class="container-fluid">
    <div class="row">
        <div class="col">
            <h2>Approve Comments</h2>
            <hr />
            <asp:Button runat="server" ID="BtnDisapprove" Text="Disapprove" OnClick="BtnDisapprove_Click" />
            <hr />
            <label>Start Date</label>
            <asp:TextBox ID="DatePickerDebugStart" runat="server" />
            <label>  To</label>
            <asp:TextBox ID="DatePickerDebugEnd" runat="server" />
            <asp:Button runat="server" ID="BtnSearchByDate" Text="Search By Date" OnClick="BtnSearchByDate_Click" />
            <asp:Button runat="server" ID="BtnShowAll" Text="Show All" OnClick="BtnShowAll_Click" />
            <asp:HiddenField ID="hddate1" runat="server" value=""/>
            <hr />
            <table id="dtBasicExample" class="table table-striped table-bordered table-sm" cellspacing="0" width="100%">
                <thead>
                    <tr>
                        <th class="th-sm">
                            <div>
                                <input type="checkbox" value="" id="appSelectAllDebug">
                            </div>
                        </th>
                        <th class="th-sm">Article</th>
                        <th class="th-sm">User</th>
                        <th class="th-sm">Comment</th>
                        <th class="th-sm">Date Posted</th>
                        <th class="th-sm">Status</th>
                    </tr>
                </thead>
                <tbody>
                    <asp:Repeater runat="server" ID="commentListDebug">
                        <ItemTemplate>
                            <tr>
                                <td>
                                    <div>
                                        <asp:CheckBox ID="commentCheckboxDebug" runat="server" />
                                        <asp:HiddenField ID="commentIDDebug" Value='<%# DataBinder.Eval(Container.DataItem, "ID") %>' runat="server" />
                                    </div>
                                </td>
                                <td><%# DataBinder.Eval(Container.DataItem, "PageDisplayName") %></td>
                                <td><%# DataBinder.Eval(Container.DataItem, "Username") %></td>
                                <td><%# DataBinder.Eval(Container.DataItem, "Comment") %></td>
                                <td><%# DataBinder.Eval(Container.DataItem, "CommentDate") %></td>
                                <td><%# DataBinder.Eval(Container.DataItem, "isApproved") %></td>
                            </tr>
                        </ItemTemplate>
                    </asp:Repeater>
                </tbody>
            </table>

        </div>
    </div>
</div>


