<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%

    String name = request.getParameter("name");
    String pass = request.getParameter("pass");
    try {
        if (name.equalsIgnoreCase("CA") && pass.equalsIgnoreCase("CA")) {
            response.sendRedirect("tahome.jsp");
        } else {
            response.sendRedirect("talog.jsp");
        }
    } catch (Exception ex) {
        ex.printStackTrace();
    }



%>