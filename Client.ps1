
# =======================================START=OF=COMPILER==========================================================|
#    The Following Code was added by AP-Compiler Version [1.1] To Make this program independent of AP-Core Engine
# ==================================================================================================================|
iex ([System.Text.Encoding]::UTF8.GetString([System.Convert]::FromBase64String("ZnVuY3Rpb24gR2V0LVdoZXJlIHtwYXJhbShbUGFyYW1ldGVyKE1hbmRhdG9yeT0kdHJ1ZSldW3N0cmluZ10kRmlsZSwgW1N3aXRjaF0kQWxsKQ0KDQogICAgQVAtUmVxdWlyZSAiZGVwOndoZXJlIiB7dGhyb3cgIk5lZWQgU3lzMzJcd2hlcmUgdG8gd29yayEiO3JldHVybn0NCiAgICAkT3V0ID0gd2hlcmUuZXhlICRmaWxlIDI+JG51bGwNCiAgICBpZiAoISRPdXQpIHtyZXR1cm59DQogICAgaWYgKCRBbGwpIHtyZXR1cm4gJE91dH0NCiAgICByZXR1cm4gQCgkT3V0KVswXQ0KfQoKZnVuY3Rpb24gQ2xlYXItTGluZSB7DQogICAgJE5tID0gJEhvc3QuVUkuUmF3VUkuV2luZG93U2l6ZS5XaWR0aC0xDQogICAgV3JpdGUtSG9zdCAtTm9OZXdMaW5lICIkKCgiYGIiKiROTSkrKCIgIiokTk0pKygiYGIiKiROTSkpIg0KfQoKZnVuY3Rpb24gQVAtUmVxdWlyZSB7cGFyYW0oW1BhcmFtZXRlcihNYW5kYXRvcnk9JFRydWUpXVtBbGlhcygiRnVuY3Rpb25hbGl0eSIsIkxpYnJhcnkiKV1bU3RyaW5nXSRMaWIsIFtTY3JpcHRCbG9ja10kT25GYWlsPXt9LCBbU3dpdGNoXSRQYXNzVGhydSkNCg0KICAgIFtib29sXSRTdGF0ID0gJChzd2l0Y2ggLXJlZ2V4ICgkTGliLnRyaW0oKSkgew0KICAgICAgICAiXkludGVybmV0IiAge3Rlc3QtY29ubmVjdGlvbiBnb29nbGUuY29tIC1Db3VudCAxIC1RdWlldH0NCiAgICAgICAgIl5kZXA6KC4qKSIgIHtpZiAoJE1hdGNoZXNbMV0gLW5lICJ3aGVyZSIpe0FQLVJlcXVpcmUgImRlcDp3aGVyZSIgeyRNT0RFPTJ9fWVsc2V7JE1PREU9Mn07aWYgKCRNT0RFLTIpe0dldC1XaGVyZSAkTWF0Y2hlc1sxXX1lbHNle3RyeXsmICRNYXRjaGVzWzFdICIvZmpmZGpmZHMgLS1kc2phaGRocyAtZHNqYWRqIiAyPiRudWxsOyJzdWNjIn1jYXRjaHt9fX0NCiAgICAgICAgIl5saWI6KC4qKSIgIHskRmlsZT0kTWF0Y2hlc1sxXTskTGliPUFQLUNvbnZlcnRQYXRoICI8TElCPiI7KHRlc3QtcGF0aCAtdCBsZWFmICIkTGliXCRGaWxlIikgLW9yICh0ZXN0LXBhdGggLXQgbGVhZiAiJExpYlwkRmlsZS5kbGwiKX0NCiAgICAgICAgIl5mdW5jdGlvbjooLiopIiAge2djbSAkTWF0Y2hlc1sxXSAtZWEgU2lsZW50bHlDb250aW51ZX0NCiAgICAgICAgIl5zdHJpY3RfZnVuY3Rpb246KC4qKSIgIHtUZXN0LVBhdGggIkZ1bmN0aW9uOlwkKCRNYXRjaGVzWzFdKSJ9DQogICAgfSkNCiAgICBpZiAoISRTdGF0KSB7JE9uRmFpbC5JbnZva2UoKX0NCiAgICBpZiAoJFBhc3NUaHJ1KSB7cmV0dXJuICRTdGF0fQ0KfQoKZnVuY3Rpb24gV3JpdGUtQVAge3BhcmFtKFtQYXJhbWV0ZXIoTWFuZGF0b3J5PSRUcnVlKV0kVGV4dCwgW1N3aXRjaF0kTm9TaWduLCBbU3dpdGNoXSRQbGFpblRleHQsIFtWYWxpZGF0ZVNldCgiQ2VudGVyIiwiUmlnaHQiLCJMZWZ0IildW1N0cmluZ10kQWxpZ249J0xlZnQnLCBbU3dpdGNoXSRQYXNzVGhydSkNCg0KICAgIGlmICgkdGV4dC5jb3VudCAtZ3QgMSkge3JldHVybiAkVGV4dCB8P3siJF8ifXwgJSB7V3JpdGUtQVAgJF8gLU5vU2lnbjokTm9TaWduIC1QbGFpblRleHQ6JFBsYWluVGV4dCAtQWxpZ24gJEFsaWdufX0NCiAgICBpZiAoISR0ZXh0IC1vciAkdGV4dCAtbm90bWF0Y2ggIl4oPzxOTkw+eCk/KD88dD5cPiopKD88cz5bK1wtIVwqXSkoPzx3Pi4qKSIpIHtyZXR1cm4gJFRleHR9DQogICAgJHRiICA9ICIgICAgIiokTWF0Y2hlcy50Lmxlbmd0aDsNCiAgICAkQ29sID0gQHsnKyc9JzInOyctJz0nMTInOychJz0nMTQnOycqJz0nMyd9WygkU2lnbiA9ICRNYXRjaGVzLlMpXQ0KICAgIGlmICghJENvbCkge1Rocm93ICJJbmNvcnJlY3QgU2lnbiBbJFNpZ25dIFBhc3NlZCEifQ0KICAgICRTaWduID0gJChpZiAoISROb1NpZ24pIHsiWyRTaWduXSAifSBlbHNlIHsiIn0pDQogICAgQVAtUmVxdWlyZSAiZnVuY3Rpb246QWxpZ24tVGV4dCIge2Z1bmN0aW9uIEdsb2JhbDpBbGlnbi1UZXh0KCRhbGlnbiwkdGV4dCkgeyR0ZXh0fX0NCiAgICAkRGF0YSA9ICIkdGIkU2lnbiQoJE1hdGNoZXMuVykiO2lmICghJERhdGEpIHtyZXR1cm59DQogICAgJERhdGEgPSBBbGlnbi1UZXh0IC1BbGlnbiAkQWxpZ24gIiR0YiRTaWduJCgkTWF0Y2hlcy5XKSINCiAgICBpZiAoJFBsYWluVGV4dCkge3JldHVybiAkRGF0YX0NCiAgICBXcml0ZS1Ib3N0IC1Ob05ld0xpbmU6JChbYm9vbF0kTWF0Y2hlcy5OTkwpIC1mICRDb2wgJERhdGENCiAgICBpZiAoJFBhc3NUaHJ1KSB7JERhdGF9DQp9CgpmdW5jdGlvbiBDb252ZXJ0LUZyb21CYXNlNjQge3BhcmFtKFtTdHJpbmddJFRleHQsIFtWYWxpZGF0ZVNldCgiVVRGOCIsIlVuaWNvZGUiKV1bU3RyaW5nXSRFbmNvZGluZyA9ICJVVEY4IikNCg0KICAgIFtTeXN0ZW0uVGV4dC5FbmNvZGluZ106OiRFbmNvZGluZy5HZXRTdHJpbmcoW1N5c3RlbS5Db252ZXJ0XTo6RnJvbUJhc2U2NFN0cmluZygkVGV4dCkpDQp9CgpmdW5jdGlvbiBHZXQtRmlsZUhhc2gge3BhcmFtKFtQYXJhbWV0ZXIoTWFuZGF0b3J5PSRUcnVlKV1bU3RyaW5nXSRGaWxlKQ0KDQogICAgaWYgKCEoVGVzdC1QYXRoIC10eXBlIGxlYWYgJEZpbGUpKSB7VGhyb3cgIltHZXQtRmlsZUhhc2hdIEZpbGUgWyRGaWxlXSBOb3QgZm91bmQifQ0KICAgICRGaWxlID0gInswfSIgLWYgKFJlc29sdmUtUGF0aCAkRmlsZSkNCiAgICAkYSA9IFtTeXN0ZW0uU2VjdXJpdHkuQ3J5cHRvZ3JhcGh5Lk1ENV06OkNyZWF0ZSgpDQogICAgJEhhc2ggPSAkYS5Db21wdXRlSGFzaChbSU8uRmlsZV06OlJlYWRBbGxCeXRlcygkRmlsZSkpIC1qb2luICI6Ig0KICAgICRhLkRpc3Bvc2UoKQ0KICAgIFJldHVybiAkSGFzaA0KfQoKZnVuY3Rpb24gUHJvY2Vzcy1UcmFuc3BhcmVuY3kge3BhcmFtKFtBbGlhcygiVHJhbnNwYXJlbmN5IiwiSW52aXNpYmlsaXR5IiwiaSIsInQiKV1bVmFsaWRhdGVSYW5nZSgwLDEwMCldW2ludF0kVHJhbnM9MCwgW1BhcmFtZXRlcihNYW5kYXRvcnk9JFRydWUpXSRQcm9jZXNzKQ0KDQogICAgaWYgKCRQcm9jZXNzIC1tYXRjaCAiXC5leGUkIikgeyRQcm9jZXNzID0gJFByb2Nlc3MucmVwbGFjZSgiLmV4ZSIsIiIpfQ0KICAgIFRyeSB7DQogICAgICAgIGlmICgkUHJvY2Vzcy5uYW1lKSB7JFByb2MgPSAkUHJvY2Vzcy5uYW1lfSBlbHNlIHskUHJvYyA9IChHZXQtUHJvY2VzcyAkUHJvY2VzcyAtRXJyb3JBY3Rpb24gU3RvcClbMF0ubmFtZX0NCiAgICB9IGNhdGNoIHsNCiAgICAgICAgaWYgKFtJbnRdOjpUcnlQYXJzZSgkUHJvY2VzcywgW3JlZl0zKSkgeyRQcm9jID0gKChHZXQtUHJvY2VzcyB8ID8geyRfLklEIC1lcSAkUHJvY2Vzc30pWzBdKS5uYW1lfQ0KICAgIH0NCiAgICBpZiAoJFByb2MgLW5vdE1hdGNoICJcLmV4ZSQiKSB7JFByb2MgPSAiJFByb2MuZXhlIn0NCiAgICBuaXJjbWQgd2luIHRyYW5zIHByb2Nlc3MgIiRQcm9jIiAoKDEwMC0kVHJhbnMpKjI1NS8xMDApIHwgT3V0LU51bGwNCn0KClNldC1BbGlhcyBpbnYgUHJvY2Vzcy1UcmFuc3BhcmVuY3k=")))
# ========================================END=OF=COMPILER===========================================================|
<#
|============================================================================================>|
   AP-WebConsole by APoorv Verma [AP] on 2/3/2015
