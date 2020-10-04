package net.hotelbooking.component;

import java.util.Properties;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

public class Gmail {
	public static void gmailSend(String resetPassword, String email) {
        String user = "3teamhotel@gmail.com"; // 네이버일 경우 네이버 계정, gmail경우 gmail 계정
        String googlePassword = "yucviiqsryrolzpy";   // 패스워드
        System.out.println("gmail 클래스에 왔다...");

        // SMTP 서버 정보를 설정한다.
        Properties prop = new Properties();
        prop.put("mail.smtp.host", "smtp.gmail.com"); 
        prop.put("mail.smtp.port", 465); 
        prop.put("mail.smtp.auth", "true"); 
        prop.put("mail.smtp.ssl.enable", "true"); 
        prop.put("mail.smtp.ssl.trust", "smtp.gmail.com");
        
        Session session = Session.getInstance(prop, new javax.mail.Authenticator() {
            protected javax.mail.PasswordAuthentication getPasswordAuthentication() {
                return new javax.mail.PasswordAuthentication(user, googlePassword);
            }
        });

        try {
            MimeMessage message = new MimeMessage(session);
            message.setFrom(new InternetAddress(user));

            //수신자메일주소
            message.addRecipient(Message.RecipientType.TO, new InternetAddress(email)); 

            // Subject
            message.setSubject("호텔 예약사이트 임시비밀번호 입니다."); //메일 제목을 입력

            // Text
            message.setText("임시비밀번호는 "+resetPassword+" 입니다. 접속하셔서 비밀번호를 바꿔주세요.");    //메일 내용을 입력

            // send the message
            Transport.send(message); ////전송
            System.out.println("message sent successfully...");
        } catch (AddressException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        } catch (MessagingException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
    }
}
