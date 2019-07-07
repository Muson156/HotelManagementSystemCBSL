function init() {
		//window.setTimeout(changeImg,2000);
		window.setInterval(changeImg,3000);
	}
	var pathArray = new Array(
		"images/banner1.jpg",
		"images/banner2.jpg",
		"images/banner3.jpg",
		"images/banner4.jpg"
	);
	var obt1 = document.getElementById("prev");//前一张图片的按钮
    var obt2 = document.getElementById("next");//后一张图片的按钮
	var index = 0;
	function changeImg() {
		nextImg();
	}
	
	obt1.onclick = prevImg;//当点击前一张按钮时,调用方法 显示前一张图片
    obt2.onclick = nextImg;//当点击后一张按钮是,调用方法显示后一张图片
    
	function preImg(){
		var myImg = document.getElementById("myImg");
		//myImg.src="img/2.jpg";
		index --;
		if(index<0){
			index = pathArray.length-1;
		}
		myImg.src= pathArray[index];
	}
	function nextImg(){
		var myImg = document.getElementById("myImg");
		//myImg.src="img/2.jpg";
		index ++;
		if(index>=pathArray.length){
			index = 0;
		}
		myImg.src= pathArray[index];
	}
	//var loginDiv = document.getElementById("login");
	function openLogin() {
		var loginDiv = document.getElementById("login");
		var registerDiv = document.getElementById("register");
		loginDiv.style.display="block";
		registerDiv.style.display="none";
	}
	function closeLogin() {
		var loginDiv = document.getElementById("login");
		//var username = document.getElementById("username").value;
		//var password = document.getElementById("password").value;
		//username.value="";
		//password.value="";
		loginDiv.style.display="none";
	}
	
	function checkLogin() {
		if(document.form1.username.value=="" || document.form1.password.value==""){
			alert("用户名或密码为空！");
			return false;
		}
		return true;
	}
	
	
	function openRegister() {
		var registerDiv = document.getElementById("register");
		var loginDiv = document.getElementById("login");
		registerDiv.style.display="block";
		loginDiv.style.display="none";
	}
	function closeRegister() {
		var registerDiv = document.getElementById("register");
		registerDiv.style.display="none";
	}
	
	function checkRegister(){
		//alert("提交成功");
		var isPass = true;
		var Rname = document.getElementById("Rname");
		var Rusername = document.getElementById("Rusername");
		var Rphone = document.getElementById("Rphone");
		var usernameMsg = document.getElementById("usernameMsg");
		var RnameMsg = document.getElementById("RnameMsg");
		var emailMsg = document.getElementById("emailMsg");
		var RphoneMsg = document.getElementById("RphoneMsg");
		var passwordMsg = document.getElementById("passwordMsg");
		var length = Rname.value.length;
		var length2 = Rusername.value.length;
		var length3 = Rphone.value,length;
		if(length<1){
			//alert("用户名长度必须是3-6位");
			RnameMsg.innerText="姓名不能为空";
			isPass = false;
		}else{
			RnameMsg.innerText="";
		}
		
		if(length2<3 ||length2>8){
			//alert("用户名长度必须是3-8位");
			usernameMsg.innerText="用户名必须是3-8位";
			isPass = false;
		}else{
			usernameMsg.innerText="";
		}
		
		var Remail = document.getElementById("Remail").value;
		var p = /^\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*$/;
		if(p.test(Remail)==false){
			//alert("邮箱格式不正确");
			emailMsg.innerText="邮箱格式不正确";
			isPass = false;
		}else{
			emailMsg.innerText="";
		}
		
		var length3 = Rphone.value.length;
		if(length3<1){
			RphoneMsg.innerText="电话号码不能为空";
			isPass = false;
		}else{
			RphoneMsg.innerText="";
		}
		
		var Rpassword = document.getElementById("Rpassword").value;
		var Rrepassword = document.getElementById("Rrepassword").value;
		if(Rpassword.length<6 || Rpassword.length>10){
			//alert("密码长度必须在6-10位之间");
			passwordMsg.innerText="密码长度必须在6-10位之间";
			isPass = false;
		}else{
			passwordMsg.innerText="";
			if(Rpassword!=Rrepassword){
				//alert("两次密码输入不一致");
				passwordMsg.innerText="两次密码输入不一致";
				isPass = false;
			}else{
				passwordMsg.innerText="";
			}
		}
	
		
		return isPass;
		
	}
	
	//失去焦点校验
	function checkRname(Rname){
		var length = Rname.value.length;
		if(length<1){
			RnameMsg.innerText="姓名不能为空";
		}else{
			RnameMsg.innerText="";
		}
	}
	function checkUsername(Rusername){
		var length = Rusername.value.length;
		if(length<3 || length>8){
			usernameMsg.innerText="用户名长度必须是3-8位";
		}else{
			usernameMsg.innerText="";
		}
	}
	function checkEmail(Remail){
		var emailMsg = document.getElementById("emailMsg");
		var p = /^\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*$/;
		if(p.test(Remail.value)==false){
			emailMsg.innerText="邮箱格式不正确";
		}else{
			emailMsg.innerText="";
		}
	}
	function checkPhone() {
		var Rphone = document.getElementById("Rphone");
		var RphoneMsg = document.getElementById("RphoneMsg");
		var length3 = Rphone.value.length;
		if(length3<1){
			RphoneMsg.innerText="电话号码不能为空";
			isPass = false;
		}else{
			RphoneMsg.innerText="";
		}
	}
	function checkPassword(){
		var Rpassword = document.getElementById("Rpassword").value;
		var Rrepassword = document.getElementById("Rrepassword").value;
		var passwordMsg = document.getElementById("passwordMsg");
		if(Rpassword.length<6 || Rpassword.length>10){
			passwordMsg.innerText="密码长度必须在6-10位之间";
		}else{
			passwordMsg.innerText="";
			if(Rpassword!=Rrepassword){
				passwordMsg.innerText="两次密码输入不一致";
			}else{
				passwordMsg.innerText="";
			}
		}
	}
	
	
	