<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Dashboard.aspx.cs" Inherits="Sitecore.Feature.Administrators.Sitecore.Admin.Custom.Dashboard" %>

<%@ Register Src="~/Sitecore/Admin/UserControl/MyTask.ascx" TagPrefix="uc1" TagName="MyTask" %>
<%@ Register Src="~/Sitecore/Admin/UserControl/ApprovedComment.ascx" TagPrefix="uc1" TagName="ApprovedComment" %>
<%@ Register Src="~/Sitecore/Admin/UserControl/DeletedComment.ascx" TagPrefix="uc1" TagName="DeletedComment" %>

<!DOCTYPE HTML>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="shortcut icon" type="image/png" href="/assets/img/favicon.png" />
    <link href="../../../Assets/Styles/bootstrap.min.css" rel="stylesheet" />
    <link href="../../../Assets/font/css/open-iconic-bootstrap.min.css" rel="stylesheet" />
    <link href="../../../Assets/Styles/style.css" rel="stylesheet" />
    <title>Dashboard</title>

    <!-- Font Awesome -->
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" />
    <%--<link href="../../../Assets/md/css/bootstrap.min.css" rel="stylesheet" />--%>
    <link href="../../../Assets/md/css/mdb.min.css" rel="stylesheet" />
    <link href="../../../Assets/md/css/addons/datatables.min.css" rel="stylesheet" />
    <link href="../../../Assets/md/css/style.css" rel="stylesheet" />

    <link href="../../../Assets/custom/jquery-ui-1.12.1/jquery-ui.min.css" rel="stylesheet" />
