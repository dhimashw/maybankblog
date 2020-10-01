<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BulkUploadKPR.aspx.cs" Inherits="Sitecore.Feature.Administrators.Sitecore.Admin.Custom.BulkUploadKPR" %>

<%@ Register Src="~/Sitecore/Admin/UserControl/BulkUploadAll.ascx" TagPrefix="uc1" TagName="BulkUploadAll" %>
<%--<%@ Register Src="~/Sitecore/Admin/UserControl/BulkUploadAllLog.ascx" TagPrefix="uc1" TagName="BulkUploadAllLog" %>--%>



<!DOCTYPE HTML>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="shortcut icon" type="image/png" href="/assets/img/favicon.png" />
    <link href="../../../Assets/Styles/bootstrap.min.css" rel="stylesheet" />
    <link href="../../../Assets/font/css/open-iconic-bootstrap.min.css" rel="stylesheet" />
    <link href="../../../Assets/Styles/style.css" rel="stylesheet" />
    <title>Maybank Bulk Upload Application</title>
    <meta http-equiv="Cache-control" content="no-cache" />
</head>
<body>
    <div id="wrapper" class="static">
        <form id="form1" runat="server">
            <!-- Sidebar -->
            <div id="sidebar-wrapper">
                <ul class="nav sidebar-nav flex-column" id="myTab" role="tablist">
                    <li class="nav-item sidebar-brand">
                        <a href="#"></a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link active" id="bulk-upload-tab" data-toggle="tab" href="#bulkUploadAll" role="tab" aria-controls="bulkUploadAll" aria-selected="true">Bulk Upload</a>
                    </li>
                    <%--<li class="nav-item">
                        <a class="nav-link active" id="log-bulk-upload-tab" data-toggle="tab" href="#bulkUploadAllLog" role="tab" aria-controls="bulkUploadAllLog" aria-selected="true">Bulk Upload Logs</a>
                    </li>--%>
                    <li class="nav-item">
                        <a class="nav-link" id="example-tab" data-toggle="tab" href="#example" role="tab" aria-controls="example" aria-selected="false">Example Tab</a>
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
                    <div class="tab-pane active" id="bulkUploadAll" role="tabpanel" aria-labelledby="bulk-upload-tab" runat="server">
                        <uc1:BulkUploadAll runat="server" id="BulkUploadAlls" />
                    </div>
                    <%--<div class="tab-pane" id="bulkUploadAllLog" role="tabpanel" aria-labelledby="log-bulk-upload-tab">
                        <uc1:BulkUploadAllLog runat="server" id="BulkUploadAllLogs" />
                    </div>--%>
                    <div class="tab-pane" id="example" role="tabpanel" aria-labelledby="example-tab">
                        <div class="container-fluid">
                            <h1>Example Content</h1>
                            <p>This template has a responsive menu toggling system. The menu will appear collapsed on smaller screens, and will appear non-collapsed on larger screens. When toggled using the button below, the menu will appear/disappear. On small screens, the page content will be pushed off canvas.</p>
                            <p>Make sure to keep all page content within the <code>#page-content-wrapper</code>.</p>
                        </div>
                    </div>
                </div>
            </div>
            <!-- /#page-content-wrapper -->

            <script src="../../../Assets/Scripts/jquery-3.3.1.min.js"></script>
            <%--<script src="../../../Assets/Scripts/popper.min.js"></script>--%>
            <%--<script src="../../../Assets/Scripts/bootstrap.min.js"></script>--%>
            <script src="../../../Assets/Scripts/bootstrap.bundle.min.js"></script>

            <!-- Menu Toggle Script -->
            <%--<script>
        $("#menu-toggle").click(function (e) {
            e.preventDefault();
            $("#wrapper").toggleClass("toggled");
        });
    </script>--%>

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
                    //setTimeout(function () {
                    //    window.location.reload(true);
                    //}, 5000)
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