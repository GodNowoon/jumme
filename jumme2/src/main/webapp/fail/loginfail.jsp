<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>로그인 실패</title>
    <style>
        body {
            min-height: 100vh;
            background: linear-gradient(135deg, #74ebd5 0%, #ACB6E5 100%);
            display: flex;
            align-items: center;
            justify-content: center;
            font-family: 'Segoe UI', Arial, sans-serif;
        }
        .fail-card {
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
        .fail-icon {
            font-size: 3rem;
            color: #ff5252;
            margin-bottom: 1rem;
        }
        .fail-card h2 {
            margin-bottom: 1rem;
            color: #d32f2f;
            font-weight: 600;
        }
        .fail-card p {
            color: #555;
            margin-bottom: 2rem;
            text-align: center;
        }
        .fail-card a {
            display: inline-block;
            padding: 0.7rem 1.5rem;
            background: linear-gradient(90deg, #ff5252 0%, #ffb199 100%);
            color: #fff;
            border: none;
            border-radius: 0.7rem;
            font-size: 1.05rem;
            font-weight: 600;
            text-decoration: none;
            transition: background 0.2s;
        }
        .fail-card a:hover {
            background: linear-gradient(90deg, #ffb199 0%, #ff5252 100%);
        }
    </style>
</head>
<body>
    <div class="fail-card">
        <div class="fail-icon">⚠️</div>
        <h2>로그인 실패</h2>
        <p>아이디 또는 비밀번호가 올바르지 않습니다.<br>다시 시도해 주세요.</p>
        <a href="../app/login.html">로그인 화면으로</a>
    </div>
   
</body>
</html> 