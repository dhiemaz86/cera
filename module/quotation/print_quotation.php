<!DOCTYPE html>
<html>
<head>
  <title>Laporan Data User</title>
  <script type="text/javascript">
var s5_taf_parent = window.location;
function popup_print(){
window.open('preview.php','page','toolbar=0,scrollbars=1,location=0,statusbar=0,menubar=0,resizable=0,width=750,height=600,left=50,top=50,titlebar=yes')
}
</script>

<table border="1" width="90%">
    <tr>
<td width="50%">

 <?php 
$image="../cera/module/quotation/image/djongnesia.png";
print"<img src=\"$image\" width=\"60%\" height=\"35%\"\/>";
?>
<text align="left" margin-left="10px" style="font-size: 30px; margin-left: 10px"><b bgcolor="black">      QUOTATION</b></text><br>

<text align="left" margin-left="10px" style="font-size: 10px; margin-left: 10px"><b bgcolor="black">19293192</b></text>


</td>
<td width="20%">
</head>
<body onLoad="window.print()">
DATA MARKETING SALES
</td>
<td width="30%">
  <?php 
$imagex="../cera/module/quotation/image/penghargaan.png";
print"<img src=\"$imagex\" width=\"80%\" height=\"25%\"\/>";
?>
</td>
</tr>
</table>


    <table border="1" width="90%">
    <tr>
                      <th>No</th>
                      <th>Nama Sales</th>            
                      <th>Email</th>
                      <th>Jabatan</th>
                      <th>No HP</th>

    </tr>

<?php
include "lib/config.php";
include "lib/koneksi.php";
$sql=mysqli_query($koneksi, "select * from cera_user");
while($mem=mysqli_fetch_array($sql)){
echo"<tr>
                      <td>$mem[id_user]</td>
                      <td>$mem[nama_user]</td>
                      <td>$mem[email_user]</td>
                      <td>$mem[position_user]</td>
                      <td>$mem[phone_user]</td>
</tr>";

} ?>
</body>
</html>