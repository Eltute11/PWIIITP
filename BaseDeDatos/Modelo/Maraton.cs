//------------------------------------------------------------------------------
// <auto-generated>
//    Este código se generó a partir de una plantilla.
//
//    Los cambios manuales en este archivo pueden causar un comportamiento inesperado de la aplicación.
//    Los cambios manuales en este archivo se sobrescribirán si se regenera el código.
// </auto-generated>
//------------------------------------------------------------------------------

namespace BaseDeDatos.Modelo
{
    using System;
    using System.Collections.Generic;
    
    public partial class Maraton
    {
        public Maraton()
        {
            this.Maraton_Usuario = new HashSet<Maraton_Usuario>();
        }
    
        public int ID { get; set; }
        public string Nombre { get; set; }
        public int Cant_Participantes { get; set; }
        public string Lugar_Salida { get; set; }
        public int Cant_Lista_Espera { get; set; }
        public decimal Premio_Uno { get; set; }
        public decimal Premio_Dos { get; set; }
        public decimal Premio_Tres { get; set; }
        public System.DateTime Fecha { get; set; }
        public decimal Km { get; set; }
    
        public virtual ICollection<Maraton_Usuario> Maraton_Usuario { get; set; }
    }
}
