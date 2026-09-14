package controller;

import java.io.*;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.WebServlet;

import murach.business.User;
import murach.util.CookieUtil;

@WebServlet("/download")
public class DownloadServlet extends HttpServlet {

    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws IOException, ServletException {
        String action = request.getParameter("action");
        if (action == null) {
            action = "viewAlbums";
        }
        String url = "/index.jsp";
        if (action.equals("viewAlbums")) {
            url = "/index.jsp";
        } else if (action.equals("checkUser")) {
            url = checkUser(request, response);
        }
        getServletContext().getRequestDispatcher(url).forward(request, response);
    }

    @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response)
            throws IOException, ServletException {
        String action = request.getParameter("action");
        if (action == null) {
            action = "viewAlbums";
        }

        String url = "/index.jsp";
        if (action.equals("registerUser")) {
            url = registerUser(request, response);
        }
        getServletContext().getRequestDispatcher(url).forward(request, response);
    }

    private String checkUser(HttpServletRequest request, HttpServletResponse response) {
        String productCode = request.getParameter("productCode");
        HttpSession session = request.getSession();

        if (productCode != null && !productCode.trim().isEmpty()) {
            session.setAttribute("productCode", productCode);
        } else {
            productCode = (String) session.getAttribute("productCode");
        }

        User user = (User) session.getAttribute("user");

        String url;
        // if User object doesn't exist, check email cookie
        if (user == null) {
            Cookie[] cookies = request.getCookies();
            String emailAddress = CookieUtil.getCookieValue(cookies, "emailCookie");

            // if cookie doesn't exist, go to Registration page
            if (emailAddress == null || emailAddress.isEmpty()) {
                url = "/register.jsp";
            }
            // if cookie exists, create User object and go to Downloads page
            else {
                user = new User("", "", emailAddress);
                session.setAttribute("user", user);
                url = "/" + productCode + "_download.jsp";
            }
        }
        // if User object exists, go to Downloads page
        else {
            url = "/" + productCode + "_download.jsp";
        }
        return url;
    }

    private String registerUser(HttpServletRequest request, HttpServletResponse response) {

        String email = request.getParameter("email");
        String firstName = request.getParameter("firstName");
        String lastName = request.getParameter("lastName");


        User user = new User(firstName, lastName, email);


        HttpSession session = request.getSession();
        session.setAttribute("user", user);

        Cookie c = new Cookie("emailCookie", email);
        c.setMaxAge(60 * 60 * 24 * 365 * 2); // set age to 2 years
        c.setPath("/"); // allow entire app to access it
        response.addCookie(c);


        String productCode = (String) session.getAttribute("productCode");
        String url = "/" + productCode + "_download.jsp";
        return url;
    }
}
