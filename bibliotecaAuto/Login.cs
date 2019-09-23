using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace bibliotecaAuto
{
    public class Login
    {

        private string Nombre { get; set; }
        private string Password { get; set; }


        private void Init()
        {
            this.Nombre = string.Empty;
            this.Password = string.Empty;
        }


        public Login()
        {
            Init();
        }
    }
}