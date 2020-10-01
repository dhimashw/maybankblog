using System;
using System.IO;
using System.Collections.Generic;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using Sitecore.Feature.Library.Helpers;
using Sitecore.Feature.Library.Helper;
using System.Threading;
using Sitecore.Security.Accounts;

namespace Sitecore.Feature.Administrators.Sitecore.Admin.UserControl
{
    public partial class BulkUploadAll : System.Web.UI.UserControl
    {
        DataTable Data;
        static string ServerMapPath;
        public bool FileExist;

        public static User GetUser(string domainName, string userName)
        {
            if (User.Exists(domainName + @"\" + userName))
            {
                return User.FromName(domainName + @"\" + userName, true);
            }
            return null;
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            //var userName = User.Current.Name;
            //var account = Account.FromName(userName, AccountType.User);

            ////Sitecore.Security.Accounts.User user = GetUser("yourdomain", "youruserName");
            //var user = User.Current;

            //if (user == null) return;

            //var rolesList = user.Roles.ToList();

            //foreach (var role in rolesList)
            //{
            //    var roleName = role.DisplayName;
            //    var roleDomain = role.Domain;
            //    // you have all the properties of a role in role object
            //    if (roleName == "Maybank Product")
            //    {
            //        panelBranchATMLocation.Visible = true;
            //        panelBusiness.Visible = true;
            //        panelKPR.Visible = true;
            //        panelKPM.Visible = true;
            //        panelCreditCard.Visible = true;
            //        panelVoucherCode.Visible = true;
            //    }
            //}

            if (!IsPostBack)
            {
                LastUploadBranchReguler.Text = " Last upload : " + GetLastUpload("Template Branch");
                LastUploadBranchPremier.Text = " Last upload : " + GetLastUpload("Template Branch Premier");
                LastUploadBranchSyariah.Text = " Last upload : " + GetLastUpload("Template Branch Syariah");
                LastUploadBranchWeekendBanking.Text = " Last upload : " + GetLastUpload("Template Branch Weekend Banking");
                LastUploadATM.Text = " Last upload : " + GetLastUpload("Template ATM");
                LastUploadPerumahan.Text = " Last upload : " + GetLastUpload("Perumahan");
                LastUploadReksadana.Text = " Last upload : " + GetLastUpload("Reksadana");
                LastUploadListMobil.Text = " Last upload : " + GetLastUpload("Cars");
                LastUploadListMotor.Text = " Last upload : " + GetLastUpload("MotorCycle");
                LastUploadRateADDM.Text = " Last upload : " + GetLastUpload("Rate ADDM");
                LastUploadRateExtentionInsurance.Text = " Last upload : " + GetLastUpload("Rate Extention Insurance");
                LastUploadInsuranceAllRisk.Text = " Last upload : " + GetLastUpload("All Risk");
                LastUploadTJHCoverage.Text = " Last upload : " + GetLastUpload("TJH Coverage");
                LastUploadKodePos.Text = " Last upload : " + GetLastUpload("Kodepos");
                LastUploadBidangUsaha.Text = " Last upload : " + GetLastUpload("BidangUsaha");
                LastUploadJenisPekerjaan.Text = " Last upload : " + GetLastUpload("JenisPekerjaan");
                LastUploadVoucherCode.Text = " Last upload : " + GetLastUpload("Vouchers");
                LastUploadBusinessVoucherCode.Text = " Last upload : " + GetLastUpload("BusinessVouchers");
                LastUploadBusinessVoucherCodeNote.Text = " Last upload : " + GetLastUpload("BusinessVouchers");
                LastUploadCreditCardVoucherCode.Text = " Last upload : " + GetLastUpload("CreditCardVouchers");
                LastUploadCreditCardVoucherCodeNote.Text = " Last upload : " + GetLastUpload("CreditCardVouchers");
                LastUploadMortgageMultifunctionVoucherCode.Text = " Last upload : " + GetLastUpload("MortgageMultifunctionVouchers");
                LastUploadMortgageMultifunctionVoucherCodeNote.Text = " Last upload : " + GetLastUpload("MortgageMultifunctionVouchers");
                LastUploadLoanVoucherCode.Text = " Last upload : " + GetLastUpload("LoanVouchers");
                LastUploadLoanVoucherCodeNote.Text = " Last upload : " + GetLastUpload("LoanVouchers");
                LastUploadSavingVoucherCode.Text = " Last upload : " + GetLastUpload("SavingVouchers");
                LastUploadSavingVoucherCodeNote.Text = " Last upload : " + GetLastUpload("SavingVouchers");
                LastUploadSyariahVoucherCode.Text = " Last upload : " + GetLastUpload("SyariahVouchers");
                LastUploadSyariahVoucherCodeNote.Text = " Last upload : " + GetLastUpload("SyariahVouchers");

                fuBulkUpload.Attributes["onchange"] = "ChangeChooseLabel(this.value)";

                // BRANCH & ATM LOCATION
                fuBulkUploadBranchReguler.Attributes["onchange"] = "ChangeChooseObject(this)";
                fuBulkUploadBranchPremier.Attributes["onchange"] = "ChangeChooseObject(this)";
                fuBulkUploadBranchSyariah.Attributes["onchange"] = "ChangeChooseObject(this)";
                fuBulkUploadBranchWeekendBanking.Attributes["onchange"] = "ChangeChooseObject(this)";
                fuBulkUploadATM.Attributes["onchange"] = "ChangeChooseObject(this)";

                // KPR
                fuBulkUploadPerumahan.Attributes["onchange"] = "ChangeChooseObject(this)";

                // BUSINESS
                fuBulkUploadReksadana.Attributes["onchange"] = "ChangeChooseObject(this)";

                // KPM MOBIL & MOTOR
                fuBulkUploadListMobil.Attributes["onchange"] = "ChangeChooseObject(this)";
                fuBulkUploadListMotor.Attributes["onchange"] = "ChangeChooseObject(this)";
                fuBulkUploadRateADDM.Attributes["onchange"] = "ChangeChooseObject(this)";
                fuBulkUploadRateExtentionInsurance.Attributes["onchange"] = "ChangeChooseObject(this)";
                fuBulkUploadInsuranceAllRisk.Attributes["onchange"] = "ChangeChooseObject(this)";
                fuBulkUploadTJHCoverage.Attributes["onchange"] = "ChangeChooseObject(this)";

                // CREDIT CARD
                fuBulkUploadKodePos.Attributes["onchange"] = "ChangeChooseObject(this)";
                fuBulkUploadBidangUsaha.Attributes["onchange"] = "ChangeChooseObject(this)";
                fuBulkUploadJenisPekerjaan.Attributes["onchange"] = "ChangeChooseObject(this)";

                // VOUCHER CODE(VOUCHERS)
                fuBulkUploadVoucherCode.Attributes["onchange"] = "ChangeChooseObject(this)";
                fuBulkUploadBusinessVoucherCode.Attributes["onchange"] = "ChangeChooseObject(this)";
                fuBulkUploadLoanVoucherCode.Attributes["onchange"] = "ChangeChooseObject(this)";
                fuBulkUploadMortgageMultifunctionVoucherCode.Attributes["onchange"] = "ChangeChooseObject(this)";
                fuBulkUploadCreditCardVoucherCode.Attributes["onchange"] = "ChangeChooseObject(this)";
                fuBulkUploadSavingVoucherCode.Attributes["onchange"] = "ChangeChooseObject(this)";
                fuBulkUploadSyariahVoucherCode.Attributes["onchange"] = "ChangeChooseObject(this)";

                #region Progress Bar
                string script = "$(document).ready(function () { $('[id*=BulkUpload_btnUpload]').click(); });";
                Page.ClientScript.RegisterStartupScript(this.GetType(), "load", script, true);
                #endregion
            }
        }

        protected void btnUpload_Click(object sender, EventArgs e)
        {
            // Delay for Progress Bar
            //Thread.Sleep(5000);

            #region Add Item Programmatically
            DirectoryInfo dir = null;
            string extension, fileName = string.Empty;
            string path = string.Empty;
            string tableName = string.Empty;
            string getError = string.Empty;
            DataSet dataSet = new DataSet();

            //string tempMaxFile = (new Library.Helpers.Configuration()).MaxFileSize;
            //string tempMaxFile = "30";
            //int maxFile = 0;
            //try
            //{
            //    maxFile = int.Parse(tempMaxFile);
            //}
            //catch
            //{ maxFile = 30; }
            try
            {
                if (fuBulkUpload.HasFile)
                {
                    string folderName = Guid.NewGuid().ToString();

                    string folderpath = Server.MapPath("~/sitecore/admin/template/" + folderName + "/");
                    string[] templatePathFiles = Directory.GetFiles(Server.MapPath("~/sitecore/admin/template/"), "*.xml", SearchOption.TopDirectoryOnly);
                    List<string> templateFiles = new List<string>();
                    foreach (string template in templatePathFiles)
                    {
                        templateFiles.Add(Path.GetFileName(template).Substring(0, Path.GetFileName(template).LastIndexOf(".")));
                    }
                    ServerMapPath = folderpath;
                    dir = Directory.CreateDirectory(folderpath);
                    extension = Path.GetExtension(fuBulkUpload.FileName);
                    fileName = fuBulkUpload.FileName.Substring(0, fuBulkUpload.FileName.LastIndexOf('.'));
                    //if (fuBulkUpload.PostedFile.ContentLength > (maxFile * 1024))
                    //    throw new Exception(string.Format("File size more than {0}MB, please upload file less than {1}MB.", maxFile, maxFile));
                    if (extension != ".csv")
                        throw new FormatException("Wrong File Format.");
                    if (!templateFiles.Contains(fileName))
                    {
                        throw new Exception("Wrong File Name. No template name equals with this file name");
                    }
                    path = folderpath + fuBulkUpload.FileName;
                    fuBulkUpload.SaveAs(path);

                    Data = LibraryHelpers.ConvertCSVToTable(path);
                    UploadHelpers.MappedDataToDB(Data, folderpath.Replace(folderName, "") + "/" + fileName + ".xml", fileName);
                    getError = UploadHelpers.GetErrorMessage();

                    if (getError == "ERROR")
                    {
                        litWarningError.Text = "Database is not Updated. Please make sure the Data is Valid.";
                        Page.ClientScript.RegisterOnSubmitStatement(GetType(), "loadAlertWarning", "AlertWarningBottom()");
                    }
                    else
                    {
                        Page.ClientScript.RegisterOnSubmitStatement(GetType(), "loadAlertSuccess", "AlertSuccessBottom()");
                    }

                    File.Delete(path);
                }
            }
            catch (FormatException fx)
            {
                litAlertError.Text = fx.Message;
                Page.ClientScript.RegisterStartupScript(GetType(), "loadAlertFailed", "AlertFailedBottom()", true);
            }
            catch (Exception ex)
            {
                litAlertError.Text = " " + ex.Message;
                Page.ClientScript.RegisterStartupScript(GetType(), "loadAlertFailed", "AlertFailedBottom()", true);
            }
            finally
            {
                if (!string.IsNullOrEmpty(path))
                    File.Delete(path);
                dir.Delete();
            }
            #endregion
        }

        protected void btnXMLUpload_Click(object sender, EventArgs e)
        {
            if (fuXML.HasFile)
            {
                try
                {
                    string dirPath = Server.MapPath("~/sitecore/admin/template");
                    if (!Directory.Exists(dirPath))
                    {
                        Directory.CreateDirectory(dirPath);
                    }

                    var filePath = Path.Combine(dirPath, fuXML.FileName);

                    fuXML.SaveAs(filePath);
                    Page.ClientScript.RegisterStartupScript(GetType(), "loadAlertXMLSuccess", "AlertXMLSuccessBottom()", true);
                }
                catch (Exception)
                {

                    throw;
                }
            }
        }

        protected string GetLastUpload(string _filename)
        {
            return Library.DAL.DataAccess.GetItem(string.Format("SELECT CONVERT(VARCHAR, MAX(LogDate), 113) LogDate FROM BULKUPLOADLOGS WHERE[Filename] = '{0}' and [Status] = 'Succes'", _filename)).Replace(":000", "");
        }

        protected void UploadFile(FileUpload fuBulkUpload, string _filename)
        {
            // Delay for Progress Bar
            Thread.Sleep(5000);

            #region Add Item Programmatically
            DirectoryInfo dir = null;
            string extension, fileName = string.Empty;
            string path = string.Empty;
            string tableName = string.Empty;
            string getError = string.Empty;
            DataSet dataSet = new DataSet();
            try
            {
                if (fuBulkUpload.HasFile)
                {
                    string folderName = Guid.NewGuid().ToString();

                    string folderpath = Server.MapPath("~/sitecore/admin/template/" + folderName + "/");
                    string[] templatePathFiles = Directory.GetFiles(Server.MapPath("~/sitecore/admin/template/"), "*.xml", SearchOption.TopDirectoryOnly);
                    List<string> templateFiles = new List<string>();
                    foreach (string template in templatePathFiles)
                    {
                        templateFiles.Add(Path.GetFileName(template).Substring(0, Path.GetFileName(template).LastIndexOf(".")));
                    }
                    ServerMapPath = folderpath;
                    dir = Directory.CreateDirectory(folderpath);
                    extension = Path.GetExtension(fuBulkUpload.FileName);
                    fileName = fuBulkUpload.FileName.Substring(0, fuBulkUpload.FileName.LastIndexOf('.'));
                    //if (fuBulkUpload.PostedFile.ContentLength > (maxFile * 1024))
                    //    throw new Exception(string.Format("File size more than {0}MB, please upload file less than {1}MB.", maxFile, maxFile));
                    if (extension != ".csv")
                        throw new FormatException("Wrong File Format.");
                    if (_filename != fileName)
                    {
                        throw new Exception("Wrong File Upload. File Upload using filename " + _filename + ".csv or Try another File Upload..");
                    }
                    if (!templateFiles.Contains(fileName))
                    {
                        throw new Exception("Wrong File Name. No template name equals with this file name");
                    }
                    path = folderpath + fuBulkUpload.FileName;
                    fuBulkUpload.SaveAs(path);

                    Data = LibraryHelpers.ConvertCSVToTable(path);
                    UploadHelpers.MappedDataToDB(Data, folderpath.Replace(folderName, "") + "/" + fileName + ".xml", fileName);
                    getError = UploadHelpers.GetErrorMessage();

                    if (getError == "ERROR")
                    {
                        litWarningError.Text = "Database is not Updated. Please make sure the Data is Valid.";
                        Page.ClientScript.RegisterStartupScript(GetType(), "loadAlertWarning", "AlertWarningBottom()", true);
                    }
                    else
                    {
                        fuBulkUpload.Dispose();
                        Page.ClientScript.RegisterStartupScript(GetType(), "loadAlertSuccess", "AlertSuccessBottom()", true);
                    }

                    File.Delete(path);
                }
            }
            catch (FormatException fx)
            {
                litAlertError.Text = fx.Message;
                Page.ClientScript.RegisterStartupScript(GetType(), "loadAlertFailed", "AlertFailedBottom()", true);
            }
            catch (Exception ex)
            {
                litAlertError.Text = " " + ex.Message;
                Page.ClientScript.RegisterStartupScript(GetType(), "loadAlertFailed", "AlertFailedBottom()", true);
            }
            finally
            {
                if (!string.IsNullOrEmpty(path))
                    File.Delete(path);
                dir.Delete();
            }
            #endregion
        }

        protected void btnUploadBranchReguler_Click(object sender, EventArgs e)
        {
            UploadFile(fuBulkUploadBranchReguler, "Template Branch");
            LastUploadBranchReguler.Text = " Last upload : " + GetLastUpload("Template Branch");
        }

        protected void btnUploadBranchPremier_Click(object sender, EventArgs e)
        {
            UploadFile(fuBulkUploadBranchPremier, "Template Branch Premier");
            LastUploadBranchPremier.Text = " Last upload : " + GetLastUpload("Template Branch Premier");
        }

        protected void btnUploadBranchSyariah_Click(object sender, EventArgs e)
        {
            UploadFile(fuBulkUploadBranchSyariah, "Template Branch Syariah");
            LastUploadBranchSyariah.Text = " Last upload : " + GetLastUpload("Template Branch Syariah");
        }

        protected void btnUploadBranchWeekendBanking_Click(object sender, EventArgs e)
        {
            UploadFile(fuBulkUploadBranchWeekendBanking, "Template Branch Weekend Banking");
            LastUploadBranchWeekendBanking.Text = " Last upload : " + GetLastUpload("Template Branch Weekend Banking");
        }

        protected void btnUploadATM_Click(object sender, EventArgs e)
        {
            UploadFile(fuBulkUploadATM, "Template ATM");
            LastUploadATM.Text = " Last upload : " + GetLastUpload("Template ATM");
        }

        protected void btnUploadPerumahan_Click(object sender, EventArgs e)
        {
            UploadFile(fuBulkUploadPerumahan, "Perumahan");
            LastUploadPerumahan.Text = " Last upload : " + GetLastUpload("Perumahan");
        }

        protected void btnUploadReksadana_Click(object sender, EventArgs e)
        {
            UploadFile(fuBulkUploadReksadana, "Reksadana");
            LastUploadReksadana.Text = " Last upload : " + GetLastUpload("Reksadana");
        }

        protected void btnUploadListMobil_Click(object sender, EventArgs e)
        {
            UploadFile(fuBulkUploadListMobil, "Cars");
            LastUploadListMobil.Text = " Last upload : " + GetLastUpload("Cars");
        }

        protected void btnUploadListMotor_Click(object sender, EventArgs e)
        {
            UploadFile(fuBulkUploadListMotor, "MotorCycle");
            LastUploadListMotor.Text = " Last upload : " + GetLastUpload("MotorCycle");
        }

        protected void btnUploadRateADDM_Click(object sender, EventArgs e)
        {
            UploadFile(fuBulkUploadRateADDM, "Rate ADDM");
            LastUploadRateADDM.Text = " Last upload : " + GetLastUpload("Rate ADDM");
        }

        protected void btnUploadRateExtentionInsurance_Click(object sender, EventArgs e)
        {
            UploadFile(fuBulkUploadRateExtentionInsurance, "Rate Extention Insurance");
            LastUploadRateExtentionInsurance.Text = " Last upload : " + GetLastUpload("Rate Extention Insurance");
        }

        protected void btnUploadInsuranceAllRisk_Click(object sender, EventArgs e)
        {
            UploadFile(fuBulkUploadInsuranceAllRisk, "All Risk");
            LastUploadInsuranceAllRisk.Text = " Last upload : " + GetLastUpload("All Risk");
        }

        protected void btnUploadTJHCoverage_Click(object sender, EventArgs e)
        {
            UploadFile(fuBulkUploadTJHCoverage, "TJH Coverage");
            LastUploadTJHCoverage.Text = " Last upload : " + GetLastUpload("TJH Coverage");
        }

        protected void btnUploadKodePos_Click(object sender, EventArgs e)
        {
            UploadFile(fuBulkUploadKodePos, "Kodepos");
            LastUploadKodePos.Text = " Last upload : " + GetLastUpload("Kodepos");
        }

        protected void btnUploadBidangUsaha_Click(object sender, EventArgs e)
        {
            UploadFile(fuBulkUploadBidangUsaha, "BidangUsaha");
            LastUploadBidangUsaha.Text = " Last upload : " + GetLastUpload("BidangUsaha");
        }

        protected void btnUploadJenisPekerjaan_Click(object sender, EventArgs e)
        {
            UploadFile(fuBulkUploadJenisPekerjaan, "JenisPekerjaan");
            LastUploadJenisPekerjaan.Text = " Last upload : " + GetLastUpload("JenisPekerjaan");
        }

        protected void btnUploadVoucherCode_Click(object sender, EventArgs e)
        {
            UploadFile(fuBulkUploadVoucherCode, "Vouchers");
            LastUploadVoucherCode.Text = " Last upload : " + GetLastUpload("Vouchers");
        }

        protected void btnUploadBusinessVoucherCode_Click(object sender, EventArgs e)
        {
            UploadFile(fuBulkUploadBusinessVoucherCode, "BusinessVouchers");
            LastUploadBusinessVoucherCode.Text = " Last upload : " + GetLastUpload("BusinessVouchers");
            LastUploadBusinessVoucherCodeNote.Text = " Last upload : " + GetLastUpload("BusinessVouchers");
        }

        protected void btnUploadCreditCardVoucherCode_Click(object sender, EventArgs e)
        {
            UploadFile(fuBulkUploadCreditCardVoucherCode, "CreditCardVouchers");
            LastUploadCreditCardVoucherCode.Text = " Last upload : " + GetLastUpload("CreditCardVouchers");
            LastUploadCreditCardVoucherCodeNote.Text = " Last upload : " + GetLastUpload("CreditCardVouchers");
        }

        protected void btnUploadLoanVoucherCode_Click(object sender, EventArgs e)
        {
            UploadFile(fuBulkUploadLoanVoucherCode, "LoanVouchers");
            LastUploadLoanVoucherCode.Text = " Last upload : " + GetLastUpload("LoanVouchers");
            LastUploadLoanVoucherCodeNote.Text = " Last upload : " + GetLastUpload("LoanVouchers");
        }

        protected void btnUploadMortgageMultifunctionVoucherCode_Click(object sender, EventArgs e)
        {
            UploadFile(fuBulkUploadMortgageMultifunctionVoucherCode, "MortgageMultifunctionVouchers");
            LastUploadMortgageMultifunctionVoucherCode.Text = " Last upload : " + GetLastUpload("MortgageMultifunctionVouchers");
            LastUploadMortgageMultifunctionVoucherCodeNote.Text = " Last upload : " + GetLastUpload("MortgageMultifunctionVouchers");
        }

        protected void btnUploadSavingVoucherCode_Click(object sender, EventArgs e)
        {
            UploadFile(fuBulkUploadSavingVoucherCode, "SavingVouchers");
            LastUploadSavingVoucherCode.Text = " Last upload : " + GetLastUpload("SavingVouchers");
            LastUploadSavingVoucherCodeNote.Text = " Last upload : " + GetLastUpload("SavingVouchers");
        }

        protected void btnUploadSyariahVoucherCode_Click(object sender, EventArgs e)
        {
            UploadFile(fuBulkUploadSyariahVoucherCode, "SyariahVouchers");
            LastUploadSyariahVoucherCode.Text = " Last upload : " + GetLastUpload("SyariahVouchers");
            LastUploadSyariahVoucherCodeNote.Text = " Last upload : " + GetLastUpload("SyariahVouchers");
        }
    }
}