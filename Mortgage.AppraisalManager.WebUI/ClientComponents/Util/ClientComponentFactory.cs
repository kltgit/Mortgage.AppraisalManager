using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;

namespace Mortgage.AppraisalManager.WebUI.ClientComponents.Util
{
    public class ClientComponentFactory
    {
        private static ClientComponentFactory _instance;

        private ClientComponentFactory()
        { }

        public ClientComponentFactory Instance()
        {
            if (_instance == null)
            {
                _instance = new ClientComponentFactory();
            }
            return _instance;
        }

        public void RefreshComponentAttributes()
        {

        }

        
    }
}
