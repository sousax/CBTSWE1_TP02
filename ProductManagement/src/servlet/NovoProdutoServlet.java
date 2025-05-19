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

@WebServlet("/NovoProdutoServlet")
public class NovoProdutoServlet extends HttpServlet 
{
    private static final long serialVersionUID = 1L;

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
    throws ServletException, IOException 
    {

        String nome = req.getParameter("nome");

        String uniParam = req.getParameter("unidadeCompra");
        int unidadeCompra = 1; 
        if (uniParam != null && !uniParam.isEmpty()) 
        {
            try 
            {
                unidadeCompra = Integer.parseInt(uniParam);
            } 
            
            catch (NumberFormatException e) 
            {
                unidadeCompra = 1;
            }
        }

        String descricao = req.getParameter("descricao");
        double qtdPrevistoMes = 0;
        try 
        {
            qtdPrevistoMes = Double.parseDouble(req.getParameter("qtdPrevistoMes"));
        } 
        catch (NumberFormatException ignored) {}

        double precoMaxComprado = 0;
        try 
        {
            precoMaxComprado = Double.parseDouble(req.getParameter("precoMaxComprado"));
        } 
        catch (NumberFormatException ignored) {}

        Produto prod = new Produto();
        prod.setNome(nome);
        prod.setUnidadeCompra(unidadeCompra);
        prod.setDescricao(descricao);
        prod.setQtdPrevistoMes(qtdPrevistoMes);
        prod.setPrecoMaxComprado(precoMaxComprado);

        new Banco().adiciona(prod);

        
        req.setAttribute("msgSucesso", "Produto cadastrado com sucesso!");

        req.getRequestDispatcher("/Pages/cadastroProduto.jsp").forward(req, resp);
    }
}
