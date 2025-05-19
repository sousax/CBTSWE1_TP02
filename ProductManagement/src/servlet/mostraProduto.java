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

@WebServlet("/mostraProduto")
public class mostraProduto extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	@Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {

        String idParam = req.getParameter("id");
        int id = Integer.parseInt(idParam);

        Banco banco = new Banco();
        Produto produto = banco.buscaPorId(id);

        req.setAttribute("produto", produto);

        req.getRequestDispatcher("/Pages/editaProduto.jsp")
           .forward(req, resp);
    }

}
