<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>hy_spring4</title>
</head>
<body>
	<a href="/dept/getDeptList.hy">/dept/getDeptList.hy</a>
	<br />
	<a href="dept/getDeptList2.hy">dept/getDeptList2.hy</a>
	<br />
	<!-- 	<a href="dept/deptInsert.hy">dept/deptInsert.hy</a>
	<br /> -->
	<form action="dept/deptInsert.hy">
		<table>
			<caption>dept/deptInsert.hy</caption>
			<tr>
				<td>deptno</td>
				<td><input id="num" type="text" name="deptno"
					onkeydown="return showKeyCode(event)" maxlength="2" /></td>
			</tr>
			<tr>
				<td>dname</td>
				<td><input type="text" name="dname" maxlength="14" /></td>
			</tr>
			<tr>
				<td>loc</td>
				<td><input type="text" name="loc" maxlength="13" /></td>
			</tr>
			<tr>
				<td></td>
				<td><input type="submit" /></td>
			</tr>
		</table>
	</form>
	<a href="dept/deptInsert2.hy">dept/deptInsert2.hy</a>
	<br />
	<a href="dept/deptUpdate.hy">dept/deptUpdate.hy</a>
	<br />
	<a href="dept/deptDelete.hy">dept/deptDelete.hy</a>
	<br />
	<a href="dept/cudDept.hy">dept/cudDept.hy</a>
	<br />
	<a href="dept/deptDelete.hy">dept/deptDelete.hy</a>
	<br />

	<script>
		function showKeyCode(event) {
			event = event || window.event;
			var keyID = (event.which) ? event.which : event.keyCode;
			if ((keyID >= 48 && keyID <= 57) || (keyID >= 96 && keyID <= 105)) {
				return;
			} else {
				return false;
			}
		}
		function len_chk() {
			event = event || window.event;
			var frm = document.insertFrm.test;

			if (frm.value.length > 4000) {
				alert("글자수는 영문4000, 한글2000자로 제한됩니다.!");
				frm.value = frm.value.substring(0, 4000);
				frm.focus();
			}

		}
	</script>
</body>
</html>