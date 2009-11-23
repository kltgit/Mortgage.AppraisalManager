using System;
using System.Collections.Generic;
using System.Text;
using Microsoft.Practices.EnterpriseLibrary.Data;

namespace Mortgage.AppraisalManager.Lib.Data
{
    public abstract class BaseData
    {
        protected Database GetDatabase()
        {
            if (!string.IsNullOrEmpty(DataConfig.EnvironmentKeyOverride))
            {
                return DatabaseFactory.CreateDatabase(DataConfig.EnvironmentKeyOverride);
            }

            return DatabaseFactory.CreateDatabase();
        }
    }
}
