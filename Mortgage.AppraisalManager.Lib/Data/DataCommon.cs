using System;
using System.Collections.Generic;
using System.Text;

namespace Mortgage.AppraisalManager.Lib.Data
{
    public class DataCommon
    {
        public static string DBSafeString(object value)
        {
            if (value != null)
                return value.ToString();

            return "";
        }

        public static DateTime DBSafeDateTime(object value)
        {
            if (value != null)
                return DateTime.Parse(value.ToString());

            return DateTime.MinValue;
        }
    }
}
