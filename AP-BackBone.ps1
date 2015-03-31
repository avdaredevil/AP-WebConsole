<#
|============================================================================================>|
   AP-WebConsole by APoorv Verma [AP] on 2/3/2015
|============================================================================================>|
      $) Supports Asset Delivery & Management
      $) Multi-Console Multi-Process support
      $) IPC channels for communication with Client console
      $) WILL HAVE A USEFUL CACHE SYSTEM TO PREVENT UNNECCESARY REQUESTS
|============================================================================================>|
#>
param([Switch]$SepProcess)
# =======================================START=OF=COMPILER==========================================================|
#    The Following Code was added by AP-Compiler Version [1.0] To Make this program independent of AP-Core Engine
# ==================================================================================================================|
iex ([System.Text.Encoding]::UTF8.GetString([System.Convert]::FromBase64String("ZnVuY3Rpb24gR2V0LVdoZXJlIHtwYXJhbShbUGFyYW1ldGVyKE1hbmRhdG9yeT0kdHJ1ZSldW3N0cmluZ10kRmlsZSwgW1N3aXRjaF0kQWxsKQ0KDQogICAgQVAtUmVxdWlyZSAiZGVwOndoZXJlIiB7dGhyb3cgIk5lZWQgU3lzMzJcd2hlcmUgdG8gd29yayEiO3JldHVybn0NCiAgICAkT3V0ID0gd2hlcmUuZXhlICRmaWxlIDI+JG51bGwNCiAgICBpZiAoISRPdXQpIHtyZXR1cm59DQogICAgaWYgKCRBbGwpIHtyZXR1cm4gJE91dH0NCiAgICByZXR1cm4gQCgkT3V0KVswXQ0KfQoKZnVuY3Rpb24gQVAtUmVxdWlyZSB7cGFyYW0oW1BhcmFtZXRlcihNYW5kYXRvcnk9JFRydWUpXVtBbGlhcygiRnVuY3Rpb25hbGl0eSIsIkxpYnJhcnkiKV1bU3RyaW5nXSRMaWIsIFtTY3JpcHRCbG9ja10kT25GYWlsPXt9LCBbU3dpdGNoXSRQYXNzdGhydSkNCg0KICAgIFtib29sXSRTdGF0ID0gJChzd2l0Y2ggLXJlZ2V4ICgkTGliLnRyaW0oKSkgew0KICAgICAgICAiXkludGVybmV0IiAge3Rlc3QtY29ubmVjdGlvbiBnb29nbGUuY29tIC1Db3VudCAxIC1RdWlldH0NCiAgICAgICAgIl5kZXA6KC4qKSIgIHtpZiAoJE1hdGNoZXNbMV0gLW5lICJ3aGVyZSIpe0FQLVJlcXVpcmUgImRlcDp3aGVyZSIgeyRNT0RFPTJ9fWVsc2V7JE1PREU9Mn07aWYgKCRNT0RFLTIpe0dldC1XaGVyZSAkTWF0Y2hlc1sxXX1lbHNle3RyeXsmICRNYXRjaGVzWzFdICIvZmpmZGpmZHMgLS1kc2phaGRocyAtZHNqYWRqIiAyPiRudWxsOyJzdWNjIn1jYXRjaHt9fX0NCiAgICAgICAgIl5mdW5jdGlvbjooLiopIiAge2djbSAkTWF0Y2hlc1sxXSAtZWEgU2lsZW50bHlDb250aW51ZX0NCiAgICAgICAgIl5zdHJpY3RfZnVuY3Rpb246KC4qKSIgIHtUZXN0LVBhdGggIkZ1bmN0aW9uOlwkKCRNYXRjaGVzWzFdKSJ9DQogICAgfSkNCiAgICBpZiAoISRTdGF0KSB7JE9uRmFpbC5JbnZva2UoKX0NCiAgICBpZiAoJFBhc3N0aHJ1KSB7cmV0dXJuICRTdGF0fQ0KfQoKZnVuY3Rpb24gQWxpZ24tVGV4dCB7cGFyYW0oW1BhcmFtZXRlcihNYW5kYXRvcnk9JFRydWUpXVtTdHJpbmdbXV0kVGV4dCwgW1ZhbGlkYXRlU2V0KCJDZW50ZXIiLCJSaWdodCIsIkxlZnQiKV1bU3RyaW5nXSRBbGlnbj0nQ2VudGVyJykNCg0KICAgIGlmICgkVGV4dC5jb3VudCAtZ3QgMSkgew0KICAgICAgICAkYW5zID0gQCgpDQogICAgICAgIGZvcmVhY2ggKCRsbiBpbiAkVGV4dCkgeyRBbnMgKz0gQWxpZ24tVGV4dCAkbG4gJEFsaWdufQ0KICAgICAgICByZXR1cm4gKCRhbnMpDQogICAgfSBlbHNlIHsNCiAgICAgICAgJFdpblNpemUgPSAkKEdldC1Ib3N0KS5VSS5SYXdVSS5XaW5kb3dTaXplLldpZHRoDQogICAgICAgIGlmICgoIiIrJFRleHQpLkxlbmd0aCAtZ2UgJFdpblNpemUpIHsNCiAgICAgICAgICAgICRBcHBlbmRlciA9IEAoIiIpOw0KICAgICAgICAgICAgJGogPSAwDQogICAgICAgICAgICBmb3JlYWNoICgkcCBpbiAwLi4oKCIiKyRUZXh0KS5MZW5ndGgtMSkpew0KICAgICAgICAgICAgICAgIGlmICgoJHArMSklJHdpbnNpemUgLWVxIDApIHskaisrOyRBcHBlbmRlciArPSAiIn0NCiMgICAgICAgICAgICAgICAgIiIrJGorIiAtICIrJHANCiAgICAgICAgICAgICAgICAkQXBwZW5kZXJbJGpdICs9ICRUZXh0LmNoYXJzKCRwKQ0KICAgICAgICAgICAgfQ0KICAgICAgICAgICAgcmV0dXJuIChBbGlnbi1UZXh0ICRBcHBlbmRlciAkQWxpZ24pDQogICAgICAgIH0gZWxzZSB7DQogICAgICAgICAgICBpZiAoJEFsaWduIC1lcSAiQ2VudGVyIikgew0KICAgICAgICAgICAgICAgIHJldHVybiAoIiAiKlttYXRoXTo6dHJ1bmNhdGUoKCRXaW5TaXplLSgiIiskVGV4dCkuTGVuZ3RoKS8yKSskVGV4dCkNCiAgICAgICAgICAgIH0gZWxzZWlmICgkQWxpZ24gLWVxICJSaWdodCIpIHsNCiAgICAgICAgICAgICAgICByZXR1cm4gKCIgIiooJFdpblNpemUtKCIiKyRUZXh0KS5MZW5ndGgtMSkrJFRleHQpDQogICAgICAgICAgICB9IGVsc2Ugew0KICAgICAgICAgICAgICAgIHJldHVybiAoJFRleHQpDQogICAgICAgICAgICB9DQogICAgICAgIH0NCiAgICB9DQp9CgpmdW5jdGlvbiBXcml0ZS1BUCB7cGFyYW0oW1BhcmFtZXRlcihNYW5kYXRvcnk9JFRydWUpXVtTdHJpbmddJFRleHQsIFtTd2l0Y2hdJE5vU2lnbiwgW1N3aXRjaF0kUGxhaW5UZXh0LCBbVmFsaWRhdGVTZXQoIkNlbnRlciIsIlJpZ2h0IiwiTGVmdCIpXVtTdHJpbmddJEFsaWduPSdMZWZ0JykNCg0KICAgIGlmICghJHRleHQgLW9yICR0ZXh0IC1tYXRjaCAiXltcK1wtXCFcKnhcPiBdKyQiKSB7cmV0dXJufQ0KICAgICRhY2MgID0gQCgoJysnLCcyJyksKCctJywnMTInKSwoJyEnLCcxNCcpLCgnKicsJzMnKSkNCiAgICAkdGIgICA9ICcnOyRmdW5jICAgPSAkZmFsc2UNCiAgICB3aGlsZSAoJFRleHQuY2hhcnMoMCkgLWVxICd4JykgeyRmdW5jID0gJHRydWU7ICRUZXh0ID0gJFRleHQuc3Vic3RyaW5nKDEpLnRyaW0oKX0NCiAgICB3aGlsZSAoJFRleHQuY2hhcnMoMCkgLWVxICc+JykgeyR0YiArPSAiICAgICI7ICRUZXh0ID0gJFRleHQuc3Vic3RyaW5nKDEpLnRyaW0oKX0NCiAgICAkU2lnbiA9ICRUZXh0LmNoYXJzKDApDQogICAgJFRleHQgPSAkVGV4dC5zdWJzdHJpbmcoMSkudHJpbSgpLnJlcGxhY2UoJy94XCcsJycpLnJlcGxhY2UoJ1suXScsJ1tDdXJyZW50IERpcmVjdG9yeV0nKQ0KICAgICR2ZXJzID0gJGZhbHNlDQogICAgZm9yZWFjaCAoJGFyIGluICRhY2MpIHtpZiAoJGFyWzBdIC1lcSAkc2lnbikgeyR2ZXJzID0gJHRydWU7ICRjbHIgPSAkYXJbMV07ICRTaWduID0gIlske1NpZ259XSAifX0NCiAgICBpZiAoISR2ZXJzKSB7VGhyb3cgIkluY29ycmVjdCBTaWduIFskU2lnbl0gUGFzc2VkISJ9DQogICAgQVAtUmVxdWlyZSAiZnVuY3Rpb246QWxpZ24tVGV4dCIge2Z1bmN0aW9uIEFsaWduLVRleHQoJGFsaWduLCR0ZXh0KSB7JHRleHR9fQ0KICAgICREYXRhID0gQWxpZ24tVGV4dCAtQWxpZ24gJEFsaWduICR0YiQoaWYgKCEkTm9TaWduKSB7JFNpZ259KSRUZXh0DQogICAgaWYgKCRQbGFpblRleHQpIHtyZXR1cm4gJERhdGF9DQogICAgV3JpdGUtSG9zdCAtTm9OZXdMaW5lOiRmdW5jIC1mICRjbHIgJERhdGENCn0KCmZ1bmN0aW9uIFByb2Nlc3MtVHJhbnNwYXJlbmN5IHtwYXJhbShbQWxpYXMoIlRyYW5zcGFyZW5jeSIsIkludmlzaWJpbGl0eSIsImkiLCJ0IildW1ZhbGlkYXRlUmFuZ2UoMCwxMDApXVtpbnRdJFRyYW5zPTAsIFtQYXJhbWV0ZXIoTWFuZGF0b3J5PSRUcnVlKV0kUHJvY2VzcykNCg0KICAgIGlmICgkUHJvY2VzcyAtbWF0Y2ggIlwuZXhlJCIpIHskUHJvY2VzcyA9ICRQcm9jZXNzLnJlcGxhY2UoIi5leGUiLCIiKX0NCiAgICBUcnkgew0KICAgICAgICBpZiAoJFByb2Nlc3MubmFtZSkgeyRQcm9jID0gJFByb2Nlc3MubmFtZX0gZWxzZSB7JFByb2MgPSAoR2V0LVByb2Nlc3MgJFByb2Nlc3MgLUVycm9yQWN0aW9uIFN0b3ApWzBdLm5hbWV9DQogICAgfSBjYXRjaCB7DQogICAgICAgIGlmIChbSW50XTo6VHJ5UGFyc2UoJFByb2Nlc3MsIFtyZWZdMykpIHskUHJvYyA9ICgoR2V0LVByb2Nlc3MgfCA/IHskXy5JRCAtZXEgJFByb2Nlc3N9KVswXSkubmFtZX0NCiAgICB9DQogICAgaWYgKCRQcm9jIC1ub3RNYXRjaCAiXC5leGUkIikgeyRQcm9jID0gIiRQcm9jLmV4ZSJ9DQogICAgbmlyY21kIHdpbiB0cmFucyBwcm9jZXNzICIkUHJvYyIgKCgxMDAtJFRyYW5zKSoyNTUvMTAwKSB8IE91dC1OdWxsDQp9CgpmdW5jdGlvbiBBUC1SZXF1aXJlIHtwYXJhbShbUGFyYW1ldGVyKE1hbmRhdG9yeT0kVHJ1ZSldW0FsaWFzKCJGdW5jdGlvbmFsaXR5IiwiTGlicmFyeSIpXVtTdHJpbmddJExpYiwgW1NjcmlwdEJsb2NrXSRPbkZhaWw9e30sIFtTd2l0Y2hdJFBhc3N0aHJ1KQ0KDQogICAgW2Jvb2xdJFN0YXQgPSAkKHN3aXRjaCAtcmVnZXggKCRMaWIudHJpbSgpKSB7DQogICAgICAgICJeSW50ZXJuZXQiICB7dGVzdC1jb25uZWN0aW9uIGdvb2dsZS5jb20gLUNvdW50IDEgLVF1aWV0fQ0KICAgICAgICAiXmRlcDooLiopIiAge2lmICgkTWF0Y2hlc1sxXSAtbmUgIndoZXJlIil7QVAtUmVxdWlyZSAiZGVwOndoZXJlIiB7JE1PREU9Mn19ZWxzZXskTU9ERT0yfTtpZiAoJE1PREUtMil7R2V0LVdoZXJlICRNYXRjaGVzWzFdfWVsc2V7dHJ5eyYgJE1hdGNoZXNbMV0gIi9mamZkamZkcyAtLWRzamFoZGhzIC1kc2phZGoiIDI+JG51bGw7InN1Y2MifWNhdGNoe319fQ0KICAgICAgICAiXmZ1bmN0aW9uOiguKikiICB7Z2NtICRNYXRjaGVzWzFdIC1lYSBTaWxlbnRseUNvbnRpbnVlfQ0KICAgICAgICAiXnN0cmljdF9mdW5jdGlvbjooLiopIiAge1Rlc3QtUGF0aCAiRnVuY3Rpb246XCQoJE1hdGNoZXNbMV0pIn0NCiAgICB9KQ0KICAgIGlmICghJFN0YXQpIHskT25GYWlsLkludm9rZSgpfQ0KICAgIGlmICgkUGFzc3RocnUpIHtyZXR1cm4gJFN0YXR9DQp9CgpTZXQtQWxpYXMgaW52IFByb2Nlc3MtVHJhbnNwYXJlbmN5")))
# ========================================END=OF=COMPILER===========================================================|
$ResourceKey = "QVAtSXMtQXdlc29tZQ";$VersionKey = "TGVhcGluZyBTdGFy";$Version = 0.1;$Expiry = @{"BackBone"=20}
$CacheLoc="$($Env:AppData)\AP-WebConsole";$Repo="api.github.com/repos/avdaredevil/AP-WebConsole"
$ResourceLock = New-Object System.Threading.Mutex($false, $ResourceKey)
if ($PSScriptRoot -ne $CacheLoc) {Write-Host -f yellow "[!] Invalid Launch of BackBone!";exit}
if (!$SepProcess) {Write-Host -f 3 "    [*] Creating New Backbone Process";$a=Start powershell "-ep bypass '$CacheLoc\AP-BackBone.ps1'" -PassThru;Write-Host -f 2 "        [+] Created BackBone @ ID:$($a.ID)";exit}
#==========================================================|
Function AP-Require ([Parameter(Mandatory=$True)][Alias("Functionality","Library")][String]$Lib,[ScriptBlock]$OnFail={},[Switch]$Passthru) {
    [bool]$Stat = $(switch -regex ($Lib.trim()) {
        "^Internet"  {test-connection google.com -Count 1 -Quiet}
        "^dep:(.*)"  {if ($Matches[1] -ne "where"){AP-Require "dep:where" {$MODE=2}}else{$MODE=2};if ($MODE-2){Get-Where $Matches[1]}else{try{& $Matches[1] "/fjfdjfds --dsjahdhs -dsjadj" 2>$null;"succ"}catch{}}}
        "^function:(.*)"  {gcm $Matches[1] -ea SilentlyContinue}
        "^strict_function:(.*)"  {Test-Path "Function:\$($Matches[1])"}
    })
    if (!$Stat) {$OnFail.Invoke()}
    if ($Passthru) {return $Stat}
}
Function Write-AP ([Parameter(Mandatory=$True)][String]$Text,[Switch]$NoSign,[Switch]$PlainText,[ValidateSet("Center","Right","Left")][String]$Align='Left') {
    if (!$text -or $text -match "^[\+\-\!\*x\> ]+$") {return}
    $acc  = @(('+','2'),('-','12'),('!','14'),('*','3'))
    $tb   = '';$func   = $false
    while ($Text.chars(0) -eq 'x') {$func = $true; $Text = $Text.substring(1).trim()}
    while ($Text.chars(0) -eq '>') {$tb += "    "; $Text = $Text.substring(1).trim()}
    $Sign = $Text.chars(0)
    $Text = $Text.substring(1).trim().replace('/x\','').replace('[.]','[Current Directory]')
    $vers = $false
    foreach ($ar in $acc) {if ($ar[0] -eq $sign) {$vers = $true; $clr = $ar[1]; $Sign = "[${Sign}] "}}
    if (!$vers) {Throw "Incorrect Sign [$Sign] Passed!"}
    AP-Require "function:Align-Text" {function Align-Text($align,$text) {$text}}
    if ($PlainText) {return $Data}
    Write-Host -NoNewLine:$func -f $clr $Data
}
function Translate-Client($Res){if ($Script:Clients.$res) {return $res}}
function Parse-Communication($Data){
    if ($Data -NotMatch "^(?<Res>\w+)\|(?<Cmd>.+)$") {Write-AP "!Invalid Data Sent [$Data].";return}
    $Res=$Matches.Res;
    $Ret = @{};$cmd.split("|") | ? {$_ -match "^(?<Key>\w+)=(?<Val>.+)$"} | % {$Ret.($Matches.Key) = $Matches.Val}
    $Ret = @{"Client"=Translate-Client $Res;"Command"=$Ret}
    if (!$Ret.Client) {$Ret.Auth = $Res -eq $ResourceKey}
    return 
}
function New-Client {
    $Key = ([char[]]([char]'a'..[char]'z') + 0..9 | sort {get-random})[0..12] -join ''
    $Script:Clients.$Key = @{"Commands"=0;"LastUsed"=(Get-Date)}
    return $Key
}
function Get-IPCClient($Key) {
    $ClientHash = @{'Client' = New-Object System.IO.Pipes.NamedPipeClientStream('.', $Key, [System.IO.Pipes.PipeDirection]::InOut,[System.IO.Pipes.PipeOptions]::None,[System.Security.Principal.TokenImpersonationLevel]::Impersonation)}
    $ClientHash.Reader = New-Object System.IO.StreamReader($ClientHash.Client)
    $ClientHash.Writer = New-Object System.IO.StreamWriter($ClientHash.Client)
    $IPC = [PSCustomObject]@{
        'IPC' = $ClientHash
    } | Add-Member -MemberType ScriptMethod -PassThru -Name Write -Value {
        param([Parameter(Mandatory=1)]$String)
        $This.IPC.Writer.WriteLine($String)
    } | Add-Member -MemberType ScriptMethod -PassThru -Name Read -Value {$This.IPC.Reader.ReadLine()} | Add-Member -MemberType ScriptMethod -PassThru -Name SendCommand -Value {
        param([Parameter(Mandatory=1)]$Command)
        $This.Write($Command)
        return $This.Read()
    } | Add-Member -MemberType ScriptMethod -PassThru -Name Connect -Value {
        param([Int]$Timeout=2000)
        $This.IPC.Client.Connect($Timeout)
        $This.IPC.Writer.AutoFlush=$true
    }
    return $IPC
}
#=====================|
$Script:Clients = @{}
$IPC = Get-IPCClient $ResourceKey
$IPC.IPC.WaitForConnection()
#==========================================================|
while ($true) {
    Write-AP "*Waiting for new command."
    $cmd = Parse-Communication $IPC.Read();if(!$cmd){continue}
    [Console]::CursorTop--
    switch ($cmd.Command.Action) {
        "Login" {if ($cmd.Client) {Write-AP "!Already Logged in [$cmd.Client]";$IPC.Write("600|Client Already Logged in!");break};if (!$cmd.Auth) {Write-AP "!Invalid ResourceKey Passed";$IPC.Write("403|Inv Resource Key");break};$Cli = New-Client;Write-AP "+Logged in [$cli]";$IPC.write("200|Logged In [$cli]");break}
        default {Write-AP "!Sorry Dude [IDK: $cmd.command.Action]";continue}
    }
}
