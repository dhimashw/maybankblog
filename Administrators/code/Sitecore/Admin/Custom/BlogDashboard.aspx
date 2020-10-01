<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BlogDashboard.aspx.cs" Inherits="Sitecore.Feature.Administrators.Sitecore.Admin.Custom.BlogDashboard" %>

<%@ Register Src="~/Sitecore/Admin/UserControl/MyTask.ascx" TagPrefix="uc1" TagName="MyTask" %>
<%@ Register Src="~/Sitecore/Admin/UserControl/ApprovedComment.ascx" TagPrefix="uc1" TagName="ApprovedComment" %>
<%@ Register Src="~/Sitecore/Admin/UserControl/DebugDashboard.ascx" TagPrefix="uc1" TagName="DebugDashboard" %>

<!DOCTYPE HTML>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="shortcut icon" type="image/png" href="/assets/img/favicon.png" />
    <link href="../../../Assets/Styles/bootstrap.min.css" rel="stylesheet" />
    <link href="../../../Assets/font/css/open-iconic-bootstrap.min.css" rel="stylesheet" />
    <link href="../../../Assets/Styles/style.css" rel="stylesheet" />
    <title>Dashboard</title>

</head>
<body>
    <div id="wrapper" class="static">
        <form id="form1" runat="server" >
            <!-- Sidebar -->
            <div id="sidebar-wrapper">
                <ul class="nav sidebar-nav flex-column" id="myTab" role="tablist">
                    <li class="nav-item sidebar-brand">
                        <a href="#"></a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link active" id="my-task" data-toggle="tab" href="#myTask" role="tab" aria-controls="myTask" aria-selected="true">My Task</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" id="approved-comment" data-toggle="tab" href="#approvedComment" role="tab" aria-controls="approvedComment" aria-selected="false">Approved</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" id="debug-dashboard" data-toggle="tab" href="#debugDashboard" role="tab" aria-controls="debugDashboard" aria-selected="false">Debug</a>
                    </li>
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
                    <div class="tab-pane" id="approvedComment" role="tabpanel" aria-labelledby="approved-comment" runat="server">
                        <uc1:ApprovedComment runat="server" id="ApprovedCommentUC" />
                    </div>
                    <div class="tab-pane" id="debugDashboard" role="tabpanel" aria-labelledby="debug-dashboard" runat="server">
                        <uc1:DebugDashboard runat="server" id="DebugDashboardUC" />
                    </div>
                </div> 
            </div>
            <!-- /#page-content-wrapper -->

            <script src="../../../Assets/js/jquery-3.3.1.min.js"></script>
            <%--<script src="../../../Assets/Scripts/popper.min.js"></script>--%>
            <%--<script src="../../../Assets/Scripts/bootstrap.min.js"></script>--%>
            <script src="../../../Assets/Scripts/bootstrap.bundle.min.js"></script>

            <!-- Menu Toggle Script -->
            <script>
                $(document).ready(function () {
                    var uncheckboxSelectAll = $('#unSelectAll');
                    var uncheckboxes = $('#tbody1 input[type="checkbox"]');
                    //console.dir(uncheckboxes);

                    $('body').on('change', '#unSelectAll', function (e) {
                        //alert('changes');
                        if (e.target.checked) uncheckboxes.map((i, el) => { el.checked = true });
                        else uncheckboxes.map((i, el) => { el.checked = false });
                    });

                    var uncheckboxSelectAll2 = $('#appSelectAll');
                    var uncheckboxes2 = $('#tbody2 input[type="checkbox"]');
                    //console.dir(uncheckboxes2);

                    $('body').on('change', '#appSelectAll', function (e) {
                        //alert('changes2');
                        if (e.target.checked) uncheckboxes2.map((i, el) => { el.checked = true });
                        else uncheckboxes2.map((i, el) => { el.checked = false });
                    });
                });
            </script>

            <!-- #region File Upload XML -->
            <script>
                function Upload() {
                    var btn = $('#hideButton');
                    btn.click();
                }
            </script>

            <script>
                $(function () {
                    var fileUploadXml = $('#fuXML');
                    var btnUploadXml = $('#btnXMLUpload');

                    btnUploadXml.click(function () {
                        fileUploadXml.click();
                    });

                    fileUploadXml.change(function () {
                        Upload();
                    });
                });
            </script>
            <!-- #endregion -->

            <!-- #region Change Choose Label -->
            <script>
                function ChangeChooseLabel(fileName) {
                    var newFileName = fileName.replace(/C:\\fakepath\\/i, '')
                    if (fileName != '') {
                        $('#lblChoose').html(newFileName);
                        $('#BulkUploadAlls_btnUpload').attr('disabled', false);
                    }
                    else {
                        $('#lblChoose').html('No File Choosen..');
                        $('#BulkUploadAlls_btnUpload').attr('disabled', true);
                    }
                }

                function ChangeChooseObject(obj) {
                    var newFileName = obj.value.replace(/C:\\fakepath\\/i, '')
                    var container = $(obj).closest('div[class*="input-group"]');
                    var labelText = $('label', container).html();

                    if (obj.value != '') {
                        $('label', container).html(newFileName);
                        $('input[type="submit"]', container).attr('disabled', false);
                    }
                    else {
                        $('label', container).html(labelText);
                        $('input[type="submit"]', container).attr('disabled', true);
                    }
                }
            </script>
            <!-- #endregion -->

            <!-- #region Progress Bar -->
            <script type="text/javascript">
                function ShowProgress() {
                    setTimeout(function () {
                        var max = 100;

                        $('.progress-bar').animate(
                            {
                                width: max + '%'
                            }, 4000);
                    }, 200);
                }
                $('form').on("submit", function () {
                    ShowProgress();
                });
            </script>
            <!-- #endregion -->

            <!-- #region Format Exception Popover -->
            <script>
                function ShowFormatExceptionPopup() {
                    $('.custom-file').popover({
                        animation: true,
                        placement: 'top',
                        content: 'Great'
                    });

                    $('.custom-file').popover('show');
                }
            </script>
            <!-- #endregion -->

            <script>
                $('').click(function () {
                })
            </script>

            <!-- #region Custom Alert -->
            <script>
                function AlertSuccessBottom() {
                    $(".alert-success.alert-bottom").not("#alertXML").show('slow');
                    setTimeout(function () {
                        $(".alert-success.alert-bottom").hide('slow');
                    }, 2000);
                    setTimeout(function () {
                        window.location.reload(true);
                    }, 5000)
                }

                function AlertWarningBottom() {
                    $(".alert-warning.alert-bottom").not("#alertXML").show('slow');
                    setTimeout(function () {
                        $(".alert-success.alert-bottom").hide('slow');
                    }, 2000);
                }

                function AlertXMLSuccessBottom() {
                    $("#alertXML").show('slow');
                    setTimeout(function () {
                        $(".alert-success.alert-bottom").hide('slow');
                    }, 2000);
                    setTimeout(function () {
                        window.location.reload(true);
                    }, 5000)
                }

                function AlertFailedBottom() {
                    $(".alert-danger.alert-bottom").show('slow');
                    setTimeout(function () {
                        $(".alert-danger.alert-bottom").hide('slow');
                    }, 5000);
                }
            </script>
            <!-- #endregion -->

            <!-- #region Dialog Box File Exists Checker -->
            <%--         <script>
                $(function () {
                    $("#dialog-confirm").dialog({
                        resizable: false,
                        height: "auto",
                        width: 400,
                        modal: true,
                        buttons: {
                            "Replace the File": function () {
                                <%= FileExist %> = true;
                                $(this).dialog("close");
                            },
                            Cancel: function () {
                                $(this).dialog("close");
                            }
                        }
                    });
                });
            </script>--%>


            <!-- #endregion -->
        </form>
    </div>
    <!-- /#wrapper -->
</body>
</html>
