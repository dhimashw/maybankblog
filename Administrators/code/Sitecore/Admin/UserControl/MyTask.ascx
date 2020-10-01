<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="MyTask.ascx.cs" Inherits="Sitecore.Feature.Administrators.Sitecore.Admin.UserControl.MyTask" %>

<div class="container-fluid">
    <div class="row">
        <div class="col">
            <h2>Comment Approval</h2>
            <hr />
            <div class="top-button" data-toggle="affix">
                <asp:Button runat="server" ID="BtnApprove" Text="Approve" OnClick="BtnApprove_Click" CssClass="btn btn-sm btn-approve"/>
                <asp:Button runat="server" ID="BtnReject" Text="Reject" OnClick="BtnReject_Click" CssClass="btn btn-sm btn-reject"/>
            </div>
            <hr />
            <div class="row">
                <div class="col-md-3 no-side-padding">
                    <asp:TextBox  ID="Keyword" runat="server" Text="Search..." CssClass="form-control form-control-sm"></asp:TextBox>
                </div>
                <div class="col-md-2 no-side-padding">
                    <asp:DropDownList ID="CategoryList" runat="server" CssClass="form-control form-control-sm">
                        <asp:ListItem Enabled="true" Text="Search By" Value="-1"></asp:ListItem>
                        <asp:ListItem Text="Blog Title" Value="PageDisplayName"></asp:ListItem>
                        <asp:ListItem Text="Username" Value="Username"></asp:ListItem>
                        <asp:ListItem Text="Comment" Value="Comment"></asp:ListItem>
                    </asp:DropDownList>
                </div>
                <div class="col-md-2 no-side-padding">
                    <asp:TextBox ID="DatePickerStart" runat="server" autocomplete="off" CssClass="form-control form-control-sm" Text="From"/>
                </div>
                <div class="col-md-2 no-side-padding">
                    <asp:TextBox ID="DatePickerEnd" runat="server" autocomplete="off" CssClass="form-control form-control-sm" Text="To"/>
                </div>
                <div class="col-md-3 no-side-padding">
                    <asp:Button runat="server" ID="BtnSearchByDate" Text="Search" OnClick="BtnSearchByDate_Click" CssClass="btn btn-sm btn-search"/>
                    <asp:Button runat="server" ID="BtnSearchAll" Text="Search All" OnClick="BtnShowAll_Click" CssClass="btn btn-sm btn-search-all"/>
                </div>
            </div>
            <hr />
            <table id="dtMyTask" class="table table-striped table-bordered table-sm" cellspacing="0" width="100%" data-selectCheckbox="selectAllMyTask">
                <thead>
                    <tr>
                        <th class="th-sm">
                            <input type="checkbox" value="" id="selectAllMyTask">
                        </th>
                        <th class="th-sm">Blog Title</th>
                        <th class="th-sm">User</th>
                        <th class="th-sm">Comment</th>
                        <th class="th-sm">Date Posted</th>
                        <th class="th-sm">Status</th>
                    </tr>
                </thead>
                <tbody>
                    <asp:Repeater runat="server" ID="commentList">
                        <ItemTemplate>
                            <tr>
                                <td class="checkbox">
                                    <div>
                                        <asp:CheckBox ID="commentCheckbox" runat="server" />
                                        <asp:HiddenField ID="commentID" Value='<%# DataBinder.Eval(Container.DataItem, "ID") %>' runat="server" />
                                    </div>
                                </td>
                                <td><%# DataBinder.Eval(Container.DataItem, "PageDisplayName") %></td>
                                <td><%# DataBinder.Eval(Container.DataItem, "Username") %></td>
                                <td><%# DataBinder.Eval(Container.DataItem, "Comment") %></td>
                                <td><%# DataBinder.Eval(Container.DataItem, "CommentDate") %></td>
                                <td style="text-align: center !important;">Awaiting</td>
                                <%--<td style="text-align: center !important;"><%# DataBinder.Eval(Container.DataItem, "isApproved") %></td>--%>
                            </tr>
                        </ItemTemplate>
                    </asp:Repeater>
                </tbody>
            </table>

        </div>
    </div>
</div>