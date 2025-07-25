<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.util.*, model.entity.Jumme, dao.JummeDAO" %>
<%
    String category = request.getParameter("category");
    List<Jumme> list = new ArrayList<>();

    if (category != null && !category.isEmpty()) {
        JummeDAO dao = new JummeDAO();
        list = dao.findByCategory(category);
    }
%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>점메추</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f8f8f8;
            color: #333;
        }

        header {
            text-align: center;
            padding: 20px;
            background-color: #fff;
            border-bottom: 1px solid #eee;
        }

        .logo {
            font-size: 32px;
            font-weight: bold;
            color: #4CAF50;
            margin: 0;
        }

        nav {
            background-color: #5cb85c;
            padding: 10px 0;
            text-align: center;
        }

        .category-buttons {
            display: flex;
            justify-content: center;
            list-style: none;
            padding: 0;
            margin: 0;
            gap: 15px;
        }

        .category-buttons form {
            display: inline;
        }

        .category-buttons input[type="submit"] {
            background-color: #4CAF50;
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 16px;
            transition: background-color 0.3s ease;
        }

        .category-buttons input[type="submit"]:hover {
            background-color: #45a049;
        }

        .content-area {
            padding: 30px;
            margin: 20px auto;
            max-width: 900px;
            background-color: #fff;
            border-radius: 8px;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
            min-height: 300px;
        }

        .content-area h2 {
            color: #5cb85c;
            margin-top: 0;
        }

        .result-item {
            margin-bottom: 20px;
        }

        .result-item h3 {
            margin: 5px 0;
        }

        .result-item a {
            color: #4CAF50;
            text-decoration: none;
        }
        .a{
        	text-decoration: none;
        }
    </style>
</head>
<body>

<header>
    <h1 class="logo"><a href="http://localhost/jumme2/app/jumme.jsp" >오늘 뭐 먹지? ✨</a></h1>
</header>

<nav>
    <ul class="category-buttons">
        <form method="get">
            <input type="submit" name="category" value="한식">
        </form>
        <form method="get">
            <input type="submit" name="category" value="중식">
        </form>
        <form method="get">
            <input type="submit" name="category" value="양식">
        </form>
        <form method="get">
            <input type="submit" name="category" value="일식">
        </form>
        <form method="get">
            <input type="submit" name="category" value="분식">
        </form>
        <form method="get">
            <input type="submit" name="category" value="디저트">
        </form>
    </ul>
</nav>

<main class="content-area">
    <%
        if (category == null) {
    %>
        <h2>어서오세요! 카테고리를 선택해주세요 😊</h2>
        <p>각 버튼을 누르면 이 공간에 해당 카테고리의 음식점이 짜잔~ 하고 나타날 거예요!</p>
    <%
        } else if (list != null && !list.isEmpty()) {
    %>
        <h2>🍱 <%= category %> 추천 맛집</h2>
        <%
            for (Jumme item : list) {
        %>
            <div class="result-item">
                <h3><%= item.getRname() %></h3>
                <p>메뉴: <%= item.getRmenu() %></p>
                <p>평점: <%= item.getScore() %></p>
                <p><a href="<%= item.getLink() %>" target="_blank">홈페이지 방문</a></p>
            </div>
        <%
            }
        %>
    <%
        } else {
    %>
        <h2>😢 '<%= category %>' 카테고리의 음식점이 없습니다.</h2>
    <%
        }
    %>
</main>

</body>
</html>