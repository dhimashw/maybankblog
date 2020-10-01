<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TestDashboard.aspx.cs" Inherits="Sitecore.Feature.Administrators.Sitecore.Admin.Custom.TestDashboard" %>

<%@ Register Src="~/Sitecore/Admin/UserControl/MyTask.ascx" TagPrefix="uc1" TagName="MyTask" %>
<%@ Register Src="~/Sitecore/Admin/UserControl/TestDashboardAll.ascx" TagPrefix="uc1" TagName="TestDashboardAll" %>
<%@ Register Src="~/Sitecore/Admin/UserControl/ApprovedComment.ascx" TagPrefix="uc1" TagName="ApprovedComment" %>
<%@ Register Src="~/Sitecore/Admin/UserControl/DebugDashboard.ascx" TagPrefix="uc1" TagName="DebugDashboard" %>

<!DOCTYPE HTML>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="shortcut icon" type="image/png" href="/assets/img/favicon.png" />
    <link href="../../../Assets/Styles/bootstrap.min.css" rel="stylesheet" />
    <link href="../../../Assets/font/css/open-iconic-bootstrap.min.css" rel="stylesheet" />
    <link href="../../../Assets/Styles/style.css" rel="stylesheet" />

    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css" integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS" crossorigin="anonymous">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.3/css/all.css" integrity="sha384-UHRtZLI+pbxtHCWp1t77Bi1L4ZtiqrqD80Kn4Z8NTSRyMA2Fd33n5dQ8lWUE00s/" crossorigin="anonymous">
    <link rel="stylesheet" href="https://unpkg.com/bootstrap-table@1.14.2/dist/bootstrap-table.min.css">

    <title>Maybank Test Dashboard Application</title>

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
                        <a class="nav-link active" id="my-task" data-toggle="tab" href="#myTask" role="tab" aria-controls="myTask" aria-selected="false">My Task</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" id="bulk-upload-tab" data-toggle="tab" href="#testDashboardAll" role="tab" aria-controls="testDashboardAll" aria-selected="true">Draft</a>
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
                        <a class="nav-link" href="../../shell/sitecore/client/Applications/Launchpad" style="padding-left: unset;"><span class="oi oi-account-logout"></span>Return to Launchpad</a>
                    </li>
                </ul>
            </div>
            <!-- /#sidebar-wrapper -->

            <!-- Page Content -->
            <div id="page-content-wrapper">
                <div class="tab-content">
                    <div class="tab-pane active" id="myTask" role="tabpanel" aria-labelledby="my-task" runat="server">
                        <uc1:MyTask runat="server" ID="MyTaskUC" />
                    </div>
                    <div class="tab-pane" id="testDashboardAll" role="tabpanel" aria-labelledby="bulk-upload-tab" runat="server">
                        <uc1:TestDashboardAll runat="server" ID="TestDashboardAllUC" />
                    </div>
                    <div class="tab-pane" id="approvedComment" role="tabpanel" aria-labelledby="approved-comment">
                        <uc1:ApprovedComment runat="server" ID="ApprovedCommentUC" />
                    </div>
                    <div class="tab-pane" id="debugDashboard" role="tabpanel" aria-labelledby="debug-dashboard">
                        <uc1:DebugDashboard runat="server" ID="DebugDashboardUC" />
                    </div>



                </div>


            </div>
            <!-- /#page-content-wrapper -->

            <script src="../../../Assets/js/jquery-3.3.1.min.js"></script>
            <%--<script src="../../../Assets/Scripts/popper.min.js"></script>--%>
            <%--<script src="../../../Assets/Scripts/bootstrap.min.js"></script>--%>
            <script src="../../../Assets/Scripts/bootstrap.bundle.min.js"></script>

            <!-- Menu Toggle Script -->




            <%--<script src="https://code.jquery.com/jquery-3.3.1.min.js" integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8=" crossorigin="anonymous"></script>--%>
            <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js" integrity="sha384-wHAiFfRlMFy6i5SRaxvfOCifBUQy1xHdJ/yoi7FRNXMRBu5WHdZYu1hA6ZOblgut" crossorigin="anonymous"></script>
            <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js" integrity="sha384-B0UglyR+jN6CkvvICOB2joaf5I4l3gm9GU6Hc1og6Ls7i6U/mkkaduKaBhlAXv9k" crossorigin="anonymous"></script>
            <script src="https://unpkg.com/bootstrap-table@1.14.2/dist/bootstrap-table.min.js"></script>


            <script>
                $(document).ready(function () {
                    var checkboxSelectAll = $('#unSelectAll');
                    var checkboxes = $('input[id^="un-comment-"]');
                    var uid = $.map(checkboxes, function (el) { return el.id.replace('un-comment-', '') });                    
                    $.ajax({
                        url: '/api/sitecore/Blog/GetAllNotApprovedComment',
                        type: 'post',
                        error: function (xhr, textStatus, errorThrown) {
                            console.log(xhr);
                            //console.log(textStatus);
                            //console.log(errorThrown);                           

                        },
                        success: function (result) {
                            //alert(result.length);
                            $.each(result.Item2, function (index, value) {

                                if (result.Item2.length > 0) {
                                    var jDate = new Date(parseInt(value.CommentDate.substr(6)));
                                    $('.no-records-found').remove();
                                    $('#table-comment tbody').append(
                                        '<tr>'
                                        + '<td>'
                                        + '<div class="custom-control custom-checkbox">'
                                        + '<input type="checkbox" class="custom-control-input" id="' + value.ID + '" name="checkedData" value="' + value.ID + '">'
                                        + '<label class="custom-control-label" for="' + value.ID + '">' + value.ID + '</label>'
                                        + '</div>'
                                        + '</td>'
                                        + '<td>' + value.PageDisplayName + '</td>'
                                        + '<td>' + value.Username + '</td>'
                                        + '<td>' + value.Comment + '</td>'
                                        + '<td>' + jDate + '</td>'
                                        + '<td>' + value.isApproved + '</td>'
                                        + '</tr>'
                                    )
                                }

                          
                            })
                        }

                    });


                    $('body').on('change', '#unSelectAll', function (e) {
                        if (e.target.checked) checkboxes.map((i, el) => { el.checked = true });
                        else checkboxes.map((i, el) => { el.checked = false });
                    });

                    //$('#TestDashboardAlls_BtnDisapprove').on('click', function () {
                    //    var checkedCheckboxes = $('input[id^="comment-"]:checked');
                    //    var uids = $.map(checkedCheckboxes, function (el) { return el.id.replace('comment-', '') });
                    //    $('#UID').val = uids;
                    //    //$('#UID').val = '9B8210C7-5E47-4554-A1D3-F2F3E676C84D';
                    //    console.log($('#UID').val);
                    //});

                    $("#checkAll").click(function () {
                        //$('input:checkbox').not(this).prop('checked', this.checked);
                        $('#table-comment').find('tr:not(:hidden) input:checkbox').not(this).prop('checked', this.checked);
                    });
                    $("button").click(function () {
                        var favorite = [];
                        $.each($("input[name='checkedData']:checked"), function () {
                            favorite.push($(this).val());
                        });
                        alert("ID : " + favorite.join(", "));
                    });

                    //$('#table-comment').each(function () {
                    //    var currentPage = 0;
                    //    var numPerPage = 2;
                    //    var $table = $(this);
                    //    $table.bind('repaginate', function () {
                    //        $table.find('tbody tr').hide().slice(currentPage * numPerPage, (currentPage + 1) * numPerPage).show();
                    //    });
                    //    $table.trigger('repaginate');
                    //    var numRows = $table.find('tbody tr').length;
                    //    var numPages = Math.ceil(numRows / numPerPage);
                    //    var $pager = $('<div class="pager"></div>');
                    //    for (var page = 0; page < numPages; page++) {
                    //        $('<span class="page-number"></span>').text(page + 1).bind('click', {
                    //            newPage: page
                    //        }, function (event) {
                    //            currentPage = event.data['newPage'];
                    //            $table.trigger('repaginate');
                    //            $('#table-comment').find('tr input:checkbox').not(this).prop('checked', false);
                    //            $(this).addClass('active').siblings().removeClass('active');
                    //        }).appendTo($pager).addClass('clickable');
                    //    }
                    //    $pager.insertAfter($table).find('span.page-number:first').addClass('active');
                    //});        

                    makePager = function (page) {
                        var show_per_page = 2;
                        var number_of_items = $('#table-comment tbody tr').length;
                        var number_of_pages = Math.ceil(number_of_items / show_per_page);
                        var number_of_pages_todisplay = 5;
                        var navigation_html = '';   
                        var current_page = page;
                        var current_link = (number_of_pages_todisplay >= current_page ? 1 : number_of_pages_todisplay + 1);
                        if (current_page > 1)
                            current_link = current_page;
                        if (current_link != 1) navigation_html += "<a class='nextbutton' href=\"javascript:first();\">« Start&nbsp;</a>&nbsp;<a class='nextbutton' href=\"javascript:previous();\">« Prev&nbsp;</a>&nbsp;";
                        if (current_link == number_of_pages - 1) current_link = current_link - 3;
                        else if (current_link == number_of_pages) current_link = current_link - 4;
                        else if (current_link > 2) current_link = current_link - 2;
                        else current_link = 1;
                        var pages = number_of_pages_todisplay;
                        while (pages != 0) {
                            if (number_of_pages < current_link) { break; }
                            if (current_link >= 1)
                                navigation_html += "<a class='" + ((current_link == current_page) ? "currentPageButton" : "numericButton") + "' href=\"javascript:showPage(" + current_link + ")\" longdesc='" + current_link + "'>" + (current_link) + "</a>&nbsp;";
                            current_link++;
                            pages--;
                        }
                        if (number_of_pages > current_page) {
                            navigation_html += "<a class='nextbutton' href=\"javascript:next()\">Next »</a>&nbsp;<a class='nextbutton' href=\"javascript:last(" + number_of_pages + ");\">Last »</a>";
                        }
                        $('#page_navigation').html(navigation_html);
                        $('#table-comment').find('tr input:checkbox').not(this).prop('checked', false);
                    }
                    var pageSize = 2;
                    showPage = function (page) {
                        $("#table-comment tbody tr").hide();
                        $('#current_page').val(page);
                        $("#table-comment tbody tr").each(function (n) {
                            if (n >= pageSize * (page - 1) && n < pageSize * page)
                                $(this).show();
                        });
                        makePager(page);
                    }
                    showPage(1);
                    next = function () {
                        new_page = parseInt($('#current_page').val()) + 1;
                        showPage(new_page);
                        $('#table-comment').find('tr input:checkbox').not(this).prop('checked', false);
                    }
                    last = function (number_of_pages) {
                        new_page = number_of_pages;
                        $('#current_page').val(new_page);
                        showPage(new_page);
                        $('#table-comment').find('tr input:checkbox').not(this).prop('checked', false);
                    }
                    first = function () {
                        var new_page = "1";
                        $('#current_page').val(new_page);
                        showPage(new_page);
                        $('#table-comment').find('tr input:checkbox').not(this).prop('checked', false);
                    }
                    previous = function () {
                        new_page = parseInt($('#current_page').val()) - 1;
                        $('#current_page').val(new_page);
                        showPage(new_page);
                        $('#table-comment').find('tr input:checkbox').not(this).prop('checked', false);
                    }                   

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
