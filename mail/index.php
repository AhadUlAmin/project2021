<?php

//Import PHPMailer classes into the global namespace
//These must be at the top of your script, not inside a function
use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\SMTP;
use PHPMailer\PHPMailer\Exception;


require './PHPMailer/src/Exception.php';
require './PHPMailer/src/PHPMailer.php';
require './PHPMailer/src/SMTP.php';

$mail = new PHPMailer(true);

function sendingViaPhpmailer($mail,$mailSubject,$mailBody ,$mailAltBody,$to ,$reciverName){
	try {
    //Server settings
   // $mail->SMTPDebug = SMTP::DEBUG_SERVER;                      //Enable verbose debug output
    $mail->isSMTP();                                            //Send using SMTP
    $mail->Host       = 'themornstar.com';                    //Set the SMTP server to send through
    $mail->SMTPAuth   = true;                                   //Enable SMTP authentication
    $mail->Username   = 'admin@themornstar.com';                    //SMTP username
    $mail->Password   = 'T123@m#123sak';                               //SMTP password
    $mail->SMTPSecure = PHPMailer::ENCRYPTION_SMTPS;         //Enable TLS encryption; `PHPMailer::ENCRYPTION_SMTPS` encouraged
    $mail->Port = 465;                                    //TCP port to connect to, use 465 for `PHPMailer::ENCRYPTION_SMTPS` above

    //Recipients
	$mail->setFrom('admin@themornstar.com','TheMornStar'); // Gmail address which you used as SMTP server
    $mail->addAddress($to,$reciverName); // Email address where you want to receive emails (you can use any of your gmail address including the gmail address which you used as SMTP server)

    //Attachments
   // $mail->addAttachment('/var/tmp/file.tar.gz');         //Add attachments
   // $mail->addAttachment('/tmp/image.jpg', 'new.jpg');    //Optional name

    //Content
    $mail->isHTML(true);                                  //Set email format to HTML
    $mail->Subject = $mailSubject;
    $mail->Body    = $mailBody;
    $mail->AltBody = $mailAltBody;

    if($mail->send()){
    echo 'Message has been sent';
	}else{
     echo "Not sent ";
	}
} catch (Exception $e) {
    echo "Message could not be sent. Mailer Error: {$mail->ErrorInfo}";
}

}