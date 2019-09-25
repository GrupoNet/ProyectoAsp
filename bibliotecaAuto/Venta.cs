using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace bibliotecaAuto
{
    public class Venta
    {
        public string Codigo { get; set; }
        public DateTime Fecha { get; set; }
        public int Total { get; set; }
        public Cliente cliente { get; set; }
        public Auto auto { get; set; }

        public Venta()
        {
            Init();
        }

        private void Init()
        {
            Codigo = string.Empty;
            Fecha = DateTime.Today;
            Total = 0;
            cliente = new Cliente();
        }
    }
}
