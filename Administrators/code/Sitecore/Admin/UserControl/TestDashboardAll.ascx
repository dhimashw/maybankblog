<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="TestDashboardAll.ascx.cs" Inherits="Sitecore.Feature.Administrators.Sitecore.Admin.UserControl.TestDashboardAll" %>

<div class="container-fluid">
    <div class="row">
        <div class="col">
            <h2>Blog Comment Approval</h2>

            <%--<div class="progress" style="height: 1px;">
                <div class="progress-bar" role="progressbar" style="width: 0%;"></div>
            </div>--%>

            <hr />
            <asp:Button runat="server" ID="BtnDisapprove" Text="Approve" OnClick="BtnDisapprove_Click"/>
            <asp:HiddenField runat="server" ID="UID" value=""/>


            <br />
            <br />

            <!-- Grid  -->
            <asp:GridView runat="server">

            </asp:GridView>
            <!-- Grid  -->

            <!-- Table  -->
            <table class="table table-bordered">
              <!-- Table head -->
              <thead>
                <tr>
                  <th>
                    <!-- Default unchecked -->
                    <div class="custom-control custom-checkbox">
                      <input type="checkbox" class="custom-control-input" id="checkSelectAll">
                      <label class="custom-control-label" for="checkSelectAll">Select All</label>
                    </div>
                  </th>
                  <th>Article</th>
                  <th>User</th>
                  <th>Comment</th>
                  <th>Date Posted</th>
                  <th>Status</th>
                </tr>
              </thead>
              <!-- Table head -->

              <!-- Table body -->
              <tbody>
                <asp:Repeater runat="server" ID="repeater1">
                    <ItemTemplate>
                        <tr>
                          <th scope="row">
                            <!-- Default unchecked -->
                            <div class="custom-control custom-checkbox">
                              <input type="hidden" value="<%# DataBinder.Eval(Container.DataItem, "ID") %>"/>
                              <input type="checkbox" class="custom-control-input" id="comment-<%# DataBinder.Eval(Container.DataItem, "ID") %>">
                              <label class="custom-control-label" for="comment-<%# DataBinder.Eval(Container.DataItem, "ID") %>"></label>
                            </div>
                          </th>
                          <td><%# DataBinder.Eval(Container.DataItem, "PageDisplayName") %></td>
                          <td><%# DataBinder.Eval(Container.DataItem, "Username") %></td>
                          <td><%# DataBinder.Eval(Container.DataItem, "Comment") %></td>
                          <td><%# DataBinder.Eval(Container.DataItem, "CommentDate") %></td>
                          <td><%# DataBinder.Eval(Container.DataItem, "isApproved") %></td>
                        </tr>
                    </ItemTemplate>
                </asp:Repeater>
              </tbody>
              <!-- Table body -->
            </table>
            <!-- Table  -->

            <%--<table class="table table-striped">
                <tbody>
                    <asp:Repeater runat="server" ID="repeat1">
                        <ItemTemplate>
                            <tr>
                                <td>Article Name : <%# DataBinder.Eval(Container.DataItem, "title") %>
                                    <br />
                                    Comment : <%# DataBinder.Eval(Container.DataItem, "content") %>
                                    <br />
                                    Author : <%# DataBinder.Eval(Container.DataItem, "ID") %>
                                    <br />
                                    Date Posted : <%# DataBinder.Eval(Container.DataItem, "date_posted") %>
                                    <br />
                                    <button>Approve</button>
                                </td>
                            </tr>
                        </ItemTemplate>
                    </asp:Repeater>
                </tbody>
              </table>--%>

            <%--<div class="input-group mb-3">
                <div class="custom-file">
                    <label class="custom-file-label" for="fuBulkUpload" id="lblChoose">
                        <asp:Literal ClientIDMode="Static" ID="litChoose" Text="Choose File" runat="server"></asp:Literal>
                    </label>
                    <asp:FileUpload runat="server" ClientIDMode="Static" ID="fuBulkUpload" CssClass="custom-file-input" />
                </div>
                <div class="input-group-append">
                    <asp:Button runat="server" ID="btnUpload" OnClick="btnUpload_Click" CssClass="btn btn-primary" Text="Upload" Enabled="false" />
                </div>
            </div>--%>

        </div>
    </div>

    <%--<div class="row">
        <div class="col-md-4"></div>
        <div class="col-md-4 offset-md-4">
            <asp:FileUpload runat="server" ID="fuXML" ClientIDMode="Static" Style="display: none;" />
            <asp:LinkButton OnClientClick="return false;" runat="server" ID="btnXMLUpload" ClientIDMode="Static" CssClass="btn btn-link float-right">
                <span class="oi oi-plus"></span> Upload XML
            </asp:LinkButton>
            <asp:Button runat="server" ClientIDMode="Static" ID="hideButton" Style="display: none;" OnClick="btnXMLUpload_Click" />
        </div>
    </div>--%>

    <div class="alert alert-success alert-bottom" role="alert" style="z-index:100000;">
        <h4 class="alert-heading">SUCCESS ! </h4>
        <p>Bulk upload was succesful.</p>
    </div>

    <div id="alertXML" class="alert alert-success alert-bottom" role="alert" style="z-index:100000;">
        <h4 class="alert-heading">SUCCESS ! </h4>
        <p>Upload XML was succesful.</p>
    </div>

    <div class="alert alert-danger alert-bottom" role="alert" style="z-index:100000;">
        <h4 class="alert-heading">FAILED ! </h4>
        <p>
            Bulk upload was unsuccesful.
            <asp:Literal ID="litAlertError" runat="server"></asp:Literal>
        </p>
    </div>

    <div class="alert alert-warning alert-bottom" role="alert" style="z-index:100000;">
        <h4 class="alert-heading">WARNING ! </h4>
        <p>
            Bulk upload was unsuccesful.
            <asp:Literal ID="litWarningError" runat="server"></asp:Literal>
        </p>
    </div>

    <%--    <div id="dialog-confirm" title="Empty the recycle bin?">
        <p><span class="ui-icon ui-icon-alert" style="float: left; margin: 12px 12px 20px 0;"></span>These items will be permanently deleted and cannot be recovered. Are you sure?</p>
    </div>--%>
</div>


