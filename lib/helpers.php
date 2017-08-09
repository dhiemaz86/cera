<?php 

/**
*
* Ini filenya digunaakan untuk menyimpan fungsi2 dll
* Ini nanti di include ke indexnya biar bisa diakses semua file
* Biar codingnya lebih rapi
**/

// require sama include sama aja, same same but not the same
require 'mailer/PHPMailerAutoload.php';

/**
* Fungsi untuk ngirim emel
*@params $input type array
**/
/*$input = array(

	'penerima_email' => '',
	'penerima_nama' => '',
	'subject' => '',
	'body_html' => ''

	);*/

function sendMail($input){

	// untuk parameter fungsi sendMail menggunakan array
	// biar nanti bisa dinamis sesuai kebutuhan
	if(is_array($input)){

		$mail = new PHPMailer;

		//$mail->SMTPDebug = 3;  

		// Disini kita isi detail mail serrver
		// sementara pake punyaku dulu
		$mail->isSMTP();                                      // Set mailer to use SMTP
		$mail->Host = 'smtp.sendgrid.net';  // Specify main and backup SMTP servers
		$mail->SMTPAuth = true;                               // Enable SMTP authentication
		$mail->Username = 'pratama';                 // SMTP username
		$mail->Password = 'admin123';                           // SMTP password
		$mail->SMTPSecure = 'tls';                            // Enable TLS encryption, `ssl` also accepted
		$mail->Port = 587;                                    // TCP port to connect to

		$mail->setFrom('support@kopirelocoffee.com', 'Support');
		$mail->addAddress($input['penerima_email'],$input['penerima_nama']);     // Add a recipient
		$mail->addAddress('kopirelo@gmail.com','Order Received =)');
		//nah kyk gini wkwk tinggal tambahin recipientnya(kurang l doang)

		$mail->isHTML(true);                                  // Set email format to HTML

		$mail->Subject = $input['subject'];
		$mail->Body    = $input['body_html'];

		if(!$mail->send()) {
		    return false;
		} 

		return true;
	}

	return false;

}

