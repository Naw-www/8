<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<c:import url="/include/header.html" />
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Email List</title>
  <style>
    html, body { height: 100%; margin: 0; }
    body {
      display: flex; align-items: center; justify-content: center;
      background: #eef6f9; font-family: Arial, sans-serif;
    }
    
    .card {
      width: min(520px, 92vw);
      background: #fff; padding: 24px 28px;
      border-radius: 10px; box-shadow: 0 6px 24px rgba(0,0,0,.08);
    }
    
    h1 { color: teal; margin-top: 0; }
    form { margin-top: 10px; }
    label { display: inline-block; width: 110px; margin-bottom: 8px; }
    input[type="text"] { padding: 4px; width: 220px; }
    input[type="submit"] { padding: 6px 12px; border: 1px solid #999; background:#f0f0f0; cursor:pointer; border-radius:6px; }
    input[type="submit"]:hover { background:#ddd; }
    
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
    <h1>Join our email list</h1>
    <p>To join our email list, enter your name and email address below.</p>
    <form action="emailList" method="post">
      <label>Email:</label>
      <input type="text" name="email"><br>
      <label>First Name:</label>
      <input type="text" name="firstName"><br>
      <label>Last Name:</label>
      <input type="text" name="lastName"><br><br>
      <input type="submit" value="Join Now">
    </form>
  </div>
  <c:import url="/include/footer.jsp" />
</body>
</html>
