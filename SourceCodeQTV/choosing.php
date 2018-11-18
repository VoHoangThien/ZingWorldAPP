<?php
ob_start();
$title='Quản lý';
include('system/include/settings.inc');
include('system/include/head.inc');
echo '<div class="title"><center>Chức năng Quản Trị Viên</center></div><div>';
if($thonline == 1)
{
    echo '<center><img src="qtv.png" width="30%" height="25%"></center>';
switch($_GET[mod])
{
default:
    echo '<br><br><div style="border-bottom: 1px solid #0099FF; margin-left: 4px; margin-right: 4px;"></div><div style="background-color: #fff; border-left: 2px solid #0099FF; border-right: 2px solid #0099FF; padding-top: 1px; margin-left: 2px; margin-right: 2px;"></div><div style="background-color: #fff; border-left: 1px solid #0099FF; border-right: 1px solid #0099FF; padding-top: 2px; margin-left: 1px; margin-right: 1px;"></div><div style="background: #fff repeat bottom; padding-left: 2px; border-left: 1px solid #0099FF; padding-right: 3px; border-right: 1px solid #0099FF;" align="center"><b> <b style="color: #0099FF;">Dưới đây là các chức năng mà Quản Trị có thể dùng </b> </b> </a></div><div style="background-color: #fff; border-left: 1px solid #0099FF; border-right: 1px solid #0099FF; padding-top: 2px; margin-left: 1px; margin-right: 1px;"></div><div style="background-color: #fff; border-left: 2px solid #0099FF; border-right: 2px solid #0099FF; padding-top: 1px; margin-left: 2px; margin-right: 2px;"></div><div style="border-bottom: 1px solid #0099FF; margin-left: 4px; margin-right: 4px;"></div></td><table width="100%"> <tbody><tr> <td width="50%"> <div style="background-color: #ffffff; border-style: double; border-width: 1px; border-color: #88beff;" align="center"> <b> <b style="color:#FF0000;"><a href="choosing.php?mod=ds_bh"> <b> <b style="color: #ff00ff;">Danh sách bài hát</b> </b> </a></b> </b> </div> <b> </b> </td> <td width="50%"> <b> <b style="color: #FF0000;"> </b> </b> <div style="background-color: #ffffff; border-style: double; border-width: 1px; border-color: #88beff;" align="center"> <b> <b style="color:#FF0000;"> <b> <b style="color:#FF0000;"><a href="choosing.php?mod=ds_tv"> <b> <b style="color: #FF9900;">Danh sách thành viên</b> </b> </a></b> </b> </b> </b> </div> </td> </tr> </tbody></table><td><div style="border-bottom: 1px solid #0099FF; margin-left: 4px; margin-right: 4px;"></div><div style="background-color: #fff; border-left: 2px solid #0099FF; border-right: 2px solid #0099FF; padding-top: 1px; margin-left: 2px; margin-right: 2px;"></div><div style="background-color: #fff; border-left: 1px solid #0099FF; border-right: 1px solid #0099FF; padding-top: 2px; margin-left: 1px; margin-right: 1px;"></div><div style="background: #fff repeat bottom; padding-left: 2px; border-left: 1px solid #0099FF; padding-right: 3px; border-right: 1px solid #0099FF;" align="center"><a href="choosing.php?mod=exit"> <b> <b style="color: #00CC00;">Đăng xuất</b> </b> </a></div><div style="background-color: #fff; border-left: 1px solid #0099FF; border-right: 1px solid #0099FF; padding-top: 2px; margin-left: 1px; margin-right: 1px;"></div><div style="background-color: #fff; border-left: 2px solid #0099FF; border-right: 2px solid #0099FF; padding-top: 1px; margin-left: 2px; margin-right: 2px;"></div><div style="border-bottom: 1px solid #0099FF; margin-left: 4px; margin-right: 4px;"></div></td></div>';
    
    echo '<hr size="5px" color="black" /> ';
break;
case 'exit':
setcookie('log', '');
setcookie('pas', '');
$thonline == 0;
session_destroy();

    echo '<b>Thoát thành công</b><br>';

break;
case 'ds_tv':
    echo '<center><b><font color="#01DF01">Dưới đây là danh sách thành viên có trong hệ thống</font></b></center>';
    echo '<br><table border="1" width="100%"><tbody><tr><td align="center" bgcolor="#D0F5A9" width="5%"><font color="#004800">Mã thành viên</font></td><td align="center" bgcolor="#D0F5A9" width="10%"><font color="#004800">Tên nặc danh</font></td><td align="center" bgcolor="#D0F5A9" width="15%"><font color="#004800">Họ và chữ lót</font></td><td align="center" bgcolor="#D0F5A9" width="10%"><font color="#004800">Tên</font></td>
    <td align="center" bgcolor="#D0F5A9" width="20%"><font color="#004800">Ngày sinh</font></td><td align="center" bgcolor="#D0F5A9" width="10%"><font color="#004800">SĐT</font></td><td align="center" bgcolor="#D0F5A9" width="5%"><font color="#004800">Giới tính</font></td><td align="center" bgcolor="#D0F5A9" width="25%"><font color="#004800">Cấp độ</font></td></tr></tbody></table>';
$at_page=10;
$page = (int)$_GET['page'];
$s=mysql_result(mysql_query("SELECT COUNT(`id`) FROM `users`"),0);
$total = intval(($s - 1) / $at_page) + 1;
$page = (int)$page;
if(empty($page) or $page < 0) $page = 1;
if($page > $total) $page = $total;
$from = $page * $at_page - $at_page;
$req = mysql_query("SELECT * FROM `users` ORDER BY `id` ASC LIMIT ".$from.",".$at_page."");
$avto=mysql_num_rows($req);
{

if($avto>=1){
While($mag = mysql_fetch_array($req)){

 echo '<table border="1" background="anhnen.jpg" width="100%"><tbody><tr><td align="center" width="5%"><font color="#004800">'.$mag[id].'</font></td> <td align="center" width="10%"><font color="#004800">'.$mag[usr].'</font></td><td align="center" width="15%"><font color="#004800">'.$mag[holot].'</font></td><td align="center" width="10%"><font color="#004800">'.$mag[ten].'</font></td><td align="center" width="20%"><font color="#004800">'.$mag[ngaysinh].'</font></td><td align="center" width="10%"><font color="#004800">'.$mag[SDT].'</font></td><td align="center" width="5%"><font color="#004800">'.$mag[gioitinh].'</font></td><td align="center" width="15%"><font color="#004800">'.$mag[capdo].'</font></td><td align="center" width="10%"><font color="red"><a href="choosing.php?mod=sua_tv&&maso='.$mag[id].'">[Sửa]</a></font></td></tr></tbody></table>';

}}else{
echo'<b>Không có thành viên nào trong danh sách.</b><br/>';}
}
echo '<div class="trang">';
echo'<b>';
if($s > 1)
{
if($s > $onpage) echo '';
if ($page >= 10) $go1 = '<a href= ?mod=ds_tv&page=1>1</a> ... ';
if ($page != $total and $page != $total-1) $outpage = ' ... <a href= ?mod=ds_tv&page=' .$total. '>'.$total.'</a>';
if($page - 2 > 0) $page2left = ' <a href= ?mod=ds_tv&page='. ($page - 2) .'>'. ($page - 2) .'</a> ';
if($page - 1 > 0) $page1left = '<a href= ?mod=ds_tv&page='. ($page - 1) .'>'. ($page - 1) .'</a> ';
if($page + 2 <= $total) $page2right = ' <a href= ?mod=ds_tv&page='. ($page + 2) .'>'. ($page + 2) .'</a>';
if($page + 1 <= $total) $page1right = ' <a href= ?mod=ds_tv&page='. ($page + 1) .'>'. ($page + 1) .'</a>';
if($s > $onpage) echo 'Trang: '.$go1.''.$page2left.$page1left.'<b>'.$page.'</b>'.$page1right.$page2right.''.$outpage.'<br/>';
}
echo'</b>';
echo'</div>';
break;
case 'sua_tv':
 $id=abs(intval($_GET['maso']));
    $req1 = mysql_query("SELECT * FROM `users` WHERE `id`='$id'");
    $b = mysql_fetch_array($req1);
$avto1=mysql_num_rows($req1);
if($avto1<1)
{
    echo 'Thành viên không tồn tại.<br>';
break;
}
else
{
    echo '<b><center>Hãy sửa lại các thông tin theo mong muốn</center>
    <br>Mã số : '.$id.'</b><br>';
    echo '<form action="choosing.php?mod=sua_tvxong&id='.$id.'" method="post">';
echo"Tên nặc danh:<br/>
<input class='input' type=\"text\" value=\"$b[usr]\" size=\"100\" name=\"usr\"/><br/>
Họ va chữ lót:<br/>
<input class='input' type=\"text\" value=\"$b[holot]\" size=\"50\" name=\"holot\"/><br/>
Tên:<br/>
<input class='input' type=\"text\" value=\"$b[ten]\" size=\"50\" name=\"ten\"/><br/>
Ngày sinh: dạng (YYYY-MM-DD)<br/>
<input class='input' type=\"text\" value=\"$b[ngaysinh]\" size=\"100\" name=\"ngaysinh\"/><br/>
SĐT ( tối đa 11 số)<br/>
<input class='input' type=\"text\" value=\"$b[SDT]\" size=\"100\" name=\"SDT\"/><br/>
Giới tính<br/>
<input class='input' type=\"text\" value=\"$b[gioitinh]\" size=\"100\" name=\"gioitinh\"/><br/>
Cấp độ (Thường hoặc Vip)<br/>
<input class='input' type=\"text\" value=\"$b[capdo]\" size=\"100\" name=\"capdo\"/><br/>
<input class=\"button\" type=\"submit\" value=\"Sửa\" /></form>";
}
break;
case 'sua_tvxong':
    $id=abs(intval($_GET['id']));
    $req1 = mysql_query("SELECT * FROM `users` WHERE `id`='$id'");
$avto1=mysql_num_rows($req1);
    if(($_POST[usr]) == '' or ($_POST[holot]) == '' or ($_POST[ten]) == '' or ($_POST[ngaysinh]) == '' or ($_POST[SDT]) == '' or ($_POST[gioitinh]) == '' or ($_POST[capdo]) == '' )
        echo '<b><font color=red>Không được để trống</font></b><br/>';
        else
            if($avto1<1)
             {
                echo 'Thành viên không tồn tại.<br>';
            }
            else
        {
            mysql_query("UPDATE
            `users` SET
            `usr` = '$_POST[usr]',
            `holot` = '$_POST[holot]',
            `ten` = '$_POST[ten]',
            `ngaysinh` = '$_POST[ngaysinh]',
            `SDT` = '$_POST[SDT]',
            `gioitinh` = '$_POST[gioitinh]',
            `capdo` = '$_POST[capdo]'
            WHERE `id`='$id' LIMIT 1") or die (mysql_error());
            echo '<b><font color=green>Sửa thành công</font></b><br/>';
        }
break;
case 'xoa_tv':
$id=abs(intval($_GET['maso']));
    $req1 = mysql_query("SELECT * FROM `users` WHERE `id`='$id'");
$avto1=mysql_num_rows($req1);
if($avto1>=1){
    echo '<b>Xóa thành công</b><br>';
    mysql_query("DELETE FROM `users` WHERE `id`='$id'");
}else
echo '<b>Thành viên không tồn tại</b><br>';
break;
case 'ds_bh':
    echo '<center><b><font color="#01DF01">Dưới đây là danh sách bài hát có trong hệ thống</font></b></center>';
    echo '<br><table border="1" width="100%"><tbody><tr><td align="center" bgcolor="#D0F5A9" width="10%"><font color="#004800">Mã số</font></td><td align="center" bgcolor="#D0F5A9" width="20%"><font color="#004800">Tên bài hát</font></td><td align="center" bgcolor="#D0F5A9" width="15%"><font color="#004800">Thể loại</font></td><td align="center" bgcolor="#D0F5A9" width="15%"><font color="#004800">Ca sĩ</font></td><td align="center" bgcolor="#D0F5A9" width="40%"><font color="#004800">Đường dẫn</font></td></tr></tbody></table>';
$at_page=10;
$page = (int)$_GET['page'];
$s=mysql_result(mysql_query("SELECT COUNT(`idBH`) FROM `baihat`"),0);
$total = intval(($s - 1) / $at_page) + 1;
$page = (int)$page;
if(empty($page) or $page < 0) $page = 1;
if($page > $total) $page = $total;
$from = $page * $at_page - $at_page;
$req = mysql_query("SELECT * FROM `baihat` ORDER BY `idBH` ASC LIMIT ".$from.",".$at_page."");
$avto=mysql_num_rows($req);
{

if($avto>=1){
While($mag = mysql_fetch_array($req)){
echo '<table border="1" background="anhnen.jpg" width="100%" height="5%"><tbody><tr><td align="center" width="10%"><font color="#1C1C1C">'.$mag[idBH].'</font></td><td align="center" width="20%"><font color="#1C1C1C">'.$mag[TenBH].'</font></td><td align="center" width="15%"><font color="#1C1C1C">'.$mag[theloai].'</font></td><td align="center" width="15%"><font color="#1C1C1C">'.$mag[casi].'</font></td><td align="center" width="30%"><font color="#1C1C1C">'.$mag[mp3].'</font></td><td align="center" width="5%"><font color="red"><a href="choosing.php?mod=xoa_bh&&maso='.$mag[idBH].'">[Xóa]</a></font></td><td align="center" width="5%"><font color="red"><a href="choosing.php?mod=sua_bh&&maso='.$mag[idBH].'">[Sửa]</a></font></td></tr></tbody></table>';

}}else{
echo'<b>Không có bài hát nào trong danh sách.</b><br/>';}
}
echo '<div class="trang">';
echo'<b>';
if($s > 1)
{
if($s > $onpage) echo '';
if ($page >= 10) $go1 = '<a href= ?mod=ds_bh&page=1>1</a> ... ';
if ($page != $total and $page != $total-1) $outpage = ' ... <a href= ?mod=ds_bh&page=' .$total. '>'.$total.'</a>';
if($page - 2 > 0) $page2left = ' <a href= ?mod=ds_bh&page='. ($page - 2) .'>'. ($page - 2) .'</a> ';
if($page - 1 > 0) $page1left = '<a href= ?mod=ds_bh&page='. ($page - 1) .'>'. ($page - 1) .'</a> ';
if($page + 2 <= $total) $page2right = ' <a href= ?mod=ds_bh&page='. ($page + 2) .'>'. ($page + 2) .'</a>';
if($page + 1 <= $total) $page1right = ' <a href= ?mod=ds_bh&page='. ($page + 1) .'>'. ($page + 1) .'</a>';
if($s > $onpage) echo 'Trang: '.$go1.''.$page2left.$page1left.'<b>'.$page.'</b>'.$page1right.$page2right.''.$outpage.'<br/>';
}
echo'</b>';
echo'</div>';
echo'<b><a href="choosing.php?mod=them_bh">Thêm bài hát</a></b><br/>';
echo'<b><a href="choosing.php?mod=capnhat_txt">Cập nhật dữ liệu</a></b><br/>';
break;
case 'them_bh':
    echo '<center><b>Hãy nhập thông tin bài hát cần thêm vào hệ thống. Đường dẫn được lấy từ nguồn Zing Mp3</b></center><hr>';
    echo '<form action="choosing.php?mod=them" method="post">';
echo"Tên bài hát:<br/>
<input class='input' type=\"text\" value=\"\" size=\"100\" name=\"ten\"/><br/>
Ca sĩ:<br/>
<input class='input' type=\"text\" value=\"\" size=\"50\" name=\"casi\"/><br/>
Thể loại:<br/>
<input class='input' type=\"text\" value=\"\" size=\"50\" name=\"theloai\"/><br/>
Đường dẫn:<br/>
<input class='input' type=\"text\" value=\"\" size=\"100\" name=\"duongdan\"/><br/>
<input class=\"button\" type=\"submit\" value=\"Thêm\" /></form>";
break;
case 'them':
    if(($_POST[ten]) == '' or ($_POST[casi]) == '' or ($_POST[theloai]) == '' or ($_POST[duongdan]) == '' )
        echo '<b><font color=red>Không được để trống</font></b><br/>';
        else
        {
            mysql_query("INSERT INTO
            `baihat` SET
            `TenBH` = '$_POST[ten]',
            `theloai` = '$_POST[theloai]',
            `casi` = '$_POST[casi]',
            `mp3` = '$_POST[duongdan]'") or die (mysql_error());
            echo '<b><font color=green>Thêm thành công</font></b><br/>';
        }
            
break;
case 'sua_bh':
     $id=abs(intval($_GET['maso']));
    $req1 = mysql_query("SELECT * FROM `baihat` WHERE `idBH`='$id'");
    $b = mysql_fetch_array($req1);
$avto1=mysql_num_rows($req1);
if($avto1<1)
{
    echo 'Bài hát không tồn tại.<br>';
break;
}
else
{
    echo '<b><center>Hãy sửa lại các thông tin theo mong muốn</center>
    <br>Mã số : '.$id.'</b><br>';
    echo '<form action="choosing.php?mod=sua&id='.$id.'" method="post">';
echo"Tên bài hát:<br/>
<input class='input' type=\"text\" value=\"$b[TenBH]\" size=\"100\" name=\"ten\"/><br/>
Ca sĩ:<br/>
<input class='input' type=\"text\" value=\"$b[casi]\" size=\"50\" name=\"casi\"/><br/>
Thể loại:<br/>
<input class='input' type=\"text\" value=\"$b[theloai]\" size=\"50\" name=\"theloai\"/><br/>
Liên kết nguồn:<br/>
<input class='input' type=\"text\" value=\"$b[mp3]\" size=\"100\" name=\"duongdan\"/><br/>
<input class=\"button\" type=\"submit\" value=\"Sửa\" /></form>";
}
break;
case 'sua':
    $id=abs(intval($_GET['id']));
    $req1 = mysql_query("SELECT * FROM `baihat` WHERE `idBH`='$id'");
$avto1=mysql_num_rows($req1);
    if(($_POST[ten]) == '' or ($_POST[casi]) == '' or ($_POST[theloai]) == '' or ($_POST[duongdan]) == '' )
        echo '<b><font color=red>Không được để trống</font></b><br/>';
        else
            if($avto1<1)
             {
                echo 'Bài hát không tồn tại.<br>';
            }
            else
        {
            mysql_query("UPDATE
            `baihat` SET
            `TenBH` = '$_POST[ten]',
            `theloai` = '$_POST[theloai]',
            `casi` = '$_POST[casi]',
            `mp3` = '$_POST[duongdan]'
            WHERE `maso`='$id' LIMIT 1") or die (mysql_error());
            echo '<b><font color=green>Sửa thành công</font></b><br/>';
        }
    
break;
case 'xoa_bh':
    $id=abs(intval($_GET['maso']));
    $req1 = mysql_query("SELECT * FROM `baihat` WHERE `idBH`='$id'");
$avto1=mysql_num_rows($req1);
if($avto1>=1){
    echo '<b>Xóa thành công</b><br>';
    mysql_query("DELETE FROM `baihat` WHERE `idBH`='$id'");
}else
echo '<b>Bài hát không tồn tại</b><br>';
    
    
break;
case 'capnhat_txt':
$myfile = fopen("demo/ten.txt", "w");
$req = mysql_query("SELECT * FROM `baihat` ORDER BY `idBH` ASC");
$avto=mysql_num_rows($req);
{
$stt = 0;
if($avto>=1){
While($mag = mysql_fetch_array($req)){
$stt = $stt + 1;
if($stt < $avto)
        $txt = $mag[TenBH]."#";
else
        $txt = $mag[TenBH];
fwrite($myfile, $txt);
}
}
        
}

fclose($myfile);
/////////////////////////////
$myfile = fopen("demo/casi.txt", "w+");
$req = mysql_query("SELECT * FROM `baihat` ORDER BY `idBH` ASC");
$avto=mysql_num_rows($req);

if($avto>=1){
$stt = 0;
While($mag = mysql_fetch_array($req)){
$stt = $stt + 1;
if($stt < $avto)
        $txt = $mag[casi]."#";
else
        $txt = $mag[casi];
fwrite($myfile, $txt);

}
        
}

fclose($myfile);
/////////////////////////////
$myfile = fopen("demo/theloai.txt", "w+");
$req = mysql_query("SELECT * FROM `baihat` ORDER BY `idBH` ASC");
$avto=mysql_num_rows($req);
{

if($avto>=1){
$stt = 0;
While($mag = mysql_fetch_array($req)){
$stt = $stt + 1;
if($stt < $avto)
        $txt = $mag[theloai]."#";
else
        $txt = $mag[theloai];
fwrite($myfile, $txt);

}
        
}
}

fclose($myfile);
////////////////////////////////
$myfile = fopen("demo/duongdan.txt", "w");
$req = mysql_query("SELECT * FROM `baihat` ORDER BY `idBH` ASC");
$avto=mysql_num_rows($req);
{

if($avto>=1){
$stt = 0;
While($mag = mysql_fetch_array($req)){
$stt = $stt + 1;
if($stt < $avto)
        $txt = $mag[mp3]."#";
else
        $txt = $mag[mp3];
fwrite($myfile, $txt);
}
}
        
}

fclose($myfile);

echo '<b>Cập nhật thành công</b><br>';

break;
}
echo '<a href="?"><center>Trang chủ</center></a><br>';
}else{
header ('Location: index.php');
}
echo '<hr>';
include('system/include/end.inc');
?>
