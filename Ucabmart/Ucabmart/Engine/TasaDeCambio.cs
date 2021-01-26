﻿namespace Ucabmart.Engine
{
    public class TasaDeCambio
    {
        public int Codigo { get; set; }
        public float FactorDeCambio { get; set; }

        public TasaDeCambio(int codigo, float factorDeCambio)
        {
            Codigo = codigo;
            FactorDeCambio = factorDeCambio;
        }
    }
}