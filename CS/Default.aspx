<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<%@ Register Assembly="DevExpress.Web.v15.1, Version=15.1.15.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .uppercase .dxeEditAreaSys
        {
            text-transform: uppercase;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <dx:ASPxTextBox ID="textBox" runat="server" Width="170px" CssClass="uppercase" ClientInstanceName="tb" Text="Hello World!">
            <ClientSideEvents Init="function(s, e){ tbReal.SetText(s.GetText()); }" ValueChanged="function(s, e){ tbReal.SetText(s.GetText()); }" />
        </dx:ASPxTextBox>

        Real text:
        <br />
        <dx:ASPxTextBox ID="realText" runat="server" Width="170px" ClientInstanceName="tbReal" ReadOnly="true">
        </dx:ASPxTextBox>
        <br />
        <dx:ASPxButton ID="ButtonClient" runat="server" Text="Get text on the client side" AutoPostBack="false">
            <ClientSideEvents Click="function(s, e){ label1.SetText(tb.GetText().toUpperCase()); }" />
        </dx:ASPxButton>
        <dx:ASPxLabel ID="label1" runat="server" Text="" ClientInstanceName="label1">
        </dx:ASPxLabel>
        <br />
        <dx:ASPxButton ID="buttonServer" runat="server" Text="Get text on the server side" OnClick="buttonServer_Click"></dx:ASPxButton>
        <dx:ASPxLabel ID="label2" runat="server" Text="">
        </dx:ASPxLabel>
    </form>
</body>
</html>
