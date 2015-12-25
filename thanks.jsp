<%@ page language="java" %>
<html>
<head>
<script type="application/javascript">
    function getip(json){
      alert(json.ip); // alerts the ip address
    }
</script>

<script type="application/javascript" src="http://jsonip.appspot.com/?callback=getip"></script>



</head>
<body>
<table border="1">
<tr><td><b>Property Names</b></td>
<td><b>Property Values</b></td></tr>
<%
final String[] properties = {
"java.runtime.name",
"java.vm.vendor",
"java.runtime.version",
"java.vendor.url",
"user.timezone",
"user.language",
"os.name",
"sun.desktop"
};
for (int i = 0; i < properties.length; i++) {
String pname = properties[i];
String pvalue = System.getProperty(pname);
%>
<tr>
<td><%= pname %></td>
<td><%= pvalue %></td>
</tr>
<% } %>




</table>
</body>
</html>