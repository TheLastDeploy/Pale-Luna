Set WshNetwork = CreateObject("WScript.Network")
NomeUsuario = WshNetwork.UserName
MsgBox "Você só tem uma chance... " & NomeUsuario, 64, ""