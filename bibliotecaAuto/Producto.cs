using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace bibliotecaAuto
{
    public class Producto
    {
        public string Codigo { get; set; }
        public string Descripcion { get; set; }
        public string Categoria { get; set; }
        private int _cantidad;
        public float Precio { get; set; }

        public int Cantidad
        {
            get
            {
                return _cantidad;
            }
            set
            {
                if (value < 0)
                    throw new Exception("El valor de la cantidad no puede ser negativo");
                else
                    _cantidad = value;
            }

        }

        public Producto()
        {
            Init();
        }

        private void Init()
        {
            Codigo = string.Empty;
            Descripcion = string.Empty;
            Categoria = string.Empty;
            Cantidad = 0;
            Precio = 0;
        }
    }
}
