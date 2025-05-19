// Eduardo Miranda CB3026604 | Cauã Barros da Costa CB3025179

package servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import produto.Banco;

@WebServlet("/ListaProdutoServlet")
public class ListaProdutoServlet extends HttpServlet 
{
	private static final long serialVersionUID = 1L;
       
	@Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
    throws ServletException, IOException 
	{
        req.setAttribute("produtos", new Banco().getProdutos());
        req.getRequestDispatcher("/Pages/listaProduto.jsp").forward(req, resp);
    }
}
