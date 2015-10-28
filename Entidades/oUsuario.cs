using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entidades
{
    public class oUsuario
    {
        public int usuarioID { get; set; }

        public string nombre { get; set; }
        public string apellido { get; set; }
        public string email { get; set; }
        public string clave { get; set; }
        public string residencia { get; set; }

        public DateTime fechaNacimiento { get; set; }

        public bool administrador { get; set; }
    }
}
