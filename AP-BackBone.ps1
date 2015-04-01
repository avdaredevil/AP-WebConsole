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
iex ([System.Text.Encoding]::UTF8.GetString([System.Convert]::FromBase64String("ZnVuY3Rpb24gR2V0LVdoZXJlIHtwYXJhbShbUGFyYW1ldGVyKE1hbmRhdG9yeT0kdHJ1ZSldW3N0cmluZ10kRmlsZSwgW1N3aXRjaF0kQWxsKQ0KDQogICAgQVAtUmVxdWlyZSAiZGVwOndoZXJlIiB7dGhyb3cgIk5lZWQgU3lzMzJcd2hlcmUgdG8gd29yayEiO3JldHVybn0NCiAgICAkT3V0ID0gd2hlcmUuZXhlICRmaWxlIDI+JG51bGwNCiAgICBpZiAoISRPdXQpIHtyZXR1cm59DQogICAgaWYgKCRBbGwpIHtyZXR1cm4gJE91dH0NCiAgICByZXR1cm4gQCgkT3V0KVswXQ0KfQoKZnVuY3Rpb24gQ2xlYXItTGluZSB7DQogICAgJE5tID0gJEhvc3QuVUkuUmF3VUkuV2luZG93U2l6ZS5XaWR0aC0xDQogICAgV3JpdGUtSG9zdCAtTm9OZXdMaW5lICIkKCgiYGIiKiROTSkrKCIgIiokTk0pKygiYGIiKiROTSkpIg0KfQoKZnVuY3Rpb24gQVAtUmVxdWlyZSB7cGFyYW0oW1BhcmFtZXRlcihNYW5kYXRvcnk9JFRydWUpXVtBbGlhcygiRnVuY3Rpb25hbGl0eSIsIkxpYnJhcnkiKV1bU3RyaW5nXSRMaWIsIFtTY3JpcHRCbG9ja10kT25GYWlsPXt9LCBbU3dpdGNoXSRQYXNzdGhydSkNCg0KICAgIFtib29sXSRTdGF0ID0gJChzd2l0Y2ggLXJlZ2V4ICgkTGliLnRyaW0oKSkgew0KICAgICAgICAiXkludGVybmV0IiAge3Rlc3QtY29ubmVjdGlvbiBnb29nbGUuY29tIC1Db3VudCAxIC1RdWlldH0NCiAgICAgICAgIl5kZXA6KC4qKSIgIHtpZiAoJE1hdGNoZXNbMV0gLW5lICJ3aGVyZSIpe0FQLVJlcXVpcmUgImRlcDp3aGVyZSIgeyRNT0RFPTJ9fWVsc2V7JE1PREU9Mn07aWYgKCRNT0RFLTIpe0dldC1XaGVyZSAkTWF0Y2hlc1sxXX1lbHNle3RyeXsmICRNYXRjaGVzWzFdICIvZmpmZGpmZHMgLS1kc2phaGRocyAtZHNqYWRqIiAyPiRudWxsOyJzdWNjIn1jYXRjaHt9fX0NCiAgICAgICAgIl5mdW5jdGlvbjooLiopIiAge2djbSAkTWF0Y2hlc1sxXSAtZWEgU2lsZW50bHlDb250aW51ZX0NCiAgICAgICAgIl5zdHJpY3RfZnVuY3Rpb246KC4qKSIgIHtUZXN0LVBhdGggIkZ1bmN0aW9uOlwkKCRNYXRjaGVzWzFdKSJ9DQogICAgfSkNCiAgICBpZiAoISRTdGF0KSB7JE9uRmFpbC5JbnZva2UoKX0NCiAgICBpZiAoJFBhc3N0aHJ1KSB7cmV0dXJuICRTdGF0fQ0KfQoKZnVuY3Rpb24gQWxpZ24tVGV4dCB7cGFyYW0oW1BhcmFtZXRlcihNYW5kYXRvcnk9JFRydWUpXVtTdHJpbmdbXV0kVGV4dCwgW1ZhbGlkYXRlU2V0KCJDZW50ZXIiLCJSaWdodCIsIkxlZnQiKV1bU3RyaW5nXSRBbGlnbj0nQ2VudGVyJykNCg0KICAgIGlmICgkVGV4dC5jb3VudCAtZ3QgMSkgew0KICAgICAgICAkYW5zID0gQCgpDQogICAgICAgIGZvcmVhY2ggKCRsbiBpbiAkVGV4dCkgeyRBbnMgKz0gQWxpZ24tVGV4dCAkbG4gJEFsaWdufQ0KICAgICAgICByZXR1cm4gKCRhbnMpDQogICAgfSBlbHNlIHsNCiAgICAgICAgJFdpblNpemUgPSAkKEdldC1Ib3N0KS5VSS5SYXdVSS5XaW5kb3dTaXplLldpZHRoDQogICAgICAgIGlmICgoIiIrJFRleHQpLkxlbmd0aCAtZ2UgJFdpblNpemUpIHsNCiAgICAgICAgICAgICRBcHBlbmRlciA9IEAoIiIpOw0KICAgICAgICAgICAgJGogPSAwDQogICAgICAgICAgICBmb3JlYWNoICgkcCBpbiAwLi4oKCIiKyRUZXh0KS5MZW5ndGgtMSkpew0KICAgICAgICAgICAgICAgIGlmICgoJHArMSklJHdpbnNpemUgLWVxIDApIHskaisrOyRBcHBlbmRlciArPSAiIn0NCiMgICAgICAgICAgICAgICAgIiIrJGorIiAtICIrJHANCiAgICAgICAgICAgICAgICAkQXBwZW5kZXJbJGpdICs9ICRUZXh0LmNoYXJzKCRwKQ0KICAgICAgICAgICAgfQ0KICAgICAgICAgICAgcmV0dXJuIChBbGlnbi1UZXh0ICRBcHBlbmRlciAkQWxpZ24pDQogICAgICAgIH0gZWxzZSB7DQogICAgICAgICAgICBpZiAoJEFsaWduIC1lcSAiQ2VudGVyIikgew0KICAgICAgICAgICAgICAgIHJldHVybiAoIiAiKlttYXRoXTo6dHJ1bmNhdGUoKCRXaW5TaXplLSgiIiskVGV4dCkuTGVuZ3RoKS8yKSskVGV4dCkNCiAgICAgICAgICAgIH0gZWxzZWlmICgkQWxpZ24gLWVxICJSaWdodCIpIHsNCiAgICAgICAgICAgICAgICByZXR1cm4gKCIgIiooJFdpblNpemUtKCIiKyRUZXh0KS5MZW5ndGgtMSkrJFRleHQpDQogICAgICAgICAgICB9IGVsc2Ugew0KICAgICAgICAgICAgICAgIHJldHVybiAoJFRleHQpDQogICAgICAgICAgICB9DQogICAgICAgIH0NCiAgICB9DQp9CgpmdW5jdGlvbiBXcml0ZS1BUCB7cGFyYW0oW1BhcmFtZXRlcihNYW5kYXRvcnk9JFRydWUpXVtTdHJpbmddJFRleHQsIFtTd2l0Y2hdJE5vU2lnbiwgW1N3aXRjaF0kUGxhaW5UZXh0LCBbVmFsaWRhdGVTZXQoIkNlbnRlciIsIlJpZ2h0IiwiTGVmdCIpXVtTdHJpbmddJEFsaWduPSdMZWZ0JykNCg0KICAgIGlmICghJHRleHQgLW9yICR0ZXh0IC1tYXRjaCAiXltcK1wtXCFcKnhcPiBdKyQiKSB7cmV0dXJufQ0KICAgICRhY2MgID0gQCgoJysnLCcyJyksKCctJywnMTInKSwoJyEnLCcxNCcpLCgnKicsJzMnKSkNCiAgICAkdGIgICA9ICcnOyRmdW5jICAgPSAkZmFsc2UNCiAgICB3aGlsZSAoJFRleHQuY2hhcnMoMCkgLWVxICd4JykgeyRmdW5jID0gJHRydWU7ICRUZXh0ID0gJFRleHQuc3Vic3RyaW5nKDEpLnRyaW0oKX0NCiAgICB3aGlsZSAoJFRleHQuY2hhcnMoMCkgLWVxICc+JykgeyR0YiArPSAiICAgICI7ICRUZXh0ID0gJFRleHQuc3Vic3RyaW5nKDEpLnRyaW0oKX0NCiAgICAkU2lnbiA9ICRUZXh0LmNoYXJzKDApDQogICAgJFRleHQgPSAkVGV4dC5zdWJzdHJpbmcoMSkudHJpbSgpLnJlcGxhY2UoJy94XCcsJycpLnJlcGxhY2UoJ1suXScsJ1tDdXJyZW50IERpcmVjdG9yeV0nKQ0KICAgICR2ZXJzID0gJGZhbHNlDQogICAgZm9yZWFjaCAoJGFyIGluICRhY2MpIHtpZiAoJGFyWzBdIC1lcSAkc2lnbikgeyR2ZXJzID0gJHRydWU7ICRjbHIgPSAkYXJbMV07ICRTaWduID0gIlske1NpZ259XSAifX0NCiAgICBpZiAoISR2ZXJzKSB7VGhyb3cgIkluY29ycmVjdCBTaWduIFskU2lnbl0gUGFzc2VkISJ9DQogICAgQVAtUmVxdWlyZSAiZnVuY3Rpb246QWxpZ24tVGV4dCIge2Z1bmN0aW9uIEdsb2JhbDpBbGlnbi1UZXh0KCRhbGlnbiwkdGV4dCkgeyR0ZXh0fX0NCiAgICAkRGF0YSA9IEFsaWduLVRleHQgLUFsaWduICRBbGlnbiAkdGIkKGlmICghJE5vU2lnbikgeyRTaWdufSkkVGV4dA0KICAgIGlmICgkUGxhaW5UZXh0KSB7cmV0dXJuICREYXRhfQ0KICAgIFdyaXRlLUhvc3QgLU5vTmV3TGluZTokZnVuYyAtZiAkY2xyICREYXRhDQp9CgpmdW5jdGlvbiBQcm9jZXNzLVRyYW5zcGFyZW5jeSB7cGFyYW0oW0FsaWFzKCJUcmFuc3BhcmVuY3kiLCJJbnZpc2liaWxpdHkiLCJpIiwidCIpXVtWYWxpZGF0ZVJhbmdlKDAsMTAwKV1baW50XSRUcmFucz0wLCBbUGFyYW1ldGVyKE1hbmRhdG9yeT0kVHJ1ZSldJFByb2Nlc3MpDQoNCiAgICBpZiAoJFByb2Nlc3MgLW1hdGNoICJcLmV4ZSQiKSB7JFByb2Nlc3MgPSAkUHJvY2Vzcy5yZXBsYWNlKCIuZXhlIiwiIil9DQogICAgVHJ5IHsNCiAgICAgICAgaWYgKCRQcm9jZXNzLm5hbWUpIHskUHJvYyA9ICRQcm9jZXNzLm5hbWV9IGVsc2UgeyRQcm9jID0gKEdldC1Qcm9jZXNzICRQcm9jZXNzIC1FcnJvckFjdGlvbiBTdG9wKVswXS5uYW1lfQ0KICAgIH0gY2F0Y2ggew0KICAgICAgICBpZiAoW0ludF06OlRyeVBhcnNlKCRQcm9jZXNzLCBbcmVmXTMpKSB7JFByb2MgPSAoKEdldC1Qcm9jZXNzIHwgPyB7JF8uSUQgLWVxICRQcm9jZXNzfSlbMF0pLm5hbWV9DQogICAgfQ0KICAgIGlmICgkUHJvYyAtbm90TWF0Y2ggIlwuZXhlJCIpIHskUHJvYyA9ICIkUHJvYy5leGUifQ0KICAgIG5pcmNtZCB3aW4gdHJhbnMgcHJvY2VzcyAiJFByb2MiICgoMTAwLSRUcmFucykqMjU1LzEwMCkgfCBPdXQtTnVsbA0KfQoKZnVuY3Rpb24gQVAtUmVxdWlyZSB7cGFyYW0oW1BhcmFtZXRlcihNYW5kYXRvcnk9JFRydWUpXVtBbGlhcygiRnVuY3Rpb25hbGl0eSIsIkxpYnJhcnkiKV1bU3RyaW5nXSRMaWIsIFtTY3JpcHRCbG9ja10kT25GYWlsPXt9LCBbU3dpdGNoXSRQYXNzdGhydSkNCg0KICAgIFtib29sXSRTdGF0ID0gJChzd2l0Y2ggLXJlZ2V4ICgkTGliLnRyaW0oKSkgew0KICAgICAgICAiXkludGVybmV0IiAge3Rlc3QtY29ubmVjdGlvbiBnb29nbGUuY29tIC1Db3VudCAxIC1RdWlldH0NCiAgICAgICAgIl5kZXA6KC4qKSIgIHtpZiAoJE1hdGNoZXNbMV0gLW5lICJ3aGVyZSIpe0FQLVJlcXVpcmUgImRlcDp3aGVyZSIgeyRNT0RFPTJ9fWVsc2V7JE1PREU9Mn07aWYgKCRNT0RFLTIpe0dldC1XaGVyZSAkTWF0Y2hlc1sxXX1lbHNle3RyeXsmICRNYXRjaGVzWzFdICIvZmpmZGpmZHMgLS1kc2phaGRocyAtZHNqYWRqIiAyPiRudWxsOyJzdWNjIn1jYXRjaHt9fX0NCiAgICAgICAgIl5mdW5jdGlvbjooLiopIiAge2djbSAkTWF0Y2hlc1sxXSAtZWEgU2lsZW50bHlDb250aW51ZX0NCiAgICAgICAgIl5zdHJpY3RfZnVuY3Rpb246KC4qKSIgIHtUZXN0LVBhdGggIkZ1bmN0aW9uOlwkKCRNYXRjaGVzWzFdKSJ9DQogICAgfSkNCiAgICBpZiAoISRTdGF0KSB7JE9uRmFpbC5JbnZva2UoKX0NCiAgICBpZiAoJFBhc3N0aHJ1KSB7cmV0dXJuICRTdGF0fQ0KfQoKU2V0LUFsaWFzIGludiBQcm9jZXNzLVRyYW5zcGFyZW5jeQ==")))
# ========================================END=OF=COMPILER===========================================================|
$ResourceKey = "QVAtSXMtQXdlc29tZQ";$VersionKey = "TGVhcGluZyBTdGFy";$Version = 0.1;$Expiry = @{"BackBone"=20}
$CacheLoc="$($Env:AppData)\AP-WebConsole";$Repo="api.github.com/repos/avdaredevil/AP-WebConsole"
$ResourceLock = New-Object System.Threading.Mutex($false, $ResourceKey)
if ($PSScriptRoot -ne $CacheLoc) {Write-Host -f yellow "[!] Invalid Launch of BackBone!";exit}
if (!$SepProcess) {Write-Host -f 3 "    [*] Creating New Backbone Process";$a=Start powershell "-ep bypass -NoExit iex '$CacheLoc\AP-BackBone.ps1 -SepProcess'" -PassThru;Write-Host -f 2 "        [+] Created BackBone @ ID:$($a.ID)";exit}
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
    $Data = Align-Text -Align $Align $tb$(if (!$NoSign) {$Sign})$Text
    if ($PlainText) {return $Data}
    Write-Host -NoNewLine:$func -f $clr $Data
}
function Translate-Client($Res){if ($Script:Clients.$res) {return $res}}
function Parse-Communication($Data){
    Write-AP "*Parsing [$Data]"
    if ($Data -NotMatch "^(?<Res>\w+)\|(?<Action>\w+)(\|(?<Params>.+))?$") {Write-AP "!Invalid Data Sent [$Data].";return}
    $Res=$Matches.Res;$Act=$Matches.Action
    if ($Matches.Params) {$Ret = @{};$Matches.Params.split("|") | ? {$_ -match "^(?<Key>\w+)=(?<Val>.+)$"} | % {$Ret.($Matches.Key) = $Matches.Val}}
    $Ret = @{"Client"=Translate-Client $Res;"Action"=$Act;"Params"=$Ret}
    if (!$Ret.Client) {$Ret.Auth = $Res -eq $ResourceKey}
    return $Ret
}
function New-Client {
    $Key = "";while (!$Key -or $Script:Clients.$Key) {$Key=([char[]]([char]'a'..[char]'z') + 0..9 | sort {get-random})[0..12] -join ''}
    $Script:Clients.$Key = @{"Commands"=0;"LastUsed"=(Get-Date)}
    return $Key
}
function Get-IPCServer($Key) {
    $ClientHash = @{'Client' = New-Object System.IO.Pipes.NamedPipeServerStream($Key, [System.IO.Pipes.PipeDirection]::InOut)}
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
    } | Add-Member -MemberType ScriptMethod -PassThru -Name Wait -Value {
        $This.IPC.Client.WaitForConnection()
        $This.IPC.Writer.AutoFlush=$true
    }
    return $IPC
}
function Clear-Line {
    $Nm = $Host.UI.RawUI.WindowSize.Width-1
    Write-Host -NoNewLine "$(("`b"*$NM)+(" "*$NM)+("`b"*$NM))"
}
#=====================|
$Script:Clients = @{}
try{$IPC = Get-IPCServer $ResourceKey}catch{Write-AP "!Backbone already running!";exit}
Write-AP "*Waiting for new connection."
$IPC.Wait()
#==========================================================|
while ($true) {
    Write-AP "*Waiting for new command."
    $cmd = Parse-Communication $IPC.Read();if(!$cmd){$IPC.Write("404|Invalid Command");continue}
    if ($cmd.Action -ne "Login" -and !$cmd.Client) {Write-AP "!No Such user Registered";$IPC.Write("403|You aren't authenticated!")}
    $Cli = $Script:Clients.($cmd.client);$cli.Commands++
    switch ($cmd.Action) {
        "Login" {if ($cmd.Client) {Write-AP "!Already Logged in [$($cmd.Client)]";$IPC.Write("600|Client Already Logged in!");break};if (!$cmd.Auth) {Write-AP "!Invalid ResourceKey Passed";$IPC.Write("403|Inv Resource Key");break};$Cli = New-Client;Write-AP "+Logged in [$cli]";$IPC.write("200|Logged In [$cli]|key=$cli");break}
        "Ping"  {Write-AP "+Accepted Ping from [$($cmd.client)]";$IPC.write("200|Alive");break}
        "Requests" {Write-AP "+$($cmd.client) had $($cli.Commands)";$IPC.write("200|You have made $($cli.Commands) requests|Requests=$($cli.Commands)");break}
        default {Write-AP "!Sorry Dude [IDK: $_]";$IPC.Write("404|Command not found");continue}
    }
}
