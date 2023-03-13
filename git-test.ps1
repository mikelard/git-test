<#
.SYNOPSIS
	
.DESCRIPTION
	
.PARAMETER OUDN
	
.PARAMETER Title
	
.PARAMETER ListofGroups
	
.PARAMETER Filename
	
.Notes
	NAME: git-test.ps1
	AUTHOR: Michael Lard - michael.g.lard@doit.nh.gov
	CREATIONDATE: March 13, 2023
.EXAMPLE
	
#>

$smtp_host 	= "granrelay.granite.nhroot.int"
$smtp_from     = "noreply@doit.nh.gov"
$smtp_Subject  = "Git Test"
$smtp_to		= "michael.g.lard@doit.nh.gov"

function SendMail {
	#LogIt "Computer: $computer"
	#LogIt "Subject: $smtp_Subject"
	#LogIt "SMTP_TO: $smtp_to"
	#LogIt "SMTP_HOST: $smtp_host"
	#LogIt "SMTP_FROM $smtp_from"

	#$smtpcc = $emailcc
	#$att = new-object Net.Mail.Attachment($file)
	$message = New-Object System.Net.Mail.MailMessage $smtp_from, $smtp_to
	#$message.cc.Add($smtpcc)
	$message.Subject = $smtp_subject
	#$message.Attachments.Add($att)
	$message.IsBodyHTML = $true
	$message.body = $Emailbody

	$smtp = New-Object Net.Mail.SmtpClient($smtp_host)
	$smtp.Send($message)

}

$Emailbody = @"
     <html>
          <head<</head>
          <body>
               <p>Git testing</p>
          </body>
     </html>
"@

SendMail