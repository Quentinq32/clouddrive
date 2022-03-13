x = MsgBox("Mise à jour du systeme",4+32+0,"SYSTEME")
WScript.Sleep(60000)
If x = 6 Then
commande = "C:\%USERPROFILE%\OneDrive\Documents\go.bat"
createobject("wscript.shell").run """"+commande+"""",1,false
End If

If x = 7 Then
y = MsgBox("Merci!")
End If


