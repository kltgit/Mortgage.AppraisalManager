<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BusinessDesktop.aspx.cs" Inherits="Mortgage.AppraisalManager.WebUI.BusinessDesktop" %>
<%@ Register Assembly="Coolite.Ext.Web" Namespace="Coolite.Ext.Web" TagPrefix="ext" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Business Desktop</title>
    
    <script type="text/javascript">
        var desk;
        
        function createDynamicWindow (app, key) {
            desk = app.getDesktop();

            Coolite.AjaxMethods.GetUrlByKey(key,{
                success: function(result) {
                    var w = desk.createWindow({
                        title: "Web Browser",
                        width: 1000,
                        height: 600,
                        maximizable: true,
                        minimizable: true,
                        autoLoad: {
                            url: result,
                            mode: "iframe",
                            showMask: true
                        }
                    });

                    w.center();
                    w.show();
                }
            });
            
            
            
        }

//        function createDynamicWindow (app) {
//            var desk = app.getDesktop();

//            var w = desk.createWindow({
//                title: "Web Browser",
//                width: 1000,
//                height: 600,
//                maximizable: true,
//                minimizable: true,
//                autoLoad: {
//                    url: "http://ajaxian.com/archives/mad-cool-date-library/",
//                    mode: "iframe",
//                    showMask: true
//                }
//            });

//            w.center();
//            w.show();
//        }


    </script>
</head>
<body>
    <form id="form1" runat="server">
    <ext:ScriptManager ID="ScriptManager1" runat="server">
    </ext:ScriptManager>
    
        <ext:Desktop ID="MyDesktop" runat="server" BackgroundColor="White" ShortcutTextColor="White" Wallpaper="http://www.geekpedia.com/gallery/fullsize/windows-hd-desktop-wallpaper.jpg" >
            <StartButton Text="Start" IconCls="start-button" />
            <Body>
            
            </Body>
            
            <StartMenu Width="325" Height="300" ToolsWidth="125">
                <ToolItems>
                    <ext:MenuItem Text="Settings" Icon="Wrench">
                        <Listeners>
                            <Click Handler="Ext.Msg.alert('Message', 'Settings Clicked');" />
                        </Listeners>
                    </ext:MenuItem>
                    <ext:MenuItem Text="Logout" Icon="Disconnect">
                        <AjaxEvents>
                            <Click >
                                <EventMask ShowMask="true" Msg="Good Bye..." MinDelay="1000" />
                            </Click>
                        </AjaxEvents>
                    </ext:MenuItem>
                </ToolItems>
                <Items>
                <ext:MenuItem Text="Show Current Work Queue" Icon="ApplicationViewList">
                    <Listeners>
                        <Click Handler="createDynamicWindow(#{MyDesktop}, 'Queue');" />
                    </Listeners>
                </ext:MenuItem>
                <ext:MenuItem Text="Manage" Icon="Lorry">
                    <Listeners>
                        <Click Handler="#{winCompany}.show();" />
                    </Listeners>
                </ext:MenuItem>
                <ext:MenuItem Text="Web Browser" Icon="World">
                    <Listeners>
                        <Click Handler="#{winBrowser}.show();" />
                    </Listeners>
                </ext:MenuItem>
                <ext:MenuItem Text="Create dynamic" Icon="World">
                    <Listeners>
                        <Click Handler="createDynamicWindow(#{MyDesktop});" />
                    </Listeners>
                </ext:MenuItem>
                </Items>
            </StartMenu>

        </ext:Desktop>
        
     

    </form>
</body>
</html>
