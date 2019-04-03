using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace QuizPSD.Repository
{
    public class DatabaseSingleton
    {
        private static RealCycle_DBEntities db;

        public static RealCycle_DBEntities getInstance() {
            if (db == null) return db = new RealCycle_DBEntities();
            else return db;
        }
    }
}