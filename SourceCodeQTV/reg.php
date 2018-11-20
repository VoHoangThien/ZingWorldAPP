<?php
ob_start();
$title='Đăng ký';
include('system/include/settings.inc');
include('system/include/head.inc');
echo '<div class="title"><center>Đăng ký thành viên</center></div><div>';
echo '<center><img src="member.gif" width = 120px height = 120px></center>';
if($thonline == 0)
{
if (isset($_GET['null']))
{ echo'<font color="red">Không được để trống</font><br>';}
if (isset($_GET['tenerr']))
{ echo'<font color="red">Họ tên vượt quá kí tự cho phép</font><br>';}
if (isset($_GET['ktdb']))
{ echo'<font color="red">Username không được chứa ký tự đặc biệt</font><br>';}
if (isset($_GET['tktt']))
{ echo'<font color="red">Username đã tồn tại</font><br>';}
if (isset($_GET['chieudai']))
{ echo'<font color="red">Username hoặc Password vượt quá kích thước quy định</font><br>';}
if (isset($_GET['khoangtrang']))
{ echo'<font color="red">Username hoặc Password không được chứa khoảng trắng</font><br>';}
if (isset($_GET['sdterr']))
{ echo'<font color="red">Số điện thoại không hợp lệ</font><br>';}
if (isset($_GET['gioitinherr']))
{ echo'<font color="red">Giới tính không hợp lệ</font><br>';}
if (isset($_GET['ngaysinherr']))
{ echo'<font color="red">Ngày sinh không hợp lệ</font><br>';}


switch($_GET[mod])
{
default:
echo '<b><center>Hãy điền đầy đủ các thông tin dưới đây</center>';
echo '<hr>';
echo '*Lưu ý: Nếu nhập khoảng trắng trong Password thì sẽ tự mất. Yêu cầu trên 5 tuổi để đăng ký thành viên<br>';
echo '<form action="reg.php?mod=add" method="post">';
echo"Username: (không quá 10 ký tự, chỉ được nhập chữ và số)<br/>
<input class='input' type=\"text\" value=\"\" size=\"50\" name=\"usr\"/><br/>
Password: (không quá 20 ký tự)<br/>
<input class='input' type=\"text\" value=\"\" size=\"50\" name=\"pass\"/><br/>
Họ và chữ lót: (không quá 20 kí tự) <br/>
<input class='input' type=\"text\" value=\"\" size=\"50\" name=\"holot\"/><br/>
Tên: (Không quá 10 kí tự) <br/>
<input class='input' type=\"text\" value=\"$b[mp3]\" size=\"50\" name=\"ten\"/><br/>
SDT:<br/>
<input class='input' type=\"numbers\" value=\"\" size=\"50\" name=\"sdt\"/><br/>
Giới tính:<br/>
<input class='input' type=\"text\" value=\"\" size=\"50\" name=\"gioitinh\"/><br/>
Ngày sinh: (dạng YYYY-MM-DD) <br/>
<input class='input' type=\"text\" value=\"\" size=\"7\" name=\"nam\"/>
<input class='input' type=\"text\" value=\"\" size=\"5\" name=\"thang\"/>
<input class='input' type=\"text\" value=\"\" size=\"5\" name=\"ngay\"/><br/>
<input class=\"button\" type=\"submit\" value=\"Đăng ký\" /></form>";
break;
case 'add':
$_POST['pass'] = trim($_POST['pass']);
$dater=date("Y-m-d");
$ngaysinh = $_POST['nam']."-".$_POST['thang']."-".$_POST['ngay'];
$tk = mysql_query("SELECT * FROM `users` WHERE `usr` = '$_POST[usr]'");
$tkr=mysql_num_rows($tk);
$so = '/^[0-9]+$/';
if(($_POST[usr]) == '' || ($_POST[pass]) == '' || ($_POST[holot]) == '' || ($_POST[ten]) == '' || ($_POST[sdt]) == '' || ($_POST[gioitinh]) == '' || ($_POST[ngay]) == '' || ($_POST[thang]) == '' || ($_POST[nam]) == '')
        {header ('Location: reg.php?null');exit;}
if (preg_match('/^[a-zA-Z0-9]+$/', ($_POST['usr'])) == false)
        {header ('Location: reg.php?ktdb');exit;}
if($tkr > 0)
        {header ('Location: reg.php?tktt');exit;}
if(strlen($_POST[usr]) > 10 || strlen($_POST[pass]) > 20)
        {header ('Location: reg.php?chieudai');exit;}

/*if(prg_match("/\s/", ($_POST[usr])) || prg_match("/\s/", ($_POST[pass])))
        {header ('Location: reg.php?khoangtrang');exit;}*/
if (preg_match($so, ($_POST[sdt])) == false)
{header ('Location: reg.php?sdterr');exit;}
if(@strlen($_POST['holot']) > 20 || @strlen($_POST['ten']) > 10)
        {header ('Location: reg.php?tenerr');exit;}
if(($_POST[sdt]) < 1 || @strlen($_POST[sdt]) < 9 || @strlen($_POST[sdt]) > 11 )
        {header ('Location: reg.php?sdterr');exit;}
if($_POST[gioitinh]!='Nam' and ($_POST[gioitinh])!='Nu')
        {header ('Location: reg.php?gioitinherr');exit;}
if(preg_match($so, ($_POST[ngay])) == false || preg_match($so, ($_POST[thang])) == false || preg_match($so, ($_POST[nam])) == false || (($_POST[ngay]) < 1 || ($_POST[ngay]) > 31) || (($_POST[thang]) < 1 || ($_POST[thang]) > 12) || (($_POST[nam]) > 2013 || ($_POST[nam]) < 1920))
        {header ('Location: reg.php?ngaysinherr');exit;}
if($_POST[thang] == 2 and $_POST[ngay]>29)
        {header ('Location: reg.php?ngaysinherr');exit;}
mysql_query("INSERT INTO
        `users` SET
        `usr` = '$_POST[usr]',
        `pass` = '$_POST[pass]',
        `data_reg` = '$dater',
        `holot` = '$_POST[holot]',
        `ten` = '$_POST[ten]',
        `ngaysinh` = '$ngaysinh',
        `SDT` = '$_POST[sdt]',
        `gioitinh` = '$_POST[gioitinh]',
        `capdo` = 'Thường'");
$myfile = fopen("demo/taikhoan.txt", "w");
$req = mysql_query("SELECT * FROM `users` ORDER BY `id` ASC");
$avto=mysql_num_rows($req);
{
if($avto>=1){
While($mag = mysql_fetch_array($req)){
        $txt = $mag[usr]."#".$mag[pass]."#".$mag[usr]."#".$mag[data_reg]."#".$mag[holot]."#".$mag[ten]."#".$mag[ngaysinh]."#".$mag[SDT]."#".$mag[gioitinh]."#".$mag[capdo]."\n";
        fwrite($myfile, $txt);
}

}
}
        

fclose($myfile);
echo 'Đăng ký thành công, hãy đăng nhập vào ứng dụng để nghe nhạc.<br><a href=index.php>Trang chủ</a>';
break;

}

}else{
header ('Location: index.php');
}
echo '<hr>';
include('system/include/end.inc');
?>