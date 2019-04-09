<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html>
<script type="text/javascript">
function checkNull(input) {
	if (!input) {
		return "";
	} else {
		return input;
	}
}
document.getElementById('nombre').value = checkNull(usuario.name);
document.getElementById('apell1').value = checkNull(usuario.apell1);
document.getElementById('apell2').value = checkNull(usuario.apell2);
document.getElementById('direccion').value = checkNull(usuario.direccion);
document.getElementById('descripcion').value = checkNull(usuario.description);
document.getElementById('estudios').value = checkNull(usuario.studies);
</script>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Editar perfil usuario</title>
<body>
<div>Nombre: <input type="text" name="nombre" id="nombre" value="" /></div>
<div>Primer apellido: <input type="text" name="apell1" id="apell1" value="" /></div>
<div>Segundo apellido: <input type="text" name="apell2" id="apell2" value="" placeholder="Deja en blanco si carece de ello" /></div>
<div>Dirección: <input type="text" name="direccion" id="direccion" value="" /></div>
<div>Descripción: <input type="text" name="descripcion" id="descripcion" value="" /></div>
<div>Estudios: <input type="text" name="estudios" id="estudios" value="" /></div>
<div>¿Buscando trabajo?: <select name="buscaTrabajo"><option value="true">Sí</option><option value="false" selected>No</option>
	</select></div>
<div>Currículums: </div>
<div>
	<ul>
		<c:forEach items="${ aVerCómoLoPonemosBienAquíCuidadoQueNoEstáHechoAún }" var="plant">
			<li>${plant}</li>
		</c:forEach>
	</ul>
</div>
</body>
</html>