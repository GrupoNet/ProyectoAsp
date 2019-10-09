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
        private AutoCollection prods
        {
            get
            {
                if (Session["prods"] == null)
                { Session["prods"] = new AutoCollection(); }
                return (AutoCollection)Session["prods"];
            }
            set
            {
                Session["prods"] = value;

            }
        }


        protected void Page_Load(object sender, EventArgs e)
        {

        }
        private void LimpiarControles()
        {
            txtCodigo.Text = string.Empty;
            txtDescrip.Text = string.Empty;
            txtCant.Text = string.Empty;
            txtPrecio.Text = string.Empty;

        }

        protected void btnRegistrar_Click(object sender, EventArgs e)
        {
            Auto prod = new Auto();
            prod.Codigo = txtCodigo.Text;
            prod.Descripcion = txtDescrip.Text;

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
            Auto prod = new Auto();
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
            int indice = prods.Buscar(txtCodigo.Text);
            if (indice != -1)
            {
                prods[indice] = prod;
                CargarGrid();
            }
            LimpiarControles();
        }

        private void CargarGrid()
        {
            var Result = from item in prods select new { Codigos = item.Codigo, Categorias = item.Categoria, Cantidades = item.Cantidad, Precio = item.Precio};
            gdAuto.DataSource = Result;
            gdAuto.DataBind();
        }

        protected void btnEliminar_Click(object sender, EventArgs e)
        {

        }
    }
}