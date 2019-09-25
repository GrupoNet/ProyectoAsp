using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace bibliotecaAuto
{
    public class Categoria
    {
        private string Codigo { get; set; }
        private string Descripcion { get; set; }



        private void Init()
        {

            this.Codigo = string.Empty;
            this.Descripcion = string.Empty;

        }

        public Categoria()
        {
            Init();
        }
    }
}
