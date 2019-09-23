using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace bibliotecaAuto
{
    public class ClienteCollection : List<Cliente>
    {

        public int Buscar(string rut)
        {
            int i = 0;
            foreach (Cliente item in this)
            {
                if (item.RutCliente.Equals(rut))
                    return i;
                i += 1;
            }
            return -1;
        }
    }
}