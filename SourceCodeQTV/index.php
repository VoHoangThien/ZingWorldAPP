<?php



ob_start();
$title='Thế giới âm nhạc';
include('system/include/settings.inc');
include('system/include/head.inc');

if($thonline == 1)
	{

	header('Location: choosing.php?');

	}
 
    echo '<center><img src="logo.gif" /></center>';
    echo'<div class = "opis" ><center>';
echo 'Đây là trang quản lý dành cho Quản Trị Viên Cấp cao của ứng dụng OU Music. Những thành viên khác không có quyền đăng nhập vào đây. Nếu không phải Admin vui lòng thoát ra. ';

echo'</center></div>';
 echo'<div class = "opis" ><center>';

echo'</center></div>';
if (isset($_GET['error']))
{ echo'<color="red">Tên đăng nhập hoặc mật khẩu QTV không chính xác.';}
echo'<div class = "auth" >';
echo'<div class = "knopka" >';

echo'<form method="post" action="enter.php">';

echo "<b>Tên đăng nhập</b><br/>";

echo "<input name=\"name\" maxlength=\"20\" title=\"nick\" emptyok=\"true\"/><br/>";

echo "<b>Mật khẩu:</b><br/>";
echo "<input name=\"pass\"  type=\"password\"  maxlength=\"20\" title=\"password\" emptyok=\"true\"/><br/>";
echo '<input class="button" type="submit" value="Đăng nhập"/>';
echo'</div></form>';
echo'</div><div class = "opis" >';
list($total_reg) = mysql_fetch_row(mysql_query("SELECT count(id) FROM users"));
echo '<a href="index.php">Trang chủ</a> <br />';
echo'</div>';

include('system/include/end.inc');
?>