|============================================================================================>|
      $) Initializes AP-WebConsole from my GitHub Repository
      $) Useful for remote debugging, installation, and reporting
      $) Fully functional in-built cache/resource/depedency handling IPC Channel
      $) WILL HAVE A USEFUL CACHE SYSTEM TO PREVENT UNNECCESARY REQUESTS
|============================================================================================>|
#>
$ResourceKey = "QVAtSXMtQXdlc29tZQ";$VersionKey = "TGVhcGluZyBTdGFy";$Version = 0.1;$Expiry = @{"BackBone"=20}
$CacheLoc="$($Env:AppData)\AP-WebConsole";$Repo="api.github.com/repos/avdaredevil/AP-WebConsole"
$ResourceLock = New-Object System.Threading.Mutex($false, $ResourceKey)
if (!(Test-Path $CacheLoc)) {md $CacheLoc >$null}
#==========================================|
$Script:ERROR_CODES=@{
#   "Cod"="MSG",<Success?>
    "200"="OK",$true
    "403"="Access Denied",$false
    "404"="Not Found",$false
    "600"="OK-Denied",$true
}
#==========================================|
function Get-IPCClient($Key) {
    $ClientHash = @{'Client' = new-object System.IO.Pipes.NamedPipeClientStream('.', $Key, [System.IO.Pipes.PipeDirection]::InOut,[System.IO.Pipes.PipeOptions]::None,[System.Security.Principal.TokenImpersonationLevel]::Impersonation)}
    $ClientHash.Reader = new-object System.IO.StreamReader($ClientHash.Client)
    $ClientHash.Writer = new-object System.IO.StreamWriter($ClientHash.Client)
    $IPC = [PSCustomObject]@{
        'IPC' = $ClientHash
    } | Add-Member -MemberType ScriptMethod -PassThru -Name Write -Value {
        param([Parameter(Mandatory=1)]$String)
        $This.IPC.Writer.WriteLine($String)
    } | Add-Member -MemberType ScriptMethod -PassThru -Name Read -Value {$This.IPC.Reader.ReadLine()} | Add-Member -MemberType ScriptMethod -PassThru -Name SendCommand -Value {
        param([Parameter(Mandatory=1)]$Command,[string]$Auth=$AP_DataWC:ClientKey)
        $This.Write("$Auth|$Command")
        return $This.Read()
    } | Add-Member -MemberType ScriptMethod -PassThru -Name Connect -Value {
        param([Int]$Timeout=2000)
        $This.IPC.Client.Connect($Timeout)
        $This.IPC.Writer.AutoFlush=$true
    }
    return $IPC
}
function AP-FetchAsset([ValidateSet("Script")]$Type,$Source,[Switch]$Import,[Switch]$Quit_OnFail) {
    $Code = $(if ($Import) {{param($Path);. $Path;return}} else {{return $Path}})
    if (AP-WebCache $Type $Source -Check) {$Code.Invoke((AP-WebCache $Type $Source -Src))}
    AP-Require "Internet" {Write-Host -f yellow "[!] Need a Internet connection to fetch asset";if ($Quit_OnFail) {exit};return}
}
function Get-FileHash ([Parameter(Mandatory=$True)][String]$File) {
    if (!(Test-Path -type leaf $File)) {Throw "[Get-FileHash] File Not found"}
    $File = "{0}" -f (Resolve-Path $File)
    $a = [System.Security.Cryptography.MD5]::Create()
    $Hash = $a.ComputeHash([IO.File]::ReadAllBytes($File)) -join ":";$a.Dispose()
    Return $Hash
}
function Parse-Communication($Data){
    Write-AP "*Parsing [$Data]"
    if ($Data -NotMatch "^(?<Code>\d+)\|(?<Message>[^\|]+)?(\|(?<Params>.+))?$") {Write-AP "!Invalid Data Sent [$Data].";return}
    $Code=$Script:ERROR_CODES.($Matches.Code);if (!$Code) {Write-AP ">!Invalid code recieved [$($Matches.Code)]";return}
    $Msg=$Matches.Message
    if ($Matches.Params) {$Ret = @{};$Matches.Params.split("|") | ? {$_ -match "^(?<Key>\w+)=(?<Val>.+)$"} | % {$Ret.($Matches.Key) = $Matches.Val}}
    $Ret = @{"Code"=$Code[0];"Success"=$Code[1];"Message"=$Msg;"Params"=$Ret}
    return $Ret
}
function Load-WebBackbone {
    $BkBn="$CacheLoc\AP-BackBone.ps1";$IsBk=Test-Path $BkBn;if (!$IsBk -or (New-TimeSpan (ls $BkBn).CreationTime (Get-Date)).TotalDays -gt $Expiry.BackBone) {
        Write-AP ">*Fetching $(if($IsBk){'new '})backbone [$(if($IsBk){'Expired'}else{'Doesn''t-Exist'})]!"
        $API = $(try{irm "https://$repo/contents/AP-BackBone.ps1"}catch{})
        if (!$API.Content) {Write-AP ">!Cannot Access AP-BackBone on GitHub!";exit}
        $null=$ResourceLock.WaitOne()
        (Convert-FromBase64 $API.Content).Substring(1) | Out-File -en default $BkBn
        $ResourceLock.ReleaseMutex()
    }
    try{& $BkBn}catch{Write-AP ">!BackBone Failed to Launch [$_]";exit}
}
function Clear-Line {
    $Nm = $Host.UI.RawUI.WindowSize.Width-1
    Write-Host -NoNewLine "$(("`b"*$NM)+(" "*$NM)+("`b"*$NM))"
}
$IPC = Get-IPCClient $ResourceKey
#=================BACKBONE======================|
Write-AP "*Establishing connection with BackBone Process."
$ConnectFail=0
while (1) {
    if ($i++ -gt 3) {Write-AP ">!Could not establish a connection, sorry.";exit}
    try {Write-AP "x>*Attempt: $i/4";[Console]::CursorLeft=0;$IPC.Connect();break} catch {if ("$_" -match "Already in a connected") {break};Load-WebBackbone;continue}
}
Clear-Line;Write-AP "*Logging In"
$Script:ClientKey = Parse-Communication $IPC.SendCommand("Login",$ResourceKey)
if (!$Script:ClientKey.Success) {Write-AP ">!$($Script:ClientKey.Message)";exit}
$Script:ClientKey = $Script:ClientKey.Params.Key
Write-AP ">+Logged in as [$($Script:ClientKey)]"
$Global:AP_DataWC=@{"Key"=$Script:ClientKey;"IPC"=$IPC}
#=================MODULES=ENV===================|
AP-FetchAsset "Script" "Modules-Common" -Q -Import
#switch ((Get-Host).Version.Major) {
#    3 {AP-FetchAsset "Script" "Modules-Common-v3" -Import;break}
#}
