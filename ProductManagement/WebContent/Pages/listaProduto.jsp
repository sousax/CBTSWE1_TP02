<!-- Eduardo Miranda CB3026604 | Cauã Barros da Costa CB3025179 -->

<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-BR">
  <head>
    <meta charset="UTF-8" />
    <title>Lista de Produtos</title>
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
        color: var(--text);
        display: flex;
        align-items: center;
        justify-content: center;
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
        width: 90%;
        max-width: 900px;
        margin: 2rem;
      }
      h2 {
        text-align: center;
        margin-bottom: 1.5rem;
        font-weight: 600;
        font-size: 1.5rem;
      }
      table {
        width: 100%;
        border-collapse: collapse;
      }
      th,
      td {
        padding: 0.75rem 1rem;
        text-align: left;
      }
      th {
        background-color: var(--primary);
        color: var(--text-light);
        font-weight: 600;
      }
      tr:nth-child(even) td {
        background-color: #f9f9f9;
      }
      td {
        border-bottom: 1px solid #e0e0e0;
      }
      .action a {
        margin-right: 0.5rem;
        color: var(--primary);
        text-decoration: none;
        font-weight: 600;
        transition: color 0.2s;
      }
      .action a:hover {
        color: var(--primary-dark);
      }
    </style>
  </head>

  <body>
    <a href="/produto/Pages/menu.html" class="back-btn">
      &larr; Voltar ao Menu
    </a>

    <div class="container">
      <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
      <h2>Lista de Produtos</h2>

      <table>
        <tr>
          <th>ID</th>
          <th>Nome</th>
          <th>Unid. Compra</th>
          <th>Descrição</th>
          <th>Qtd Prevista</th>
          <th>Preço Máx.</th>
          <th>Ações</th>
        </tr>

        <c:forEach var="p" items="${produtos}">
          <tr>
            <td>${p.id}</td>
            <td>${p.nome}</td>
            <td>${p.unidadeCompra}</td>
            <td>${p.descricao}</td>
            <td>${p.qtdPrevistoMes}</td>
            <td>${p.precoMaxComprado}</td>
            <td class="action">
              <a href="RemoveProdutoServlet?id=${p.id}">Remover</a>
              <a href="mostraProduto?id=${p.id}">Editar</a>
            </td>
          </tr>
        </c:forEach>
      </table>
    </div>
  </body>
</html>
