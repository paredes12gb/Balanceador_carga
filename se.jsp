<html>
<body>
Este es el host:<h1><%=java.net.InetAddress.getLocalHost().getHostName()%></h1>
<%@page import=”java.util.*” session=”true” %>
<% HttpSession session=request.getSession(); 
if(session.getAttribute("cont")==null) {
Integer c=new Integer(1);
sesion.setAttribute(“cont”,c);
} else {
Integer c= (Integer)session.getAttribute("cont");
}
%>

<h1><% out.print(session.getAttribute("cont")); %></h1>
refrescado:<h1><p id="p"></p></h1>
</body>
<script>
if (!sessionStorage.getItem("visita")) {
  sessionStorage.setItem("visita", 0);
} else {
let num = sessionStorage.getItem("visita");
num++;
sessionStorage.setItem("visita", num);
const p = document.getElementById("p");
p.innerHTML = num;
}
</script>
</html>
