<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="TextoVoz.aspx.vb" Inherits="BingoPyV.TextoVoz" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>

            <h1>Texto a voz con JS</h1>
			<p>
				<a href="//parzibyte.me/blog" target="_blank">By Parzibyte</a>
			</p>
			<label for="voces">Selecciona la voz:</label>
			<br>
		   <select id="voces">
				</select>
				<br>
				<br>
				Escribe tu mensaje:<br>
				<textarea id="mensaje" cols="30" rows="5"></textarea>
				<br><br>
				<button id="btnEscuchar">Escuchar</button>
			   

        </div>
    </form>
	<script src="scripts/TextoVoz.js"></script>
</body>
</html>
