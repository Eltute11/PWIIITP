//------------------------------------------------------------------------------
// <auto-generated>
//    This code was generated from a template.
//
//    Manual changes to this file may cause unexpected behavior in your application.
//    Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace BaseDeDatos.Modelo
{
    using System;
    using System.Collections.Generic;
    
    public partial class Usuario
    {
        public Usuario()
        {
            this.Maraton_Usuario = new HashSet<Maraton_Usuario>();
        }
    
        public int ID { get; set; }
        public string Nombre { get; set; }
        public string Apellido { get; set; }
        public string Clave { get; set; }
        public Nullable<System.DateTime> Fecha_Nacimiento { get; set; }
        public string Residencia { get; set; }
        public bool Administrador { get; set; }
        public string Email { get; set; }
    
        public virtual ICollection<Maraton_Usuario> Maraton_Usuario { get; set; }
    }
}
