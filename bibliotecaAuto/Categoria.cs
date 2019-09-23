using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace bibliotecaAuto
{
    public class Categoria
    {
        private string codCategoria { get; set; }
        private string desCategoria { get; set; }



        private void Init()
        {

            this.codCategoria = string.Empty;
            this.desCategoria = string.Empty;

        }

        public Categoria()
        {
            Init();
        }
    }
}
