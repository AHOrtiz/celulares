namespace Modelos
{
    internal class celular
    {
        private string marca, temporada;
        private int cantidad, precio;


        public string p_marca
        {
            get { return marca; }
            set { marca = value; }
        }

        public string p_temp
        {
            get { return temporada; }
            set { temporada = value; }
        }

        public int p_canti
        {
            get { return cantidad; }
            set { cantidad = value; }
        }

        public int p_prec
        {
            get { return precio; }
            set { precio = value; }
        }

        public celular(string _marca, string _temporada, int _cantidad, int _precio)
        {
            this.marca = _marca;
            this.temporada = _temporada;
            this.cantidad = _cantidad;
            this.precio = _precio;
        }

        public celular()
        {
        }

        public double calcularPrecio()
        {
            double precioTotal = 0;
            double precioDescuento = 0;
            double totalPagar = 0;

            if (marca == "Iphone")
            {
                totalPagar = precio * cantidad;
            }
            else
            {
                if (cantidad >= 2)
                {
                    precioTotal = cantidad * precio;
                    precioDescuento = precioTotal-(precioTotal * .10) ;
                    if (temporada == "Navidad" || temporada == "Buen fin")
                    {
                        totalPagar = precioDescuento-(precioDescuento * .15) ;
                    }
                    else { totalPagar = precioDescuento; }
                }
                else if (temporada == "Navidad" || temporada == "Buen fin")
                {
                    precioTotal = cantidad * precio;
                    precioDescuento = precioTotal-(precioTotal * .15) ;
                    totalPagar = precioDescuento;
                }

            }



            return totalPagar;

        }
    }
}