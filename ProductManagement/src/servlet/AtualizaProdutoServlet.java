// Eduardo Miranda CB3026604 | Cauã Barros da Costa CB3025179

package servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import produto.Banco;
import produto.Produto;

@WebServlet("/AtualizaProdutoServlet")
public class AtualizaProdutoServlet extends HttpServlet 
{
	private static final long serialVersionUID = 1L;
       
	@Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
    throws ServletException, IOException 
	{
        Produto prod = new Produto();
        prod.setId(Integer.parseInt(req.getParameter("id")));
        prod.setNome(req.getParameter("nome"));
        prod.setUnidadeCompra(Integer.parseInt(req.getParameter("unidadeCompra")));
        prod.setDescricao(req.getParameter("descricao"));
        prod.setQtdPrevistoMes(Double.parseDouble(req.getParameter("qtdPrevistoMes")));
        prod.setPrecoMaxComprado(Double.parseDouble(req.getParameter("precoMaxComprado")));

        new Banco().atualiza(prod);
        resp.sendRedirect("ListaProdutoServlet");
    }
}
