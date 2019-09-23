using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace bibliotecaAuto
{
    public class Login
    {

        private string nombre { get; set; }
        private string password { get; set; }


        private void Init()
        {
            this.nombre = string.Empty;
            this.password = string.Empty;
        }


        public Login()
        {
            Init();
        }
    }
}