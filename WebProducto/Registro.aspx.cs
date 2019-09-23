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
        List<Producto> prods = new List<Producto>(); 

        protected void Page_Load(object sender, EventArgs e)
        {

        }
        private void LimpiarControles()
        {
            txtCodigo.Text = string.Empty;
            txtDescrip.Text = string.Empty;
            ddlCategoria.SelectedValue = string.Empty;
            txtCant.Text = string.Empty;
            txtPrecio.Text = string.Empty;

        }

        protected void btnRegistrar_Click(object sender, EventArgs e)
        {
            Producto prod = new Producto();
            prod.Codigo = txtCodigo.Text;
            prod.Descripcion = txtDescrip.Text;
            prod.Categoria = txtCant.Text;

            int val = 0;
            if (int.TryParse(txtCant.Text, out val))
                prod.Cantidad = Convert.ToInt32(txtCant.Text.ToString());
            else
                prod.Cantidad = 0;
            if (int.TryParse(txtPrecio.Text, out val))
                prod.Precio = Convert.ToInt32(txtPrecio.Text.ToString());
            else
                prod.Precio = 0;
            prods.Add(prod);
            LimpiarControles();
        }

        protected void btnModificar_Click(object sender, EventArgs e)
        {

        }

        protected void btnEliminar_Click(object sender, EventArgs e)
        {

        }
    }
}