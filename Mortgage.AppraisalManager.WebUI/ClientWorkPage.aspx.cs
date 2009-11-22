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

namespace Mortgage.AppraisalManager.WebUI
{
    public partial class ClientWorkPage : System.Web.UI.Page
    {
        private enum Modes
        {
            WorkQueue,
            AppraiserList,
            RequestAppraiser,
            Invalid
        }

        private Modes PageMode
        {
            get
            {
                switch (Request["mode"])
                {
                    case "queue":
                        return Modes.WorkQueue;
                    case "aprlist":
                        return Modes.AppraiserList;
                    case "reqapr":
                        return Modes.RequestAppraiser;
                    default:
                        return Modes.Invalid;
                }
            }
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            LoadControl();
        }

        private void LoadControl()
        {
            Control myControl;

            switch (PageMode)
            {
                case Modes.WorkQueue:
                    myControl = LoadControl("ClientComponents/WorkQueueControl.ascx");
                    PlaceHolderComponent.Controls.Add(myControl);

                    break;
                case Modes.AppraiserList:
                    break;
                case Modes.RequestAppraiser:
                    break;
                case Modes.Invalid:
                    break;
                default:
                    break;
            }
        }
    }
}
