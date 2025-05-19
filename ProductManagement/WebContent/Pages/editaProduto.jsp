<!-- Eduardo Miranda CB3026604 | Cauã Barros da Costa CB3025179 -->

<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%> <%@ taglib uri="http://java.sun.com/jsp/jstl/core"
prefix="c" %>
<!DOCTYPE html>
<html lang="pt-BR">
  <head>
    <meta charset="UTF-8" />
    <title>Editar Produto</title>
    <link
      href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;600&display=swap"
      rel="stylesheet"
    />
    <style>
      :root {
        --bg-start: #f2f2f2;
        --bg-end: #ffffff;
        --card-bg: #fff;
        --primary: #28a745;
        --primary-dark: #218838;
        --text: #333;
        --text-light: #fff;
      }
      * {
        box-sizing: border-box;
        margin: 0;
        padding: 0;
      }
      html,
      body {
        height: 100%;
        font-family: "Poppins", sans-serif;
        background: linear-gradient(to right, var(--bg-start), var(--bg-end));
        display: flex;
        align-items: center;
        justify-content: center;
        color: var(--text);
        position: relative;
      }
      .back-btn {
        position: fixed;
        top: 20px;
        left: 20px;
        z-index: 1000;
        background-color: var(--primary);
        color: var(--text-light);
        padding: 0.5rem 1rem;
        text-decoration: none;
        border-radius: 4px;
        box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
        font-weight: 600;
        transition: background-color 0.2s;
      }
      .back-btn:hover {
        background-color: var(--primary-dark);
      }
      .container {
        background-color: var(--card-bg);
        padding: 2rem;
        border-radius: 8px;
        box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
        max-width: 80%;
        min-width: 500px;
      }
      h2 {
        text-align: center;
        margin-bottom: 1.5rem;
        font-weight: 600;
        font-size: 1.5rem;
      }
      form {
        display: flex;
        flex-direction: column;
        gap: 1rem;
      }
      .form-group {
        display: flex;
        flex-direction: column;
      }
      .form-group label {
        margin-bottom: 0.25rem;
        font-weight: 600;
      }
      .form-group input {
        padding: 0.5rem;
        border: 1px solid #ccc;
        border-radius: 4px;
        font-size: 1rem;
        width: 100%;
      }

      .form-group select {
        width: 100%;
        padding: 0.5rem 1rem 0.5rem 0.5rem; /* espaço extra à direita para o arrow */
        font-size: 1rem;
        color: var(--text);
        background-color: #fff;
        border: 1px solid #ccc;
        border-radius: 4px;
        appearance: none;
        -webkit-appearance: none;
        -moz-appearance: none;
        background-image: url("data:image/svg+xml;charset=US-ASCII,%3Csvg%20xmlns='http://www.w3.org/2000/svg'%20width='8'%20height='8'%3E%3Cpath%20fill='%23333'%20d='M0,0l4,4,4-4z'/%3E%3C/svg%3E");
        background-repeat: no-repeat;
        background-position: right 0.75rem center;
        background-size: 0.65rem;
        cursor: pointer;
        transition: border-color 0.2s;
      }

      .form-group select:hover,
      .form-group select:focus {
        border-color: var(--primary);
        outline: none;
      }
      button[type="submit"] {
        margin-top: 0.5rem;
        padding: 0.75rem;
        background-color: var(--primary);
        color: var(--text-light);
        border: none;
        border-radius: 6px;
        font-weight: 600;
        cursor: pointer;
        transition: background-color 0.2s, transform 0.1s;
        width: 100%;
      }
      button[type="submit"]:hover {
        background-color: var(--primary-dark);
        transform: translateY(-2px);
      }
    </style>
  </head>

  <body>
    <a href="/produto/Pages/menu.html" class="back-btn">
      &larr; Voltar ao Menu
    </a>

    <div class="container">
      <h2>Editar Produto</h2>

      <form action="AtualizaProdutoServlet" method="post">
        <input type="hidden" name="id" value="${produto.id}" />

        <div class="form-group">
          <label for="nome">Nome:</label>

          <input
            id="nome"
            name="nome"
            type="text"
            value="${produto.nome}"
            required
          />
        </div>

        <div class="form-group">
          <label for="unidadeCompra">Unidade de Compra:</label>

          <select id="unidadeCompra" name="unidadeCompra">
            <option value="1">Unidade</option>
            <option value="2">Dúzia</option>
            <option value="3">Caixa</option>
            <option value="4">Saco</option>
            <option value="5">Kg</option>
          </select>
        </div>

        <div class="form-group">
          <label for="descricao">Descrição:</label>

          <input
            id="descricao"
            name="descricao"
            type="text"
            value="${produto.descricao}"
          />
        </div>

        <div class="form-group">
          <label for="qtdPrevistoMes">Qtde Prevista/Mês:</label>

          <input
            id="qtdPrevistoMes"
            name="qtdPrevistoMes"
            type="number"
            value="${produto.qtdPrevistoMes}"
          />
        </div>

        <div class="form-group">
          <label for="precoMaxComprado">Preço Máx.:</label>

          <input
            id="precoMaxComprado"
            name="precoMaxComprado"
            type="number"
            step="0.01"
            value="${produto.precoMaxComprado}"
          />
        </div>

        <button type="submit">Atualizar</button>
      </form>
    </div>
  </body>
</html>
