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
iex ([System.Text.Encoding]::UTF8.GetString([System.Convert]::FromBase64String("ZnVuY3Rpb24gQ2xlYXItTGluZSB7DQogICAgJE5tID0gJEhvc3QuVUkuUmF3VUkuV2luZG93U2l6ZS5XaWR0aC0xDQogICAgV3JpdGUtSG9zdCAtTm9OZXdMaW5lICIkKCgiYGIiKiROTSkrKCIgIiokTk0pKygiYGIiKiROTSkpIg0KfQoKZnVuY3Rpb24gUHJvY2Vzcy1UcmFuc3BhcmVuY3kge3BhcmFtKFtBbGlhcygiVHJhbnNwYXJlbmN5IiwiSW52aXNpYmlsaXR5IiwiaSIsInQiKV1bVmFsaWRhdGVSYW5nZSgwLDEwMCldW2ludF0kVHJhbnM9MCwgW1BhcmFtZXRlcihNYW5kYXRvcnk9JFRydWUpXSRQcm9jZXNzKQ0KDQogICAgaWYgKCRQcm9jZXNzIC1tYXRjaCAiXC5leGUkIikgeyRQcm9jZXNzID0gJFByb2Nlc3MucmVwbGFjZSgiLmV4ZSIsIiIpfQ0KICAgIFRyeSB7DQogICAgICAgIGlmICgkUHJvY2Vzcy5uYW1lKSB7JFByb2MgPSAkUHJvY2Vzcy5uYW1lfSBlbHNlIHskUHJvYyA9IChHZXQtUHJvY2VzcyAkUHJvY2VzcyAtRXJyb3JBY3Rpb24gU3RvcClbMF0ubmFtZX0NCiAgICB9IGNhdGNoIHsNCiAgICAgICAgaWYgKFtJbnRdOjpUcnlQYXJzZSgkUHJvY2VzcywgW3JlZl0zKSkgeyRQcm9jID0gKChHZXQtUHJvY2VzcyB8ID8geyRfLklEIC1lcSAkUHJvY2Vzc30pWzBdKS5uYW1lfQ0KICAgIH0NCiAgICBpZiAoJFByb2MgLW5vdE1hdGNoICJcLmV4ZSQiKSB7JFByb2MgPSAiJFByb2MuZXhlIn0NCiAgICBuaXJjbWQgd2luIHRyYW5zIHByb2Nlc3MgIiRQcm9jIiAoKDEwMC0kVHJhbnMpKjI1NS8xMDApIHwgT3V0LU51bGwNCn0KCmZ1bmN0aW9uIFdyaXRlLUFQIHtwYXJhbShbUGFyYW1ldGVyKE1hbmRhdG9yeT0kVHJ1ZSldJFRleHQsIFtTd2l0Y2hdJE5vU2lnbiwgW1N3aXRjaF0kUGxhaW5UZXh0LCBbVmFsaWRhdGVTZXQoIkNlbnRlciIsIlJpZ2h0IiwiTGVmdCIpXVtTdHJpbmddJEFsaWduPSdMZWZ0JykNCg0KICAgIGlmICgkdGV4dC5jb3VudCAtZ3QgMSkgeyRUZXh0IHw/eyIkXyJ9fCAlIHtXcml0ZS1BUCAkXyAtTm9TaWduOiROb1NpZ24gLVBsYWluVGV4dDokUGxhaW5UZXh0IC1BbGlnbiAkQWxpZ259O3JldHVybn0NCiAgICBpZiAoISR0ZXh0IC1vciAkdGV4dCAtbm90bWF0Y2ggIl4oPzxOTkw+eCk/KD88dD5cPiopKD88cz5bK1wtIVwqXSkoPzx3Pi4rKT8kIikge3JldHVybn0NCiAgICAkdGIgID0gIiAgICAiKiRNYXRjaGVzLnQubGVuZ3RoOw0KICAgICRDb2wgPSBAeycrJz0nMic7Jy0nPScxMic7JyEnPScxNCc7JyonPSczJ31bKCRTaWduID0gJE1hdGNoZXMuUyldDQogICAgaWYgKCEkQ29sKSB7VGhyb3cgIkluY29ycmVjdCBTaWduIFskU2lnbl0gUGFzc2VkISJ9DQogICAgJFNpZ24gPSAkKGlmICghJE5vU2lnbikgeyJbJFNpZ25dICJ9IGVsc2UgeyIifSkNCiAgICBBUC1SZXF1aXJlICJmdW5jdGlvbjpBbGlnbi1UZXh0IiB7ZnVuY3Rpb24gR2xvYmFsOkFsaWduLVRleHQoJGFsaWduLCR0ZXh0KSB7JHRleHR9fQ0KICAgICREYXRhID0gQWxpZ24tVGV4dCAtQWxpZ24gJEFsaWduICIkdGIkU2lnbiQoJE1hdGNoZXMuVykiDQogICAgaWYgKCRQbGFpblRleHQpIHtyZXR1cm4gJERhdGF9DQogICAgV3JpdGUtSG9zdCAtTm9OZXdMaW5lOiQoW2Jvb2xdJE1hdGNoZXMuTk5MKSAtZiAkQ29sICREYXRhDQp9CgpmdW5jdGlvbiBBUC1SZXF1aXJlIHtwYXJhbShbUGFyYW1ldGVyKE1hbmRhdG9yeT0kVHJ1ZSldW0FsaWFzKCJGdW5jdGlvbmFsaXR5IiwiTGlicmFyeSIpXVtTdHJpbmddJExpYiwgW1NjcmlwdEJsb2NrXSRPbkZhaWw9e30sIFtTd2l0Y2hdJFBhc3N0aHJ1KQ0KDQogICAgW2Jvb2xdJFN0YXQgPSAkKHN3aXRjaCAtcmVnZXggKCRMaWIudHJpbSgpKSB7DQogICAgICAgICJeSW50ZXJuZXQiICB7dGVzdC1jb25uZWN0aW9uIGdvb2dsZS5jb20gLUNvdW50IDEgLVF1aWV0fQ0KICAgICAgICAiXmRlcDooLiopIiAge2lmICgkTWF0Y2hlc1sxXSAtbmUgIndoZXJlIil7QVAtUmVxdWlyZSAiZGVwOndoZXJlIiB7JE1PREU9Mn19ZWxzZXskTU9ERT0yfTtpZiAoJE1PREUtMil7R2V0LVdoZXJlICRNYXRjaGVzWzFdfWVsc2V7dHJ5eyYgJE1hdGNoZXNbMV0gIi9mamZkamZkcyAtLWRzamFoZGhzIC1kc2phZGoiIDI+JG51bGw7InN1Y2MifWNhdGNoe319fQ0KICAgICAgICAiXmxpYjooLiopIiAgeyRGaWxlPSRNYXRjaGVzWzFdOyRMaWI9QVAtQ29udmVydFBhdGggIjxMSUI+IjsodGVzdC1wYXRoIC10IGxlYWYgIiRMaWJcJEZpbGUiKSAtb3IgKHRlc3QtcGF0aCAtdCBsZWFmICIkTGliXCRGaWxlLmRsbCIpfQ0KICAgICAgICAiXmZ1bmN0aW9uOiguKikiICB7Z2NtICRNYXRjaGVzWzFdIC1lYSBTaWxlbnRseUNvbnRpbnVlfQ0KICAgICAgICAiXnN0cmljdF9mdW5jdGlvbjooLiopIiAge1Rlc3QtUGF0aCAiRnVuY3Rpb246XCQoJE1hdGNoZXNbMV0pIn0NCiAgICB9KQ0KICAgIGlmICghJFN0YXQpIHskT25GYWlsLkludm9rZSgpfQ0KICAgIGlmICgkUGFzc3RocnUpIHtyZXR1cm4gJFN0YXR9DQp9CgpTZXQtQWxpYXMgaW52IFByb2Nlc3MtVHJhbnNwYXJlbmN5")))
# ========================================END=OF=COMPILER===========================================================|
$ResourceKey = "QVAtSXMtQXdlc29tZQ";$VersionKey = "TGVhcGluZyBTdGFy";$Version = 0.1;$Expiry = @{"BackBone"=20}
$CacheLoc="$($Env:AppData)\AP-WebConsole";$Repo="api.github.com/repos/avdaredevil/AP-WebConsole"
$ResourceLock = New-Object System.Threading.Mutex($false, $ResourceKey)
if ($PSScriptRoot -ne $CacheLoc) {Write-Host -f yellow "[!] Invalid Launch of BackBone!";exit}
if (!$SepProcess) {Write-Host -f 3 "    [*] Creating New Backbone Process";$a=Start powershell "-ep bypass iex '$CacheLoc\AP-BackBone.ps1 -SepProcess'" -PassThru;Write-Host -f 2 "        [+] Created BackBone @ ID:$($a.ID)";exit}
#==========================================================|
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
function Get-Connections($IPC) {
    Write-AP "*Waiting for new connection."
    $IPC.Wait()
}
function Kill-IPC($IPC) {try{$IPC.disconnect()}catch{};try{$IPC.Dispose()}catch{}}
function Clear-Line {
    $Nm = $Host.UI.RawUI.WindowSize.Width-1
    Write-Host -NoNewLine "$(("`b"*$NM)+(" "*$NM)+("`b"*$NM))"
}
#=====================|
$Script:Clients = @{}
try{$IPC = Get-IPCServer $ResourceKey}catch{Write-AP "!Backbone already running!";exit}
Get-Connections $IPC
#==========================================================|
while ($true) {
    Write-AP "*Waiting for new command."
    $cmd = Parse-Communication $IPC.Read();if(!$cmd){try{$IPC.Write("404|Invalid Command")}catch{if ("$_" -match "Pipe is Broken"){Write-AP "!Client Disconnected, Quitting";exit};$_};continue}
    if ($cmd.Action -ne "Login" -and !$cmd.Client) {Write-AP "!No Such user Registered";$IPC.Write("403|You aren't authenticated!");continue}
    if ($cmd.Client) {$Cli = $Script:Clients.($cmd.client);$cli.Commands++}
    switch ($cmd.Action) {
        "Login" {if ($cmd.Client) {Write-AP "!Already Logged in [$($cmd.Client)]";$IPC.Write("600|Client Already Logged in!");break};if (!$cmd.Auth) {Write-AP "!Invalid ResourceKey Passed";$IPC.Write("403|Inv Resource Key");break};$Cli = New-Client;Write-AP "+Logged in [$cli]";$IPC.write("200|Logged In [$cli]|key=$cli");break}
        "Ping"  {Write-AP "+Accepted Ping from [$($cmd.client)]";$IPC.write("200|Alive");break}
        "Requests" {Write-AP "+$($cmd.client) made $($cli.Commands) requests";$IPC.write("200|You have made $($cli.Commands) requests|Requests=$($cli.Commands)");break}
        default {Write-AP "!Sorry Dude [IDK: $_]";$IPC.Write("404|Command not found");continue}
    }
}
