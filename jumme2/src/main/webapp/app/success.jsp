<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>로그인 성공</title>
    <style>
        body {
            min-height: 100vh;
            background: linear-gradient(135deg, #74ebd5 0%, #ACB6E5 100%);
            display: flex;
            align-items: center;
            justify-content: center;
            font-family: 'Segoe UI', Arial, sans-serif;
        }
        .success-card {
            background: #fff;
            padding: 2.5rem 2rem 2rem 2rem;
            border-radius: 1.2rem;
            box-shadow: 0 8px 32px 0 rgba(31, 38, 135, 0.2);
            width: 100%;
            max-width: 350px;
            display: flex;
            flex-direction: column;
            align-items: center;
        }
        .success-icon {
            font-size: 3rem;
            color: #4fc3f7;
            margin-bottom: 1rem;
        }
        .success-card h2 {
            margin-bottom: 1rem;
            color: #333;
            font-weight: 600;
        }
        .success-card p {
            color: #555;
            margin-bottom: 2rem;
            text-align: center;
        }
        .success-card a {
            display: inline-block;
            padding: 0.7rem 1.5rem;
            background: linear-gradient(90deg, #74ebd5 0%, #ACB6E5 100%);
            color: #fff;
            border: none;
            border-radius: 0.7rem;
            font-size: 1.05rem;
            font-weight: 600;
            text-decoration: none;
            transition: background 0.2s;
        }
        .success-card a:hover {
            background: linear-gradient(90deg, #ACB6E5 0%, #74ebd5 100%);
        }
    </style>
</head>
<body>
    <div class="success-card">
        <div class="success-icon">🎉</div>
        <h2>로그인 성공!</h2>
        <p>환영합니다.<br>정상적으로 로그인되었습니다.</p>
        <a href="app/login.html">홈으로</a>
    </div>
</body>
</html>