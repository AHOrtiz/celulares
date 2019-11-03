using System;

namespace tiendita
{
    public partial class celulares : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnCalcular_Click(object sender, EventArgs e)
        {
            Modelos.celular celular = new Modelos.celular();

            celular.p_marca = DropDownListMarca.SelectedItem.ToString();
            celular.p_temp = DropDownTemporada.SelectedItem.ToString();
            celular.p_prec = Convert.ToInt16(TxtPrecio.Text);
            celular.p_canti = Convert.ToInt16(TxtCantidad.Text);
            double resultado = celular.calcularPrecio();

            Response.Write($"<script>alert('Total a pagar: ${resultado} ');</script>");
        }
    }
}