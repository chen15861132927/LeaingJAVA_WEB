/**
 * 
 */
function checkName() {
	var username = f.username.value;
	if (username == "") {
		alert("请输入用户名");
	} else {
		window.open("checkName.jsp?username=" + encodeURI(username), "check",
				"menubar=no,height=300,width=400,left=300,top=80");
	}
}
function check() {
	if (f.username.value == "") {
		alert("用户名不能为空");
		return false;
	} else if (f.password.value == "" || f.password.value != f.checkpass.value) {
		alert("密码不能为空或者两次密码不一致");
		return false;
	} else {
		return true;
	}
}