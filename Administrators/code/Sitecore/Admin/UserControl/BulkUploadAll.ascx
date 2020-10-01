<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="BulkUploadAll.ascx.cs" Inherits="Sitecore.Feature.Administrators.Sitecore.Admin.UserControl.BulkUploadAll" %>

<div class="container-fluid">
    <div class="row">
        <div class="col">
            <h1>Bulk Upload</h1>

            <div class="progress" style="height: 1px;">
                <div class="progress-bar" role="progressbar" style="width: 0%;"></div>
            </div>

            <br />

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


            <asp:Panel ID="panelBranchATMLocation" runat="server" Visible="false">
                <div class="row">
                    <div class="col-md-8">
                        <h4>BRANCH & ATM LOCATION</h4>
                    </div>
                    <div class="col-md-4">
                        <asp:FileUpload runat="server" ID="fuXML" ClientIDMode="Static" Style="display: none;" />
                        <asp:LinkButton OnClientClick="return false;" runat="server" ID="btnXMLUpload" ClientIDMode="Static" CssClass="btn btn-link float-right">
                <span class="oi oi-plus"></span> Upload XML
                        </asp:LinkButton>
                        <asp:Button runat="server" ClientIDMode="Static" ID="hideButton" Style="display: none;" OnClick="btnXMLUpload_Click" />
                    </div>
                </div>
                <div class="input-group mb-3">
                    <div class="custom-file">
                        <label class="custom-file-label" for="fuBulkUploadBranchReguler" id="lblBulkUploadBranchReguler">
                            <asp:Literal ClientIDMode="Static" ID="litBranchReguler" Text="&bull; Maybank Branch Regular |" runat="server"></asp:Literal>
                            <asp:Literal ClientIDMode="Static" ID="LastUploadBranchReguler" runat="server"></asp:Literal>
                        </label>
                        <asp:FileUpload runat="server" ClientIDMode="Static" ID="fuBulkUploadBranchReguler" CssClass="custom-file-input" />
                    </div>
                    <div class="input-group-append">
                        <asp:Button runat="server" ID="btnUploadBranchReguler" OnClick="btnUploadBranchReguler_Click" CssClass="btn btn-primary" Text="Upload" Enabled="false" />
                    </div>
                </div>

                <div class="input-group mb-3">
                    <div class="custom-file">
                        <label class="custom-file-label" for="fuBulkUploadBranchPremier" id="lblBulkUploadBranchPremier">
                            <asp:Literal ClientIDMode="Static" ID="litBranchPremier" Text="&bull; Maybank Branch Premier |" runat="server"></asp:Literal>
                            <asp:Literal ClientIDMode="Static" ID="LastUploadBranchPremier" runat="server"></asp:Literal>
                        </label>
                        <asp:FileUpload runat="server" ClientIDMode="Static" ID="fuBulkUploadBranchPremier" CssClass="custom-file-input" />
                    </div>
                    <div class="input-group-append">
                        <asp:Button runat="server" ID="btnUploadBranchPremier" OnClick="btnUploadBranchPremier_Click" CssClass="btn btn-primary" Text="Upload" Enabled="false" />
                    </div>
                </div>

                <div class="input-group mb-3">
                    <div class="custom-file">
                        <label class="custom-file-label" for="fuBulkUploadBranchSyariah" id="lblBulkUploadBranchSyariah">
                            <asp:Literal ClientIDMode="Static" ID="litBranchSyariah" Text="&bull; Maybank Branch Syariah |" runat="server"></asp:Literal>
                            <asp:Literal ClientIDMode="Static" ID="LastUploadBranchSyariah" runat="server"></asp:Literal>
                        </label>
                        <asp:FileUpload runat="server" ClientIDMode="Static" ID="fuBulkUploadBranchSyariah" CssClass="custom-file-input" />
                    </div>
                    <div class="input-group-append">
                        <asp:Button runat="server" ID="btnUploadBranchSyariah" OnClick="btnUploadBranchSyariah_Click" CssClass="btn btn-primary" Text="Upload" Enabled="false" />
                    </div>
                </div>

                <div class="input-group mb-3">
                    <div class="custom-file">
                        <label class="custom-file-label" for="fuBulkUploadBranchWeekendBanking" id="lblBulkUploadBranchWeekendBanking">
                            <asp:Literal ClientIDMode="Static" ID="litBranchWeekendBanking" Text="&bull; Maybank Branch Weekend Banking (SHS) |" runat="server"></asp:Literal>
                            <asp:Literal ClientIDMode="Static" ID="LastUploadBranchWeekendBanking" runat="server"></asp:Literal>
                        </label>
                        <asp:FileUpload runat="server" ClientIDMode="Static" ID="fuBulkUploadBranchWeekendBanking" CssClass="custom-file-input" />
                    </div>
                    <div class="input-group-append">
                        <asp:Button runat="server" ID="btnUploadBranchWeekendBanking" OnClick="btnUploadBranchWeekendBanking_Click" CssClass="btn btn-primary" Text="Upload" Enabled="false" />
                    </div>
                </div>

                <div class="input-group mb-3">
                    <div class="custom-file">
                        <label class="custom-file-label" for="fuBulkUploadATM" id="lblBulkUploadATM">
                            <asp:Literal ClientIDMode="Static" ID="litATM" Text="&bull; Maybank ATM |" runat="server"></asp:Literal>
                            <asp:Literal ClientIDMode="Static" ID="LastUploadATM" runat="server"></asp:Literal>
                        </label>
                        <asp:FileUpload runat="server" ClientIDMode="Static" ID="fuBulkUploadATM" CssClass="custom-file-input" />
                    </div>
                    <div class="input-group-append">
                        <asp:Button runat="server" ID="btnUploadATM" OnClick="btnUploadATM_Click" CssClass="btn btn-primary" Text="Upload" Enabled="false" />
                    </div>
                </div>
            </asp:Panel>

            <asp:Panel ID="panelKPR" runat="server" Visible="false">
                <div class="row">
                    <div class="col-md-8">
                        <h4>KPR</h4>
                    </div>
                    <div class="col-md-4"></div>
                </div>

                <div class="input-group mb-3">
                    <div class="custom-file">
                        <label class="custom-file-label" for="fuBulkUploadPerumahan" id="lblBulkUploadPerumahan">
                            <asp:Literal ClientIDMode="Static" ID="litPerumahan" Text="&bull; LIST PERUMAHAN |" runat="server"></asp:Literal>
                            <asp:Literal ClientIDMode="Static" ID="LastUploadPerumahan" runat="server"></asp:Literal>
                        </label>
                        <asp:FileUpload runat="server" ClientIDMode="Static" ID="fuBulkUploadPerumahan" CssClass="custom-file-input" />
                    </div>
                    <div class="input-group-append">
                        <asp:Button runat="server" ID="btnUploadPerumahan" OnClick="btnUploadPerumahan_Click" CssClass="btn btn-primary" Text="Upload" Enabled="false" />
                    </div>
                </div>
            </asp:Panel>

            <asp:Panel ID="panelBusiness" runat="server" Visible="false">
                <div class="row">
                    <div class="col-md-8">
                        <h4>BUSINESS</h4>
                    </div>
                    <div class="col-md-4"></div>
                </div>

                <div class="input-group mb-3">
                    <div class="custom-file">
                        <label class="custom-file-label" for="fuBulkUploadReksadana" id="lblBulkUploadReksadana">
                            <asp:Literal ClientIDMode="Static" ID="litReksadana" Text="&bull; LIST REKSADANA |" runat="server"></asp:Literal>
                            <asp:Literal ClientIDMode="Static" ID="LastUploadReksadana" runat="server"></asp:Literal>
                        </label>
                        <asp:FileUpload runat="server" ClientIDMode="Static" ID="fuBulkUploadReksadana" CssClass="custom-file-input" />
                    </div>
                    <div class="input-group-append">
                        <asp:Button runat="server" ID="btnUploadReksadana" OnClick="btnUploadReksadana_Click" CssClass="btn btn-primary" Text="Upload" Enabled="false" />
                    </div>
                </div>
            </asp:Panel>

            <asp:Panel ID="panelKPM" runat="server" Visible="false">
                <div class="row">
                    <div class="col-md-8">
                        <h4>KPM MOBIL & MOTOR</h4>
                    </div>
                    <div class="col-md-4"></div>
                </div>

                <div class="input-group mb-3">
                    <div class="custom-file">
                        <label class="custom-file-label" for="fuBulkUploadListMobil" id="lblBulkUploadListMobil">
                            <asp:Literal ClientIDMode="Static" ID="litListMobil" Text="&bull; LIST MOBIL - MAYBANK FINANCE |" runat="server"></asp:Literal>
                            <asp:Literal ClientIDMode="Static" ID="LastUploadListMobil" runat="server"></asp:Literal>
                        </label>
                        <asp:FileUpload runat="server" ClientIDMode="Static" ID="fuBulkUploadListMobil" CssClass="custom-file-input" />
                    </div>
                    <div class="input-group-append">
                        <asp:Button runat="server" ID="btnUploadListMobil" OnClick="btnUploadListMobil_Click" CssClass="btn btn-primary" Text="Upload" Enabled="false" />
                    </div>
                </div>

                <div class="input-group mb-3">
                    <div class="custom-file">
                        <label class="custom-file-label" for="fuBulkUploadListMotor" id="lblBulkUploadListMotor">
                            <asp:Literal ClientIDMode="Static" ID="litListMotor" Text="&bull; LIST MOTOR - WOM |" runat="server"></asp:Literal>
                            <asp:Literal ClientIDMode="Static" ID="LastUploadListMotor" runat="server"></asp:Literal>
                        </label>
                        <asp:FileUpload runat="server" ClientIDMode="Static" ID="fuBulkUploadListMotor" CssClass="custom-file-input" />
                    </div>
                    <div class="input-group-append">
                        <asp:Button runat="server" ID="btnUploadListMotor" OnClick="btnUploadListMotor_Click" CssClass="btn btn-primary" Text="Upload" Enabled="false" />
                    </div>
                </div>

                <div class="input-group mb-3">
                    <div class="custom-file">
                        <label class="custom-file-label" for="fuBulkUploadRateADDM" id="lblBulkUploadRateADDM">
                            <asp:Literal ClientIDMode="Static" ID="litRateADDM" Text="&bull; Rate ADDM - WOM |" runat="server"></asp:Literal>
                            <asp:Literal ClientIDMode="Static" ID="LastUploadRateADDM" runat="server"></asp:Literal>
                        </label>
                        <asp:FileUpload runat="server" ClientIDMode="Static" ID="fuBulkUploadRateADDM" CssClass="custom-file-input" />
                    </div>
                    <div class="input-group-append">
                        <asp:Button runat="server" ID="btnUploadRateADDM" OnClick="btnUploadRateADDM_Click" CssClass="btn btn-primary" Text="Upload" Enabled="false" />
                    </div>
                </div>

                <div class="input-group mb-3">
                    <div class="custom-file">
                        <label class="custom-file-label" for="fuBulkUploadRateExtentionInsurance" id="lblBulkUploadRateExtentionInsurance">
                            <asp:Literal ClientIDMode="Static" ID="litRateExtentionInsurance" Text="&bull; Rate Extention Insurance - WOM |" runat="server"></asp:Literal>
                            <asp:Literal ClientIDMode="Static" ID="LastUploadRateExtentionInsurance" runat="server"></asp:Literal>
                        </label>
                        <asp:FileUpload runat="server" ClientIDMode="Static" ID="fuBulkUploadRateExtentionInsurance" CssClass="custom-file-input" />
                    </div>
                    <div class="input-group-append">
                        <asp:Button runat="server" ID="btnUploadRateExtentionInsurance" OnClick="btnUploadRateExtentionInsurance_Click" CssClass="btn btn-primary" Text="Upload" Enabled="false" />
                    </div>
                </div>

                <div class="input-group mb-3">
                    <div class="custom-file">
                        <label class="custom-file-label" for="fuBulkUploadInsuranceAllRisk" id="lblBulkUploadInsuranceAllRisk">
                            <asp:Literal ClientIDMode="Static" ID="litInsuranceAllRisk" Text="&bull; Insurance All Risk - WOM |" runat="server"></asp:Literal>
                            <asp:Literal ClientIDMode="Static" ID="LastUploadInsuranceAllRisk" runat="server"></asp:Literal>
                        </label>
                        <asp:FileUpload runat="server" ClientIDMode="Static" ID="fuBulkUploadInsuranceAllRisk" CssClass="custom-file-input" />
                    </div>
                    <div class="input-group-append">
                        <asp:Button runat="server" ID="btnUploadInsuranceAllRisk" OnClick="btnUploadInsuranceAllRisk_Click" CssClass="btn btn-primary" Text="Upload" Enabled="false" />
                    </div>
                </div>

                <div class="input-group mb-3">
                    <div class="custom-file">
                        <label class="custom-file-label" for="fuBulkUploadTJHCoverage" id="lblBulkUploadTJHCoverage">
                            <asp:Literal ClientIDMode="Static" ID="litTJHCoverage" Text="&bull; TJH COVERAGE - WOM |" runat="server"></asp:Literal>
                            <asp:Literal ClientIDMode="Static" ID="LastUploadTJHCoverage" runat="server"></asp:Literal>
                        </label>
                        <asp:FileUpload runat="server" ClientIDMode="Static" ID="fuBulkUploadTJHCoverage" CssClass="custom-file-input" />
                    </div>
                    <div class="input-group-append">
                        <asp:Button runat="server" ID="btnUploadTJHCoverage" OnClick="btnUploadTJHCoverage_Click" CssClass="btn btn-primary" Text="Upload" Enabled="false" />
                    </div>
                </div>
            </asp:Panel>

            <asp:Panel ID="panelCreditCard" runat="server" Visible="false">
                <div class="row">
                    <div class="col-md-8">
                        <h4>CREDIT CARD</h4>
                    </div>
                    <div class="col-md-4"></div>
                </div>

                <div class="input-group mb-3">
                    <div class="custom-file">
                        <label class="custom-file-label" for="fuBulkUploadKodePos" id="lblBulkUploadKodePos">
                            <asp:Literal ClientIDMode="Static" ID="litKodePos" Text="&bull; KODE POS |" runat="server"></asp:Literal>
                            <asp:Literal ClientIDMode="Static" ID="LastUploadKodePos" runat="server"></asp:Literal>
                        </label>
                        <asp:FileUpload runat="server" ClientIDMode="Static" ID="fuBulkUploadKodePos" CssClass="custom-file-input" />
                    </div>
                    <div class="input-group-append">
                        <asp:Button runat="server" ID="btnUploadKodePos" OnClick="btnUploadKodePos_Click" CssClass="btn btn-primary" Text="Upload" Enabled="false" />
                    </div>
                </div>

                <div class="input-group mb-3">
                    <div class="custom-file">
                        <label class="custom-file-label" for="fuBulkUploadBidangUsaha" id="lblBulkUploadBidangUsaha">
                            <asp:Literal ClientIDMode="Static" ID="litBidangUsaha" Text="&bull; BIDANG USAHA |" runat="server"></asp:Literal>
                            <asp:Literal ClientIDMode="Static" ID="LastUploadBidangUsaha" runat="server"></asp:Literal>
                        </label>
                        <asp:FileUpload runat="server" ClientIDMode="Static" ID="fuBulkUploadBidangUsaha" CssClass="custom-file-input" />
                    </div>
                    <div class="input-group-append">
                        <asp:Button runat="server" ID="btnUploadBidangUsaha" OnClick="btnUploadBidangUsaha_Click" CssClass="btn btn-primary" Text="Upload" Enabled="false" />
                    </div>
                </div>

                <div class="input-group mb-3">
                    <div class="custom-file">
                        <label class="custom-file-label" for="fuBulkUploadJenisPekerjaan" id="lblBulkUploadJenisPekerjaan">
                            <asp:Literal ClientIDMode="Static" ID="litJenisPekerjaan" Text="&bull; JENIS PEKERJAAN |" runat="server"></asp:Literal>
                            <asp:Literal ClientIDMode="Static" ID="LastUploadJenisPekerjaan" runat="server"></asp:Literal>
                        </label>
                        <asp:FileUpload runat="server" ClientIDMode="Static" ID="fuBulkUploadJenisPekerjaan" CssClass="custom-file-input" />
                    </div>
                    <div class="input-group-append">
                        <asp:Button runat="server" ID="btnUploadJenisPekerjaan" OnClick="btnUploadJenisPekerjaan_Click" CssClass="btn btn-primary" Text="Upload" Enabled="false" />
                    </div>
                </div>
            </asp:Panel>

            <asp:Panel ID="panelVoucherCode" runat="server" Visible="false">
                <div class="row">
                    <div class="col-md-8">
                        <h4>VOUCHER CODE</h4>
                    </div>
                    <div class="col-md-4"></div>
                </div>
                <div class="input-group mb-3">
                    <div class="custom-file">
                        <label class="custom-file-label" for="fuBulkUploadVoucherCode" id="lblBulkUploadVoucherCode">
                            <asp:Literal ClientIDMode="Static" ID="litVoucherCode" Text="&bull; VOUCHER CODE |" runat="server"></asp:Literal>
                            <asp:Literal ClientIDMode="Static" ID="LastUploadVoucherCode" runat="server"></asp:Literal>
                        </label>
                        <asp:FileUpload runat="server" ClientIDMode="Static" ID="fuBulkUploadVoucherCode" CssClass="custom-file-input" />
                    </div>
                    <div class="input-group-append">
                        <asp:Button runat="server" ID="btnUploadVoucherCode" OnClick="btnUploadVoucherCode_Click" CssClass="btn btn-primary" Text="Upload" Enabled="false" />
                    </div>
                </div>
            </asp:Panel>

            <asp:Panel ID="panelBusinessVouchers" runat="server" Visible="false">
                <div class="row">
                    <div class="col-md-8">
                        <h4>BUSINESS VOUCHER CODE</h4>
                    </div>
                    <div class="col-md-4"></div>
                </div>
                <div class="input-group mb-3">
                    <div class="custom-file">
                        <label class="custom-file-label" for="fuBulkUploadBusinessVoucherCode" id="lblBulkUploadBusinessVoucherCode">
                            <asp:Literal ClientIDMode="Static" ID="litBusinessVoucherCode" Text="&bull; VOUCHER CODE |" runat="server"></asp:Literal>
                            <asp:Literal ClientIDMode="Static" ID="LastUploadBusinessVoucherCode" runat="server"></asp:Literal>
                        </label>
                        <asp:FileUpload runat="server" ClientIDMode="Static" ID="fuBulkUploadBusinessVoucherCode" CssClass="custom-file-input" />
                    </div>
                    <div class="input-group-append">
                        <asp:Button runat="server" ID="btnUploadBusinessVoucherCode" OnClick="btnUploadBusinessVoucherCode_Click" CssClass="btn btn-primary" Text="Upload" Enabled="false" />
                    </div>
                </div>
                <br />
                <div class="row">
                    <div class="col-md-8">
                        <p><strong>VOUCHER CODE : <asp:Literal ClientIDMode="Static" ID="LastUploadBusinessVoucherCodeNote" runat="server"></asp:Literal></strong></p>                   
                        <p>Filename: BusinessVouchers.csv</p>
                        <div>*Penamaan file tidak boleh dirubah</div>
                        <div>*Kode Voucher yang diinput tidak boleh ada spasi dan special character</div>
                        <p>&nbsp;</p>
                    </div>
                </div>
            </asp:Panel>

            <asp:Panel ID="panelCreditCardVouchers" runat="server" Visible="false">
                <div class="row">
                    <div class="col-md-8">
                        <h4>CREDIT CARD VOUCHER CODE</h4>
                    </div>
                    <div class="col-md-4"></div>
                </div>
                <div class="input-group mb-3">
                    <div class="custom-file">
                        <label class="custom-file-label" for="fuBulkUploadCreditCardVoucherCode" id="lblBulkUploadCreditCardVoucherCode">
                            <asp:Literal ClientIDMode="Static" ID="litCreditCardVoucherCode" Text="&bull; VOUCHER CODE |" runat="server"></asp:Literal>
                            <asp:Literal ClientIDMode="Static" ID="LastUploadCreditCardVoucherCode" runat="server"></asp:Literal>
                        </label>
                        <asp:FileUpload runat="server" ClientIDMode="Static" ID="fuBulkUploadCreditCardVoucherCode" CssClass="custom-file-input" />
                    </div>
                    <div class="input-group-append">
                        <asp:Button runat="server" ID="btnUploadCreditCardVoucherCode" OnClick="btnUploadCreditCardVoucherCode_Click" CssClass="btn btn-primary" Text="Upload" Enabled="false" />
                    </div>
                </div>
                <br />
                <div class="row">
                    <div class="col-md-8">
                        <p><strong>VOUCHER CODE : <asp:Literal ClientIDMode="Static" ID="LastUploadCreditCardVoucherCodeNote" runat="server"></asp:Literal></strong></p>                   
                        <p>Filename: CreditCardVouchers.csv</p>
                        <div>*Penamaan file tidak boleh dirubah</div>
                        <div>*Kode Voucher yang diinput tidak boleh ada spasi dan special character</div>       
                        <p>&nbsp;</p>
                    </div>
                </div>
            </asp:Panel>

            <asp:Panel ID="panelLoanVouchers" runat="server" Visible="false">
                <div class="row">
                    <div class="col-md-8">
                        <h4>LOAN VOUCHER CODE</h4>
                    </div>
                    <div class="col-md-4"></div>
                </div>
                <div class="input-group mb-3">
                    <div class="custom-file">
                        <label class="custom-file-label" for="fuBulkUploadLoanVoucherCode" id="lblBulkUploadLoanVoucherCode">
                            <asp:Literal ClientIDMode="Static" ID="litLoanVoucherCode" Text="&bull; VOUCHER CODE |" runat="server"></asp:Literal>
                            <asp:Literal ClientIDMode="Static" ID="LastUploadLoanVoucherCode" runat="server"></asp:Literal>
                        </label>
                        <asp:FileUpload runat="server" ClientIDMode="Static" ID="fuBulkUploadLoanVoucherCode" CssClass="custom-file-input" />
                    </div>
                    <div class="input-group-append">
                        <asp:Button runat="server" ID="btnUploadLoanVoucherCode" OnClick="btnUploadLoanVoucherCode_Click" CssClass="btn btn-primary" Text="Upload" Enabled="false" />
                    </div>
                </div>
                <br />
                <div class="row">
                    <div class="col-md-8">
                        <p><strong>VOUCHER CODE : <asp:Literal ClientIDMode="Static" ID="LastUploadLoanVoucherCodeNote" runat="server"></asp:Literal></strong></p>                   
                        <p>Filename: LoanVouchers.csv</p>
                        <div>*Penamaan file tidak boleh dirubah</div>
                        <div>*Kode Voucher yang diinput tidak boleh ada spasi dan special character</div>      
                        <p>&nbsp;</p>
                    </div>
                </div>
            </asp:Panel>

            <asp:Panel ID="panelMortgageMultifunctionVouchers" runat="server" Visible="false">
                <div class="row">
                    <div class="col-md-8">
                        <h4>MORTGAGE & MULTIFUNCTION LOAN VOUCHER CODE</h4>
                    </div>
                    <div class="col-md-4"></div>
                </div>
                <div class="input-group mb-3">
                    <div class="custom-file">
                        <label class="custom-file-label" for="fuBulkUploadMortgageMultifunctionVoucherCode" id="lblBulkUploadMortgageMultifunctionVoucherCode">
                            <asp:Literal ClientIDMode="Static" ID="litMortgageMultifunctionVoucherCode" Text="&bull; VOUCHER CODE |" runat="server"></asp:Literal>
                            <asp:Literal ClientIDMode="Static" ID="LastUploadMortgageMultifunctionVoucherCode" runat="server"></asp:Literal>
                        </label>
                        <asp:FileUpload runat="server" ClientIDMode="Static" ID="fuBulkUploadMortgageMultifunctionVoucherCode" CssClass="custom-file-input" />
                    </div>
                    <div class="input-group-append">
                        <asp:Button runat="server" ID="btnUploadMortgageMultifunctionVoucherCode" OnClick="btnUploadMortgageMultifunctionVoucherCode_Click" CssClass="btn btn-primary" Text="Upload" Enabled="false" />
                    </div>
                </div>
                <br />
                <div class="row">
                    <div class="col-md-8">
                        <p><strong>VOUCHER CODE : <asp:Literal ClientIDMode="Static" ID="LastUploadMortgageMultifunctionVoucherCodeNote" runat="server"></asp:Literal></strong></p>                   
                        <p>Filename: MortgageMultifunctionVouchers.csv</p>
                        <div>*Penamaan file tidak boleh dirubah</div>
                        <div>*Kode Voucher yang diinput tidak boleh ada spasi dan special character</div>  
                        <p>&nbsp;</p>
                    </div>
                </div>
            </asp:Panel>

            <asp:Panel ID="panelSavingVouchers" runat="server" Visible="false">
                <div class="row">
                    <div class="col-md-8">
                        <h4>SAVING VOUCHER CODE</h4>
                    </div>
                    <div class="col-md-4"></div>
                </div>
                <div class="input-group mb-3">
                    <div class="custom-file">
                        <label class="custom-file-label" for="fuBulkUploadSavingVoucherCode" id="lblBulkUploadSavingVoucherCode">
                            <asp:Literal ClientIDMode="Static" ID="litSavingVoucherCode" Text="&bull; VOUCHER CODE |" runat="server"></asp:Literal>
                            <asp:Literal ClientIDMode="Static" ID="LastUploadSavingVoucherCode" runat="server"></asp:Literal>
                        </label>
                        <asp:FileUpload runat="server" ClientIDMode="Static" ID="fuBulkUploadSavingVoucherCode" CssClass="custom-file-input" />
                    </div>
                    <div class="input-group-append">
                        <asp:Button runat="server" ID="btnUploadSavingVoucherCode" OnClick="btnUploadSavingVoucherCode_Click" CssClass="btn btn-primary" Text="Upload" Enabled="false" />
                    </div>
                </div>
                <br />
                <div class="row">
                    <div class="col-md-8">
                        <p><strong>VOUCHER CODE : <asp:Literal ClientIDMode="Static" ID="LastUploadSavingVoucherCodeNote" runat="server"></asp:Literal></strong></p>                   
                        <p>Filename: SavingVouchers.csv</p>
                        <div>*Penamaan file tidak boleh dirubah</div>
                        <div>*Kode Voucher yang diinput tidak boleh ada spasi dan special character</div> 
                        <p>&nbsp;</p>
                    </div>
                </div>
            </asp:Panel>

            <asp:Panel ID="panelSyariahVouchers" runat="server" Visible="false">
                <div class="row">
                    <div class="col-md-8">
                        <h4>SYARIAH VOUCHER CODE</h4>
                    </div>
                    <div class="col-md-4"></div>
                </div>
                <div class="input-group mb-3">
                    <div class="custom-file">
                        <label class="custom-file-label" for="fuBulkUploadSyariahVoucherCode" id="lblBulkUploadSyariahVoucherCode">
                            <asp:Literal ClientIDMode="Static" ID="litSyariahVoucherCode" Text="&bull; VOUCHER CODE |" runat="server"></asp:Literal>
                            <asp:Literal ClientIDMode="Static" ID="LastUploadSyariahVoucherCode" runat="server"></asp:Literal>
                        </label>
                        <asp:FileUpload runat="server" ClientIDMode="Static" ID="fuBulkUploadSyariahVoucherCode" CssClass="custom-file-input" />
                    </div>
                    <div class="input-group-append">
                        <asp:Button runat="server" ID="btnUploadSyariahVoucherCode" OnClick="btnUploadSyariahVoucherCode_Click" CssClass="btn btn-primary" Text="Upload" Enabled="false" />
                    </div>
                </div>
                <br />
                <div class="row">
                    <div class="col-md-8">
                        <p><strong>VOUCHER CODE : <asp:Literal ClientIDMode="Static" ID="LastUploadSyariahVoucherCodeNote" runat="server"></asp:Literal></strong></p>                   
                        <p>Filename: SyariahVouchers.csv</p>
                        <div>*Penamaan file tidak boleh dirubah</div>
                        <div>*Kode Voucher yang diinput tidak boleh ada spasi dan special character</div>     
                        <p>&nbsp;</p>
                    </div>
                </div>
            </asp:Panel>

            <asp:Panel ID="panelOthers" runat="server" Visible="false">
            <div class="row">
                <div class="col-md-8">
                    <h4>OTHERS</h4>
                </div>
                <div class="col-md-4"></div>
            </div>
            <div class="input-group mb-3">
                <div class="custom-file">
                    <label class="custom-file-label" for="fuBulkUpload" id="lblChoose">
                        <asp:Literal ClientIDMode="Static" ID="litChoose" Text="Choose File" runat="server"></asp:Literal>
                    </label>
                    <asp:FileUpload runat="server" ClientIDMode="Static" ID="fuBulkUpload" CssClass="custom-file-input" />
                </div>
                <div class="input-group-append">
                    <asp:Button runat="server" ID="btnUpload" OnClick="btnUpload_Click" CssClass="btn btn-primary" Text="Upload" Enabled="false" />
                </div>
            </div>
            </asp:Panel>

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

    <div class="alert alert-success alert-bottom" role="alert" style="z-index: 100000;">
        <h4 class="alert-heading">SUCCESS ! </h4>
        <p>Bulk upload was succesful.</p>
    </div>

    <div id="alertXML" class="alert alert-success alert-bottom" role="alert" style="z-index: 100000;">
        <h4 class="alert-heading">SUCCESS ! </h4>
        <p>Upload XML was succesful.</p>
    </div>

    <div class="alert alert-danger alert-bottom" role="alert" style="z-index: 100000;">
        <h4 class="alert-heading">FAILED ! </h4>
        <p>
            Bulk upload was unsuccesful.
            <asp:Literal ID="litAlertError" runat="server"></asp:Literal>
        </p>
    </div>

    <div class="alert alert-warning alert-bottom" role="alert" style="z-index: 100000;">
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


