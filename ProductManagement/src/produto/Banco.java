// Eduardo Miranda CB3026604 | Cauã Barros da Costa CB3025179

package produto;

import java.util.ArrayList;
import java.util.List;

public class Banco {
    private static List<Produto> lista = new ArrayList<>();
    private static int chaveSequencial = 1;

    public void adiciona(Produto produto) {
        produto.setId(chaveSequencial++);
        lista.add(produto);
    }

    public List<Produto> getProdutos() {
        return lista;
    }

    public Produto buscaPorId(int id) {
        for (Produto p : lista) {
            if (p.getId() == id)
                return p;
        }
        return null;
    }

    public void remove(int id) {
        Produto p = buscaPorId(id);
        if (p != null)
            lista.remove(p);
    }

    public void atualiza(Produto produtoAlterado) {
        Produto p = buscaPorId(produtoAlterado.getId());
        if (p != null) {
            p.setNome(produtoAlterado.getNome());
            p.setUnidadeCompra(produtoAlterado.getUnidadeCompra());
            p.setDescricao(produtoAlterado.getDescricao());
            p.setQtdPrevistoMes(produtoAlterado.getQtdPrevistoMes());
            p.setPrecoMaxComprado(produtoAlterado.getPrecoMaxComprado());
        }
    }
}
