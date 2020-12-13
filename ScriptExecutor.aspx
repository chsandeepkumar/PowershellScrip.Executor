<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ScriptExecutor.aspx.cs" Inherits="PowershallScript.Executor.ScriptExecutor" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <p>
            &nbsp;</p>
        <p>
            <asp:Label ID="Label1" runat="server" Text="Select Service"></asp:Label>
            <asp:DropDownList ID="DropDownList1" runat="server">
                <asp:ListItem>ServiceITem1</asp:ListItem>
                <asp:ListItem>ServiceItem2</asp:ListItem>
                <asp:ListItem>ServiceItem3</asp:ListItem>
            </asp:DropDownList>
        </p>
        <p>
            &nbsp;</p>
        <p>
            <asp:Label ID="Label2" runat="server" Text="Select Suit Type"></asp:Label>
            <asp:DropDownList ID="DropDownList2" runat="server">
                <asp:ListItem>Regression</asp:ListItem>
                <asp:ListItem>Smoke</asp:ListItem>
            </asp:DropDownList>
        </p>
        <p>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="ExecuteScript" />
        </p>
        <p>
            <asp:TextBox ID="txtCommandInput" runat="server" Height="142px" OnTextChanged="TextBox1_TextChanged" TextMode="MultiLine" Width="860px"></asp:TextBox>
        </p>
        <p>
            &nbsp;</p>
        <p>
            Results</p>
        <p>
            <asp:TextBox ID="txtCommandResult" runat="server" Height="142px" TextMode="MultiLine" Width="860px"></asp:TextBox>
        </p>
    </form>
</body>
</html>
