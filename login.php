<?php
// untuk memasukkan file koneksi.php
include "lib/koneksi.php";
// menangkap variabel POST dari form login / index.php
$username = $_POST['username'];
$pass = $_POST['password'];
// pastikan username dan password adalah berupa huruf atau angka.
if (!ctype_alnum($username) OR !ctype_alnum($pass)) {
    echo "<center>LOGIN GAGAL! <br>
        Username atau Password Anda tidak benar.<br>
        Atau account Anda sedang diblokir.<br>";
    echo "<a href=index.php><b>ULANGI LAGI</b></a></center>";
} else {
    $login = mysqli_query($koneksi, "SELECT * FROM cera_user WHERE username_user='$username' AND pass_user='$pass'");
    $ketemu = mysqli_num_rows($login);
    $r = mysqli_fetch_array($login);

    // Apabila username dan password ditemukan
    if ($ketemu > 0) {
        session_start();

        $_SESSION['username'] = $r['username_user'];
        $_SESSION['passuser'] = $r['pass_user'];

        header('location:adminweb.php?module=home');
    } else {
        echo "<center>LOGIN GAGAL! <br>
        Username atau Password Anda tidak benar.<br>
        Atau account Anda sedang diblokir.<br>";
        echo "<a href=index.php><b>ULANGI LAGI</b></a></center>";
    }
}
?>
