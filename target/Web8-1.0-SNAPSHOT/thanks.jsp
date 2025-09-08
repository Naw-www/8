<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<c:import url="/include/header.html" />

<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Email List – Thanks</title>
  <style>
    html, body { height: 100%; margin: 0; }
    body {
      display: flex; align-items: center; justify-content: center;
      background: #eef6f9; font-family: Arial, sans-serif;
    }
    .card {
      width: min(720px, 92vw);
      background: #fff; padding: 24px 28px;
      border-radius: 10px; box-shadow: 0 6px 24px rgba(0,0,0,.08);
    }
    h1 { color: teal; margin-top: 0; }
    ul { margin: 10px 0 0 20px; }
    .btn {
      margin-top: 18px; padding: 6px 14px; cursor: pointer;
      background: #f0f0f0; border: 1px solid #999; border-radius: 6px;
    }
    .btn:hover { background: #ddd; }
    
    .footer {
    position: fixed;
    bottom: 0;
    width: 100%;
    text-align: center;
    padding: 10px;
    background: #eef6f9;
    font-size: 90%;
    color: #555;
}
  </style>
</head>
<body>
  <div class="card">
    <h1>Thanks for joining our email list</h1>
    <p>Here is the information that you entered:</p>

    <p>
      <strong>Email:</strong> ${user.email}<br>
      <strong>First Name:</strong> ${user.firstName}<br>
      <strong>Last Name:</strong> ${user.lastName}
    </p>

    <h3>All users (newest first):</h3>
    <c:choose>
      <c:when test="${not empty users}">
        <ul>
          <!-- Lặp TẤT CẢ users -->
          <c:forEach var="u" items="${users}">
            <li>${u.firstName} ${u.lastName} - ${u.email}</li>
          </c:forEach>
        </ul>
      </c:when>
      <c:otherwise>
        <p><em>Chưa có người dùng nào.</em></p>
      </c:otherwise>
    </c:choose>

    <p><strong>Customer Service Email:</strong> custserv@murach.com</p>

    <form action="emailList" method="get">
      <input class="btn" type="submit" value="Return">
    </form>
  </div>

  <c:import url="/include/footer.jsp" />
</body>
</html>
