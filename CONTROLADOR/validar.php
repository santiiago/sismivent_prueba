<?php 
$p1="eskobar";
$p2="user";
$p3="admin";
$c1=md5("eskobar");
$c2=md5("user");
$c3=md5("admin");

if (($_POST["username"]==$p1) && (md5($_POST["password"])==$c1) || 
	($_POST["username"]==$p2) && (md5($_POST["password"])==$c2) || 
	($_POST["username"]==$p3) && (md5($_POST["password"])==$c3) ){
		session_start();
		$session = $_POST['username'];

 $_SESSION["usuario"] = $_POST["username"];

	echo "<img src='img/bien.jpg' border='0' width='300' height='200'>".
		 "<br>"."Session Iniciada por: "."<br>".$session;  

}
else{
	echo "<img src='img/mal.jpg' border='0' width='300' height='200'>";  
	echo "usuario no valido";
}
?>