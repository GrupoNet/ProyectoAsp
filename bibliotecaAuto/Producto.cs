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
        private int _stock;
        private int _stockcritico;
        public string Descripcion { get; set; }
        public float PrecioUnitario { get; set; }

        public int Stock
        {
            get
            {
                return _stock;
            }
            set
            {
                if (value < 0)
                    throw new Exception("El valor del Stock no puede ser negativo");
                else
                    _stock = value;
            }

        }
        public int StockCritico
        {
            get
            {
                return _stockcritico;
            }
            set
            {
                if (value < 0)
                    throw new Exception("El valor del Stock critico no puede ser negativo");
                else
                    _stockcritico = value;
            }

        }

        public void producto()
        {
            Init();
        }

        private void Init()
        {
            Codigo = string.Empty;
            Descripcion = string.Empty;
            PrecioUnitario = 0;
            Stock = 0;
            StockCritico = 0;
        }
    }
}
