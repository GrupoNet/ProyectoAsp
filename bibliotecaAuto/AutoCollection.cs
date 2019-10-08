using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace bibliotecaAuto
{
    public class AutoCollection : List<Auto>
    {

        public int Buscar(string rut)
        {
            int i = 0;
            foreach (Auto item in this)
            {
                if (item.Codigo.Equals(rut))
                    return i;
                i += 1;
            }
            return -1;
        }
    }
}