x = MsgBox("Mise à jour du systeme",4+32+0,"SYSTEME")
WScript.Sleep(6000)
If x = 6 Then
commande = "c:/script\go.bat"
createobject("wscript.shell").run """"+commande+"""",1,false
End If

If x = 7 Then
y = MsgBox("Merci!")
End If


