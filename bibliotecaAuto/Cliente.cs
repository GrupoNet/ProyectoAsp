using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace bibliotecaAuto
{
    public class Cliente
    {
        private string _nombre;
        private string _apellido;
        private string _RutCliente;
        private DateTime _FechaNacimiento;
        private string _sexo;
        private string _estadoCivil;
        public Cliente()
        {
            this.Init();
        }

        private void Init()
        {
            Nombres = string.Empty;
            Apellidos = string.Empty;
            RutCliente = string.Empty;
            FechaNacimiento = new DateTime(1990, 01, 01);
            IdSexo = 1;
            IdEstadoCivil = 1;
        }

        public string Nombres
        {
            get
            { return _nombre; }

            set
            { _nombre = value; }
        }

        public string Apellidos
        {
            get
            { return _apellido; }

            set
            { _apellido = value; }
        }

        public string RutCliente
        {
            get
            { return _RutCliente; }

            set
            { _RutCliente = value; }
        }

        public DateTime FechaNacimiento
        {
            get
            {
                return _FechaNacimiento;
            }

            set
            {
                if (value <= DateTime.Now)
                    _FechaNacimiento = value;
                else
                    throw new ArgumentException(string.Format("La fecha {0} es menor que la fecha de hoy", value));
            }
        }
        public string DescripcionSex
        {
            get
            { return _sexo; }

            set
            { _sexo = value; }
        }
        public string DescripEstCivil
        {
            get
            { return _estadoCivil; }

            set
            { _estadoCivil = value; }
        }

        public int IdSexo
        { get; set; }

        public int IdEstadoCivil
        { get; set; }
    }
}