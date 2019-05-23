<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ContactForm.ascx.cs" Inherits="Controls_ContactForm" %>
<style type="text/css">
    .auto-style1 {
        width: 100%;
    }
    .auto-style2 {
        height: 30px;
    }
    .auto-style3 {
        height: 23px;
    }
    .auto-style4 {
        width: 290px;
    }
    .auto-style5 {
        height: 23px;
        width: 290px;
    }
    .auto-style6 {
        height: 30px;
    }
    .auto-style7 {
        width: 261px;
    }
    .auto-style8 {
        height: 23px;
        width: 261px;
    }
    .auto-style9 {
        height: 30px;
        width: 261px;
    }
</style>
<script type="text/javascript">
    function validatePhoneNumbers(source, args)
    {
        var phoneHome = document.getElementById('<%= PhoneHome.ClientID%>');
        var phoneBusiness = document.getElementById('<%= PhoneBusiness.ClientID%>')
        if (phoneHome.value != '' || phoneBusiness.value != '') {
            args.IsValid = true;
        }
        else {
            args.IsValid = false;
        }
    }
    $(function () {
        $('form').bind('submit', function () {
            if (Page_IsValid) {
                $('#TableWrapper').slideUp(3000);
            }
        });
    });
    function pageLoad() {
        $('.Attention').animate({ width: '600px' }, 3000).animate({ width: '100px' }, 3000).fadeOut('slow');
    }
</script>
<asp:UpdatePanel ID="UpdatePanel1" runat="server">
    <ContentTemplate>
        <div id="TableWrapper">
            <table class="auto-style1" runat="server" id="FormTable">
        <tr>
            <td colspan="3">Thông Tin Liên Hệ<br />
                Vui lòng nhập tên Email, Số điện thoại của bạn:</td>
        </tr>
        <tr>
            <td class="auto-style4">Tên</td>
            <td class="auto-style7">
                <asp:TextBox ID="Name" runat="server" Width="279px" OnTextChanged="Name_TextChanged"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="Name" CssClass="ErrorMessage" ErrorMessage="Enter your name">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">Địa chỉ Email</td>
            <td class="auto-style7">
                <asp:TextBox ID="EmailAddress" runat="server" TextMode="Email" Width="279px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="EmailAddress" CssClass="ErrorMessage" Display="Dynamic" ErrorMessage="Nhập địa chỉ Email">*</asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="EmailAddress" CssClass="ErrorMessage" Display="Dynamic" ErrorMessage="RegularExpressionValidator" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style5">Xác nhận địa chỉ Email</td>
            <td class="auto-style8">
                <asp:TextBox ID="ConfirmEmailAddress" runat="server" TextMode="Email" Width="279px"></asp:TextBox>
            </td>
            <td class="auto-style3">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="ConfirmEmailAddress" CssClass="ErrorMessage" Display="Dynamic" ErrorMessage="Xác nhận địa chỉ Email">*</asp:RequiredFieldValidator>
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="EmailAddress" ControlToValidate="ConfirmEmailAddress" CssClass="ErrorMessage" Display="Dynamic" ErrorMessage="Email không khớp nhau">*</asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">Số điện thoại cá nhân</td>
            <td class="auto-style7">
                <asp:TextBox ID="PhoneHome" runat="server" Width="279px"></asp:TextBox>
            </td>
            <td>
                <asp:CustomValidator ID="CustomValidator1" runat="server" ClientValidationFunction="validatePhoneNumbers" CssClass="ErrorMessage" Display="Dynamic" ErrorMessage="Nhập số điện thoại cá nhân hay số cơ quan" OnServerValidate="CustomValidator1_ServerValidate">*</asp:CustomValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style6">Số điện thoại cơ quan</td>
            <td class="auto-style9">
                <asp:TextBox ID="PhoneBusiness" runat="server" Width="279px"></asp:TextBox>
            </td>
            <td class="auto-style2"></td>
        </tr>
        <tr>
            <td class="auto-style6">Chú thích</td>
            <td class="auto-style9">
                <asp:TextBox ID="Comments" runat="server" Height="50px" TextMode="MultiLine" Width="279px"></asp:TextBox>
            </td>
            <td class="auto-style2">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="Comments" CssClass="ErrorMessage" Display="Dynamic" ErrorMessage="Nhập một chú thích">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style6" colspan="3">
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" CssClass="ErrorMessage" HeaderText="Xin hãy nhập đầy đủ thông tin bên dưới:" ShowMessageBox="True" ShowSummary="False" />
            </td>
        </tr>
        <tr>
            <td class="auto-style6"></td>
            <td class="auto-style9">
                <asp:Button ID="SendButton" runat="server" Text="Send" OnClick="SendButton_Click" Height="27px" Width="80px" />
            </td>
            <td class="auto-style2"></td>
        </tr>
    </table>
</div>
<asp:Label ID="Message" runat="server" Text="Message Sent" Visible="false" CssClass="Attention" />
        <p runat="server" id="MessageSentPara" visible="false">
            &nbsp;Cảm ơn thông tin của bạn. Chúng tôi sẽ liên hệ lại bạn nếu cần thiết.
        </p>
    </ContentTemplate>
</asp:UpdatePanel>
<asp:UpdateProgress ID="UpdateProgress1" runat="server" AssociatedUpdatePanelID="UpdatePanel1">
    <ProgressTemplate>
        <div class="AJAX">
            &nbsp &nbsp Xin vui lòng chờ...
        </div>
    </ProgressTemplate>
</asp:UpdateProgress>



