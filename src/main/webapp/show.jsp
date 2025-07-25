<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.util.HashMap, java.util.List, util.DBUtil ,model.entity.Jumme, jakarta.servlet.ServletException
, jakarta.servlet.annotation.WebServlet, jakarta.servlet.http.HttpServlet, jakarta.servlet.http.HttpServletRequest, jakarta.servlet.http.HttpServletResponse"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>show~~~~</title>
</head>

<body>
<h2>상암 맛집 전체 목록</h2>
<form method="get" action="">
    <input type="text" name="keyword" placeholder="식당 이름 검색" value="<%= request.getParameter("keyword") != null ? request.getParameter("keyword") : "" %>">
    <input type="submit" value="keyword">
</form>
    <table border="1">
        <tr>
            <th>분류</th>
            <th>식당이름</th>
            <th>대표메뉴</th>
            <th>평점(5점만점)</th>
            <th>Link</th>
        </tr>
        <%
            List<Jumme> all = (List<Jumme>) request.getAttribute("all");
            if (all != null) {
                for (Jumme j : all) {
        %>
        <tr>
            <td><%= j.getCategory() %></td>
            <td><%= j.getRname() %></td>
            <td><%= j.getRmenu() %></td>
            <td><%= j.getScore() %></td>
            <td><a href="<%= j.getLink() %>">링크</a></td>
        </tr>
        <%
                }
            } else {
        %>
        <tr><td colspan="6">데이터가 없습니다.</td></tr>
        <%
            }
        %>
    </table>
</body>
</html>
