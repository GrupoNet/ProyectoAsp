using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using bibliotecaAuto;
namespace WebProducto
{
    public partial class Registro : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        private void LimpiarControles()
        {
            txtCodigo.Text = string.Empty;
            txtDescrip.Text = string.Empty;
            txtPrecio.Text = string.Empty;
            txtStock.Text = string.Empty;
            txtStockCritico.Text = string.Empty;

        }

        protected void btnRegistrar_Click(object sender, EventArgs e)
        {
            Producto prod = new Producto();
            prod.Codigo = txtCodigo.Text;
            prod.Descripcion = txtDescrip.Text;
            float val = 0;
            if (float.TryParse(txtPrecio.Text, out val))
                prod.PrecioUnitario = float.Parse(txtPrecio.Text);
            else
                prod.PrecioUnitario = val;
            int stock = 0;
            if (int.TryParse(txtStock.Text, out stock))
                prod.Stock = Convert.ToInt32(txtStock.Text.ToString());
            else
                prod.Stock = 0;
            if (int.TryParse(txtStockCritico.Text, out stock))
                prod.StockCritico = Convert.ToInt32(txtStockCritico.Text.ToString());
            else
                prod.StockCritico = 0;
            //LimpiarControles();
        }
    }
}