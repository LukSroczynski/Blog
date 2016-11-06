<%-- 
    Document   : ToDoList
    Created on : 2016-06-12, 09:44:50
    Author     : Surreallistic
--%>

<%@page import="java.util.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
        <form action="ToDoList.jsp">
            Add new item: <input type="text" name="addText"/>
            <input type="submit" value="Add item" />
        </form>
        
        <%
            List<String> items = (List<String>) session.getAttribute("addText");
            
            if(items == null) {
                items = new ArrayList<String>();
                session.setAttribute("addText", items);
            }
            
            String item = request.getParameter("addText");
            if(item != null) {
                items.add(item);
            }
            
        %>
        
        <br>
        <b>To Do List: </b>
        
        <ol>
            <%
                for(String e : items) {
                    out.println("<li>" + e + "</li>");
                }
            %>
        </ol>
        
    </body>
</html>