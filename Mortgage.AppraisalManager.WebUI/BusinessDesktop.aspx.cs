using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using Coolite.Ext.Web;

namespace Mortgage.AppraisalManager.WebUI
{
    public partial class BusinessDesktop : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Ext.IsAjaxRequest)
            {
                LoadStartMenuItems();
            }
        }

        private void LoadStartMenuItems()
        {
            
        }

        [AjaxMethod]
        public string GetUrlByKey(string key)
        {
            switch (key)
            {
                case "Queue":
                    return "ClientWorkPage.aspx?mode=queue";
                case "AppraiserList":
                    return "";
                case "Logs":
                    return "";
                default:
                    return "";
            }
        }
    }
}
