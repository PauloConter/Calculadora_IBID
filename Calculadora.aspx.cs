using System;
using System.Web.UI;

namespace Calculadora
{
    public partial class _Default : Page
    {
        protected void btnCalcular_Click(object sender, EventArgs e)
        {
            double num1, num2;
            if (double.TryParse(txtNumero1.Text, out num1) && double.TryParse(txtNumero2.Text, out num2))
            {
                string operacao = ddlOperacao.SelectedValue;
                double resultado = 0;

                switch (operacao)
                {
                    case "soma":
                        resultado = num1 + num2;
                        break;
                    case "subtracao":
                        resultado = num1 - num2;
                        break;
                    case "multiplicacao":
                        resultado = num1 * num2;
                        break;
                    case "divisao":
                        if (num2 != 0)
                        {
                            resultado = num1 / num2;
                        }
                        else
                        {
                            lblResultado.Text = "Erro: Divisão por zero.";
                            return;
                        }
                        break;
                    default:
                        lblResultado.Text = "Operação inválida.";
                        return;
                }

                lblResultado.Text = "Resultado: " + resultado;
            }
            else
            {
                lblResultado.Text = "Por favor, insira números válidos.";
            }
        }
    }
}
