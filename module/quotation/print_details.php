<!DOCTYPE html>
<html>
<head>
  <title>Laporan Data User</title>
<script type="text/javascript">
 /*--This JavaScript method for Print command--*/
  function PrintDoc() {
  var toPrint = document.getElementById('print');
  var popupWin = window.open('');
  popupWin.document.open();
  popupWin.document.write('<html><title>::Print Data::</title><link rel="stylesheet" type="text/css" href="print.css" /></head><body onload="window.print()">')
  popupWin.document.write(toPrint.outerHTML);
  popupWin.document.write('</html>');
  popupWin.document.close();
  
 window.location = 'adminweb.php?module=sales';
 }
  function PrintPreview() {
  var toPrint = document.getElementById('print');
  var popupWin = window.open('');
  popupWin.document.open();
  popupWin.document.write('<html><title>::Printpreview Data::</title><link rel="stylesheet" type="text/css" href="print.css" media="screen"/></head><body">')
  popupWin.document.write(toPrint.outerHTML);
  popupWin.document.write('</html>');
  popupWin.document.close();
 }
</script>


</head>

<body  onLoad="PrintDoc()">

<div id="print">
<table border="0" width="100%">
<tr>

<td width="10%"></td>
<td width="40%">

 <?php 
include "lib/config.php";
include "lib/koneksi.php";
 $idsales=$_GET['id_sales'];
 $querySales=mysqli_query($koneksi, "SELECT * FROM cera_sales WHERE sales_id='$idsales'");
 $q = mysqli_query($koneksi,"select * from cera_sales_item join cera_product on cera_product.id_product = cera_sales_item.si_product_id where cera_sales_item.si_sales_id = ".$idsales);
 $queryprod = mysqli_query($koneksi,"select * from cera_product join cera_sales_item on cera_product.id_product = cera_sales_item.si_product_id where cera_sales_item.si_sales_id = ".$idsales);

 $sale=mysqli_fetch_array($querySales);
 $sales=mysqli_fetch_array($q);

$image="../cera/module/quotation/image/djongnesia.png";
print"<img src=\"$image\" width=\"90%\" height=\"50%\"\/>";
?>
<?php 
$image="../cera/module/quotation/image/newquotation.png";
print"<img src=\"$image\" width=\"50%\" height=\"80%\"\/> <br>";

echo" $sale[sales_quotation_no]";

?>



</td>
<td width="10%">
</td>
<td width="40%">
  <?php 


$imagex="../cera/module/quotation/image/penghargaan.png";
print"<img src=\"$imagex\" width=\"80%\" height=\"35%\"\/>";
?>
</td>
</tr>
</table>


    <table border="1" width="90%" align="center">
    <tr>
                      <th>No</th>
                      <th>Jenis Produk</th>            
                      <th>Jumlah</th>
                      <th>Harga</th>
                      <th>Total</th>
                      <th>Keterangan</th>

    </tr>

<?php
$nomer = 0;
$nomer = $nomer +=1;
$total = 0;
$total = $total + ($sales['si_item_price'] * $sales['si_item_qty']);
$total= number_format($total,2,',','.');
$price= number_format($sales['si_item_price'],2,',','.');
//$sql=mysqli_query($koneksi, "select * from cera_user");
//while($mem=mysqli_fetch_array($sql)){

echo"<tr>
                      <td>$nomer</td>
                      <td>$sales[product_name]</td>
                      <td>$sales[si_item_qty]</td>
                      <td>Rp$price</td>
                      <td>Rp$total</td>
                      <td>
                      <img id='profile-img' class='profile-img-card' style='width: 150px; height: 150px;'' src='upload/$sales[product_img]' />
                      </td>
</tr>";

//} 
?>





</table>
</div>
</body>
</html>