using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BaseDeDatos
{
    public class UltimaMaraton
    {
        public Nullable<int> Posicion { get; set; }
        public string Nombre { get; set; }
        public string Apellido { get; set; }
        public Nullable<System.TimeSpan> Tiempo_Llegada { get; set; }


    }
}
