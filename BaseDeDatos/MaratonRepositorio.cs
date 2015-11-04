﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using BaseDeDatos;
using BaseDeDatos.Modelo;

namespace BaseDeDatos
{
    public class MaratonRepositorio
    {
        private MaratonEntities Contexto { get; set; }

        public MaratonRepositorio()
        {
            this.Contexto = new MaratonEntities();
        }

        public int Crear(Maraton maraton)
        {
            Contexto.Maraton.Add(maraton);

            Contexto.SaveChanges();

            return maraton.ID;
        }

        public List<Maraton> ObtenerUltima()
        {
            var _maratones = (from m in Contexto.Maraton
                              select m).ToList();

            return _maratones;
        }
    }
}