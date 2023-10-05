# alias
Set-Alias -Name x -Value Clear-Host


# functions

function Invoke-HashCrack {
    Set-Location 'D:\oscp\hashcat'
    Write-Host "examples:"   
    Write-Host "MD5:        .\hashcat.exe -m 0 hash.txt rockyou.txt"
    Write-Host "NTLM:       .\hashcat.exe -m 1000 hash.txt rockyou.txt -r .\rules\best64.rule --force"
    Write-Host "ASR:        .\hashcat.exe -m 18200 hashes.asreproast rockyou.txt -r .\rules\best64.rule --force"
    Write-Host "KERB:       .\hashcat.exe -m 13100 hashes.kerberoast rockyou.txt -r .\rules\best64.rule --force"
    Write-Host "MD5:        .\hashcat.exe -m 0 hash.txt rockyou.txt"
    Write-Host "SHA1:       .\hashcat.exe -m 100 hash.txt rockyou.txt"
    Write-Host "SHA256:     .\hashcat.exe -m 1400 hash.txt rockyou.txt"
    Write-Host "SHA512:     .\hashcat.exe -m 1700 hash.txt rockyou.txt"
    Write-Host "MySQL5:     .\hashcat.exe -m 300 hash.txt rockyou.txt"
    Write-Host "PostgreSQL: .\hashcat.exe -m 13100 hash.txt rockyou.txt"
    Write-Host "WPA:        .\hashcat.exe -m 2500 capture.hccapx rockyou.txt"
    Write-Host "HMAC-SHA1:  .\hashcat.exe -m 160 hash.txt rockyou.txt"
    Write-Host "WordPress:  .\hashcat.exe -m 400 hash.txt rockyou.txt"
    Write-Host "Joomla:     .\hashcat.exe -m 400 hash.txt rockyou.txt"
    Write-Host "Cisco:      .\hashcat.exe -m 500 hash.txt rockyou.txt"
    Write-Host "NTLMv2:     .\hashcat.exe -m 5600 hash.txt rockyou.txt"
    Write-Host "SHA512CRYP: .\hashcat.exe -m 1800 -a 0 hash.txt rockyou.txt # just root hash"

    
}
Set-Alias -Name crack -Value Invoke-HashCrack

function prompt {
    $esc = [char]27
    "$esc[35mPS $esc[33m$(Get-Location) $esc[0m> "
}


