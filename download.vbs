Set args = WScript.Arguments:a = split(args(0), "/")(UBound(split(args(0),"/")))
Set objXMLHTTP = CreateObject("MSXML2.ServerXMLHTTP"):objXMLHTTP.open "GET", args(0), false:objXMLHTTP.send()
If objXMLHTTP.Status = 200 Then
Set objADOStream = CreateObject("ADODB.Stream"):objADOStream.Open
objADOStream.Type = 1:objADOStream.Write objXMLHTTP.ResponseBody:objADOStream.Position = 0
Set objFSO = Createobject("Scripting.FileSystemObject"):If objFSO.Fileexists(a) Then objFSO.DeleteFile a
objADOStream.SaveToFile a:objADOStream.Close:Set objADOStream = Nothing 
End if:Set objXMLHTTP = Nothing:Set objFSO = Nothing
