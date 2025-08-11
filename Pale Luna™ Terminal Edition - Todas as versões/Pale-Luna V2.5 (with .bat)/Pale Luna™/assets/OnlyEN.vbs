Set WshNetwork = CreateObject("WScript.Network")
NomeUsuario = WshNetwork.UserName
MsgBox "You only have one shot... " & NomeUsuario, 64, ""