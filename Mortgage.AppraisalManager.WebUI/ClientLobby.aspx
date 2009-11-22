<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ClientLobby.aspx.cs" Inherits="Mortgage.AppraisalManager.WebUI.ClientLobby" %>

<%@ Register Assembly="Coolite.Ext.Web" Namespace="Coolite.Ext.Web" TagPrefix="ext" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    
    <ext:ScriptManager ID="ScriptManager1" runat="server">
    </ext:ScriptManager>
    <ext:ViewPort ID="ViewPort1" runat="server">
        <Body>
            <ext:BorderLayout ID="BorderLayout1" runat="server">
                <North Collapsible="False" Split="False">
                    <ext:Panel ID="Panel1" runat="server" Height="100" Title="">
                        <Body>
                            Header
                        </Body>
                    </ext:Panel>
                </North>
              
                <South Collapsible="False" Split="False">
                    <ext:Panel ID="Panel3" runat="server" Height="75" Title="">
                        <Body>
                            Footer Text
                        </Body>
                    </ext:Panel>
                </South>
               
                <Center>
                    <ext:Panel ID="Panel7" runat="server" Title="">
                        <AutoLoad Mode="IFrame" Url="BusinessDesktop.aspx"></AutoLoad>
                    </ext:Panel>
                </Center>
            </ext:BorderLayout>
        </Body>
    </ext:ViewPort>
    </form>
</body>
</html>
