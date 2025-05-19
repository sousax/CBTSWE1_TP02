// Eduardo Miranda CB3026604 | Cauã Barros da Costa CB3025179

package produto;

public class Produto {
    private int id;
    private String nome;
    private int unidadeCompra;
    private String descricao;
    private double qtdPrevistoMes;
    private double precoMaxComprado;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNome() {
        return this.nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public int getUnidadeCompra() {
        return this.unidadeCompra;
    }

    public void setUnidadeCompra(int unidadeCompra) {
        this.unidadeCompra = unidadeCompra;
    }

    public String getDescricao() {
        return this.descricao;
    }

    public void setDescricao(String descricao) {
        this.descricao = descricao;
    }

    public double getQtdPrevistoMes() {
        return this.qtdPrevistoMes;
    }

    public void setQtdPrevistoMes(double qtdPrevistoMes) {
        this.qtdPrevistoMes = qtdPrevistoMes;
    }

    public double getPrecoMaxComprado() {
        return this.precoMaxComprado;
    }

    public void setPrecoMaxComprado(double precoMaxComprado) {
        this.precoMaxComprado = precoMaxComprado;
    }
}