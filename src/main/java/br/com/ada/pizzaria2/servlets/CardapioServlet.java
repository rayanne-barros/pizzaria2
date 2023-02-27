package br.com.ada.pizzaria2.servlets;

import br.com.ada.pizzaria2.dao.CardapioDAO;
import br.com.ada.pizzaria2.model.Pizza;
import jakarta.inject.Inject;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.List;

@WebServlet("/cardapio")
public class CardapioServlet extends HttpServlet {
    @Inject
    private CardapioDAO cardapioDAO;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Pizza> pizzas = cardapioDAO.getCardapio();
        request.setAttribute("cardapio", pizzas);
        request.getRequestDispatcher("cardapio.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String nome = request.getParameter("nome");
        String ingredientes = request.getParameter("ingredientes");
        Double preco = Double.parseDouble(request.getParameter("preco"));

        Pizza pizza = new Pizza(nome, ingredientes, preco, "");

        cardapioDAO.adicionarPizza(pizza);

        response.sendRedirect("cardapio");
    }
}
