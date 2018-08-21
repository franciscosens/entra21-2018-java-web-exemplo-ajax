/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.entra21java.web.categoria;

import br.com.entra21java.bean.CategoriaBean;
import br.com.entra21java.dao.CategoriaDAO;
import com.google.gson.Gson;
import java.io.IOException;
import java.util.HashMap;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Lucas
 */
@WebServlet("/categoria/store")
public class CategoriaStore extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        CategoriaBean categoria = new CategoriaBean();
        categoria.setNome(req.getParameter("nome"));
        int id = new CategoriaDAO().inserir(categoria);
        HashMap<String, Integer> resultado = new HashMap<>();
        resultado.put("id", id);
        String json = new Gson().toJson(resultado);
        resp.setContentType("application/json");
        resp.setCharacterEncoding("UTF-8");
        resp.getWriter().write(json);
    }

}