</head>
<body>
    <div id="wrapper" class="static">
        <form id="form1" runat="server" >
            <asp:HiddenField ID="MainCurrentTab" runat="server" value=""/>
            <!-- Sidebar -->
            <div id="sidebar-wrapper">
                <ul class="nav sidebar-nav flex-column" id="myTab" role="tablist">
                    <li class="nav-item sidebar-brand">
                        <a href="#"></a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" id="my-task" data-toggle="tab" href="#myTask" role="tab" aria-controls="myTask" aria-selected="false">Comment Approval</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" id="approved-comment" data-toggle="tab" href="#approvedComment" role="tab" aria-controls="approvedComment" aria-selected="false">History List</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" id="deleted-comment" data-toggle="tab" href="#deletedComment" role="tab" aria-controls="deletedComment" aria-selected="false">Deleted</a>
                    </li>
                    <%--<li class="nav-item">
                        <a class="nav-link" id="debug-dashboard" data-toggle="tab" href="#debugDashboard" role="tab" aria-controls="debugDashboard" aria-selected="false">Debug</a>
                    </li>--%>
                </ul>
                <ul class="nav sidebar-nav-reverse flex-column" role="tablist">
                    <li class="nav-item">
                        <a class="nav-link" href="../../shell/sitecore/client/Applications/Launchpad" style="padding-left: unset;"><span class="oi oi-account-logout"></span> Return to Launchpad</a>
                    </li>
                </ul>
            </div>
            <!-- /#sidebar-wrapper -->

            <!-- Page Content -->
            <div id="page-content-wrapper">
                <div class="tab-content">
                    <div class="tab-pane active" id="myTask" role="tabpanel" aria-labelledby="my-task" runat="server">
                        <uc1:MyTask runat="server" id="MyTaskUC" />
                    </div>
                    <div class="tab-pane active" id="approvedComment" role="tabpanel" aria-labelledby="approved-comment" runat="server">
                        <uc1:ApprovedComment runat="server" id="ApprovedCommentUC" />
                    </div>
                    <div class="tab-pane active" id="deletedComment" role="tabpanel" aria-labelledby="deleted-comment" runat="server">
                        <uc1:DeletedComment runat="server" id="DeletedCommentUC" />
                    </div>
                    <%--<div class="tab-pane" id="debugDashboard" role="tabpanel" aria-labelledby="debug-dashboard" runat="server">
                        <uc1:DebugDashboard runat="server" id="DebugDashboardUC" />
                    </div>--%>
                </div> 
            </div>
            <!-- /#page-content-wrapper -->

            <%--<script src="../../../Assets/js/jquery-3.3.1.min.js"></script>--%>
            <%--<script src="../../../Assets/Scripts/popper.min.js"></script>--%>
            <%--<script src="../../../Assets/Scripts/bootstrap.min.js"></script>--%>
            <%--<script src="../../../Assets/Scripts/bootstrap.bundle.min.js"></script>--%>

            <script type="text/javascript" src="../../../Assets/md/js/jquery-3.3.1.min.js"></script>
            <script type="text/javascript" src="../../../Assets/md/js/popper.min.js"></script>
            <script type="text/javascript" src="../../../Assets/md/js/bootstrap.min.js"></script>
            <script type="text/javascript" src="../../../Assets/md/js/mdb.min.js"></script>
            <script type="text/javascript" src="../../../Assets/md/js/addons/datatables.min.js"></script>

            <%--<script type="text/javascript" src="../../../Assets/custom/jquery-ui-1.12.1/jquery-ui.js"></script>--%>
            <script type="text/javascript" src="../../../Assets/custom/jquery-ui-1.12.1/jquery-ui.min.js"></script>

            <%--<script type="text/javascript" src="md/js/jquery-3.3.1.min.js"></script>
            <script type="text/javascript" src="md/js/popper.min.js"></script>
            <script type="text/javascript" src="md/js/bootstrap.min.js"></script>
            <script type="text/javascript" src="md/js/mdb.min.js"></script>
            <script type="text/javascript" src="md/js/addons/datatables.min.js"></script>--%>
            
            <script>
                $(document).ready(function () {
                    // datatable
                    $('table[id*="dt"]').each(function () {
                        var _this = $(this);
                        var cbSelectAll = _this.attr('data-selectCheckbox');
                        var cb = _this.find('#' + cbSelectAll);
                        
                        _this.DataTable({
                            "searching": false,
                            "ordering": false,
                            "pageLength": 25,
                            "oLanguage": { "sSearch": "Quick Search" },
                            "columnDefs": [
                                { "width": "12px", "targets": 0 },
                                { "width": "70px", "targets": 1 },
                                { "width": "30px", "targets": 2 },
                                { "width": "100px", "targets": 3 },
                                { "width": "43px", "targets": 4 },
                                { "width": "25px", "targets": 5 }
                            ],
                            "fnDrawCallback": function () {
                                cb.prop('checked', false);
                                _this.find('input[type="checkbox"]').prop('checked', false);
                            }
                        });

                        $('body').on('change', '#' + cbSelectAll, function (e) {
                            var checkboxes = _this.find('input[id*="commentCheckbox"]');
                            if (e.target.checked) checkboxes.map((i, el) => { el.checked = true });
                            else checkboxes.map((i, el) => { el.checked = false });
                        });
                    });
                    $('.dataTables_length').addClass('bs-select');

                    // date picker
                    var d = new Date();
                    var currMonth = d.getMonth();
                    var currYear = d.getFullYear();
                    var startDate = new Date(currYear, currMonth, 1);

                    $('input[id*="DatePicker"]').each(function () {
                        $(this).datepicker();
                        //if ($(this).val() == '') $(this).datepicker('setDate', startDate);
                    });

                    // text input
                    $('input[id*="Keyword"]').each(function () {
                        $(this).focusin(function () {
                            if ($(this).val() == 'Search...') $(this).val('');
                        });

                        $(this).focusout(function () {
                            if ($(this).val() == '') $(this).val('Search...');
                        });
                    });

                    $('input[id*="DatePickerStart"]').each(function () {
                        $(this).focusin(function () {
                            if ($(this).val() == 'From') $(this).val('');
                        });

                        $(this).focusout(function () {
                            if ($(this).val() == '') $(this).val('From');
                        });
                    });

                    $('input[id*="DatePickerEnd"]').each(function () {
                        $(this).focusin(function () {
                            if ($(this).val() == 'To') $(this).val('');
                        });

                        $(this).focusout(function () {
                            if ($(this).val() == '') $(this).val('To');
                        });
                    });
                });

                function SetActiveTab(tabID)
                {
                    $('#MainCurrentTab').val(tabID);

                    var allTabs = $('.sidebar-nav .nav-item a.nav-link').each(function () {
                        var _this = $(this);
                        if (_this.attr('id') == tabID) _this.attr('aria-selected', 'true').addClass('active');
                        else _this.attr('aria-selected', 'false').removeClass('active'); 
                    });

                    var tabPanes = $('.tab-content .tab-pane').each(function () {
                        var _this = $(this);
                        if (_this.attr('aria-labelledby') == tabID) _this.addClass('active');
                        else _this.removeClass('active')
                    });
                }
                
            </script>
        </form>
    </div>
    <!-- /#wrapper -->
</body>
</html>
