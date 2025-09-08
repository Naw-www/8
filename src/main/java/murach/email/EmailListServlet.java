package murach.email;

import java.io.IOException;
import jakarta.servlet.*;                
import jakarta.servlet.http.*;         
import jakarta.servlet.annotation.*;     


import murach.business.User;
import murach.data.UserDB;

@WebServlet("/emailList")
public class EmailListServlet extends HttpServlet {

    @Override
protected void doPost(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {

    request.setCharacterEncoding("UTF-8");
    response.setContentType("text/html; charset=UTF-8");

    String email = request.getParameter("email");
    String firstName = request.getParameter("firstName");
    String lastName = request.getParameter("lastName");

    User user = new User(email, firstName, lastName);
    UserDB.insert(user);

    // Lấy tất cả và sắp xếp mới nhất lên trước
    java.util.List<User> all = new java.util.ArrayList<>(UserDB.getUsers());
    java.util.Collections.reverse(all);

    request.setAttribute("user", user);
    request.setAttribute("users", all);

    getServletContext().getRequestDispatcher("/thanks.jsp").forward(request, response);
}

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String url = "/index.jsp";
        RequestDispatcher dispatcher = getServletContext().getRequestDispatcher(url);
        dispatcher.forward(request, response);
    }
}
