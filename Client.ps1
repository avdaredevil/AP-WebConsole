
# =======================================START=OF=COMPILER==========================================================|
#    The Following Code was added by AP-Compiler Version [1.2] To Make this program independent of AP-Core Engine
#    GitHub: https://github.com/avdaredevil/AP-Compiler
# ==================================================================================================================|
$Script:PSHell=$(if($PSHell){$PSHell}elseif($PSScriptRoot){$PSScriptRoot}else{"."});
iex ([System.Text.Encoding]::UTF8.GetString([System.Convert]::FromBase64String("ZnVuY3Rpb24gR2V0LVdoZXJlIHtwYXJhbShbUGFyYW1ldGVyKE1hbmRhdG9yeT0kdHJ1ZSldW3N0cmluZ10kRmlsZSwgW1N3aXRjaF0kQWxsKQ0KDQogICAgQVAtUmVxdWlyZSAiZGVwOndoZXJlIiB7dGhyb3cgIk5lZWQgU3lzMzJcd2hlcmUgdG8gd29yayEiO3JldHVybn0NCiAgICAkT3V0ID0gd2hlcmUuZXhlICRmaWxlIDI+JG51bGwNCiAgICBpZiAoISRPdXQpIHtyZXR1cm59DQogICAgaWYgKCRBbGwpIHtyZXR1cm4gJE91dH0NCiAgICByZXR1cm4gQCgkT3V0KVswXQ0KfQoKZnVuY3Rpb24gQ2xlYXItTGluZSB7DQogICAgJE5tID0gW0NvbnNvbGVdOjpXaW5kb3dXaWR0aA0KICAgICR0ID0gW0NvbnNvbGVdOjpDdXJzb3JUb3A7W0NvbnNvbGVdOjpDdXJzb3JMZWZ0PTANCiAgICBXcml0ZS1Ib3N0IC1Ob05ld0xpbmUgKCIgIiokTk0pDQogICAgW0NvbnNvbGVdOjpDdXJzb3JUb3A9JHQ7W0NvbnNvbGVdOjpDdXJzb3JMZWZ0PTANCn0KCmZ1bmN0aW9uIEFQLVJlcXVpcmUge3BhcmFtKFtQYXJhbWV0ZXIoTWFuZGF0b3J5PSRUcnVlKV1bQWxpYXMoIkZ1bmN0aW9uYWxpdHkiLCJMaWJyYXJ5IildW1N0cmluZ10kTGliLCBbU2NyaXB0QmxvY2tdJE9uRmFpbD17fSwgW1N3aXRjaF0kUGFzc1RocnUpDQoNCiAgICBbYm9vbF0kU3RhdCA9ICQoc3dpdGNoIC1yZWdleCAoJExpYi50cmltKCkpIHsNCiAgICAgICAgIl5JbnRlcm5ldCIgIHt0ZXN0LWNvbm5lY3Rpb24gZ29vZ2xlLmNvbSAtQ291bnQgMSAtUXVpZXR9DQogICAgICAgICJeZGVwOiguKikiICB7aWYgKCRNYXRjaGVzWzFdIC1uZSAid2hlcmUiKXtBUC1SZXF1aXJlICJkZXA6d2hlcmUiIHskTU9ERT0yfX1lbHNleyRNT0RFPTJ9O2lmICgkTU9ERS0yKXtHZXQtV2hlcmUgJE1hdGNoZXNbMV19ZWxzZXt0cnl7JiAkTWF0Y2hlc1sxXSAiL2ZqZmRqZmRzIC0tZHNqYWhkaHMgLWRzamFkaiIgMj4kbnVsbDsic3VjYyJ9Y2F0Y2h7fX19DQogICAgICAgICJebGliOiguKikiICB7JEZpbGU9JE1hdGNoZXNbMV07JExpYj1BUC1Db252ZXJ0UGF0aCAiPExJQj4iOyh0ZXN0LXBhdGggLXQgbGVhZiAiJExpYlwkRmlsZSIpIC1vciAodGVzdC1wYXRoIC10IGxlYWYgIiRMaWJcJEZpbGUuZGxsIil9DQogICAgICAgICJeZnVuY3Rpb246KC4qKSIgIHtnY20gJE1hdGNoZXNbMV0gLWVhIFNpbGVudGx5Q29udGludWV9DQogICAgICAgICJec3RyaWN0X2Z1bmN0aW9uOiguKikiICB7VGVzdC1QYXRoICJGdW5jdGlvbjpcJCgkTWF0Y2hlc1sxXSkifQ0KICAgIH0pDQogICAgaWYgKCEkU3RhdCkgeyRPbkZhaWwuSW52b2tlKCl9DQogICAgaWYgKCRQYXNzVGhydSkge3JldHVybiAkU3RhdH0NCn0KCmZ1bmN0aW9uIFdyaXRlLUFQIHtwYXJhbShbUGFyYW1ldGVyKE1hbmRhdG9yeT0kVHJ1ZSldJFRleHQsIFtTd2l0Y2hdJE5vU2lnbiwgW1N3aXRjaF0kUGxhaW5UZXh0LCBbVmFsaWRhdGVTZXQoIkNlbnRlciIsIlJpZ2h0IiwiTGVmdCIpXVtTdHJpbmddJEFsaWduPSdMZWZ0JywgW1N3aXRjaF0kUGFzc1RocnUpDQoNCiAgICBpZiAoJHRleHQuY291bnQgLWd0IDEgLW9yICR0ZXh0LkdldFR5cGUoKS5OYW1lIC1tYXRjaCAiXFtcXSQiKSB7cmV0dXJuICRUZXh0IHw/eyIkXyJ9fCAlIHtXcml0ZS1BUCAkXyAtTm9TaWduOiROb1NpZ24gLVBsYWluVGV4dDokUGxhaW5UZXh0IC1BbGlnbiAkQWxpZ259fQ0KICAgIGlmICghJHRleHQgLW9yICR0ZXh0IC1ub3RtYXRjaCAiXigoPzxOTkw+eCl8KD88TlM+bnM/KSl7MCwyfSg/PHQ+XD4qKSg/PHM+WytcLSFcKlwjXSkoPzx3Pi4qKSIpIHtXcml0ZS1BUCAkVGV4dDskVGV4dH0NCiAgICAkdGIgID0gIiAgICAiKiRNYXRjaGVzLnQubGVuZ3RoOw0KICAgICRDb2wgPSBAeycrJz0nMic7Jy0nPScxMic7JyEnPScxNCc7JyonPSczJzsnIyc9J0RhcmtHcmF5J31bKCRTaWduID0gJE1hdGNoZXMuUyldDQogICAgaWYgKCEkQ29sKSB7VGhyb3cgIkluY29ycmVjdCBTaWduIFskU2lnbl0gUGFzc2VkISJ9DQogICAgJFNpZ24gPSAkKGlmICgkTm9TaWduIC1vciAkTWF0Y2hlcy5OUykgeyIifSBlbHNlIHsiWyRTaWduXSAifSkNCiAgICBBUC1SZXF1aXJlICJmdW5jdGlvbjpBbGlnbi1UZXh0IiB7ZnVuY3Rpb24gR2xvYmFsOkFsaWduLVRleHQoJGFsaWduLCR0ZXh0KSB7JHRleHR9fQ0KICAgICREYXRhID0gIiR0YiRTaWduJCgkTWF0Y2hlcy5XKSI7aWYgKCEkRGF0YSkge3JldHVybn0NCiAgICAkRGF0YSA9IEFsaWduLVRleHQgLUFsaWduICRBbGlnbiAiJHRiJFNpZ24kKCRNYXRjaGVzLlcpIg0KICAgIGlmICgkUGxhaW5UZXh0KSB7cmV0dXJuICREYXRhfQ0KICAgIFdyaXRlLUhvc3QgLU5vTmV3TGluZTokKFtib29sXSRNYXRjaGVzLk5OTCkgLWYgJENvbCAkRGF0YQ0KICAgIGlmICgkUGFzc1RocnUpIHskRGF0YX0NCn0KCmZ1bmN0aW9uIENvbnZlcnQtRnJvbUJhc2U2NCB7cGFyYW0oW1N0cmluZ10kVGV4dCwgW1ZhbGlkYXRlU2V0KCJVVEY4IiwiVW5pY29kZSIpXVtTdHJpbmddJEVuY29kaW5nID0gIlVURjgiKQ0KDQogICAgW1N5c3RlbS5UZXh0LkVuY29kaW5nXTo6JEVuY29kaW5nLkdldFN0cmluZyhbU3lzdGVtLkNvbnZlcnRdOjpGcm9tQmFzZTY0U3RyaW5nKCRUZXh0KSkNCn0KCmZ1bmN0aW9uIEdldC1GaWxlSGFzaCB7cGFyYW0oW1BhcmFtZXRlcihNYW5kYXRvcnk9JFRydWUpXVtTdHJpbmddJEZpbGUpDQoNCiAgICBpZiAoIShUZXN0LVBhdGggLXR5cGUgbGVhZiAkRmlsZSkpIHtUaHJvdyAiW0dldC1GaWxlSGFzaF0gRmlsZSBbJEZpbGVdIE5vdCBmb3VuZCJ9DQogICAgJEZpbGUgPSAiezB9IiAtZiAoUmVzb2x2ZS1QYXRoICRGaWxlKQ0KICAgICRhID0gW1N5c3RlbS5TZWN1cml0eS5DcnlwdG9ncmFwaHkuTUQ1XTo6Q3JlYXRlKCkNCiAgICAkSGFzaCA9ICRhLkNvbXB1dGVIYXNoKFtJTy5GaWxlXTo6UmVhZEFsbEJ5dGVzKCRGaWxlKSkgLWpvaW4gIjoiDQogICAgJGEuRGlzcG9zZSgpDQogICAgUmV0dXJuICRIYXNoDQp9CgpmdW5jdGlvbiBQcm9jZXNzLVRyYW5zcGFyZW5jeSB7cGFyYW0oW0FsaWFzKCJUcmFuc3BhcmVuY3kiLCJJbnZpc2liaWxpdHkiLCJpIiwidCIpXVtWYWxpZGF0ZVJhbmdlKDAsMTAwKV1baW50XSRUcmFucz0wLCBbUGFyYW1ldGVyKE1hbmRhdG9yeT0kVHJ1ZSldJFByb2Nlc3MpDQoNCiAgICBpZiAoJFByb2Nlc3MgLW1hdGNoICJcLmV4ZSQiKSB7JFByb2Nlc3MgPSAkUHJvY2Vzcy5yZXBsYWNlKCIuZXhlIiwiIil9DQogICAgVHJ5IHsNCiAgICAgICAgaWYgKCRQcm9jZXNzLm5hbWUpIHskUHJvYyA9ICRQcm9jZXNzLm5hbWV9IGVsc2UgeyRQcm9jID0gKEdldC1Qcm9jZXNzICRQcm9jZXNzIC1FcnJvckFjdGlvbiBTdG9wKVswXS5uYW1lfQ0KICAgIH0gY2F0Y2ggew0KICAgICAgICBpZiAoW0ludF06OlRyeVBhcnNlKCRQcm9jZXNzLCBbcmVmXTMpKSB7JFByb2MgPSAoKEdldC1Qcm9jZXNzIHwgPyB7JF8uSUQgLWVxICRQcm9jZXNzfSlbMF0pLm5hbWV9DQogICAgfQ0KICAgIGlmICgkUHJvYyAtbm90TWF0Y2ggIlwuZXhlJCIpIHskUHJvYyA9ICIkUHJvYy5leGUifQ0KICAgIG5pcmNtZCB3aW4gdHJhbnMgcHJvY2VzcyAiJFByb2MiICgoMTAwLSRUcmFucykqMjU1LzEwMCkgfCBPdXQtTnVsbA0KfQoKU2V0LUFsaWFzIGludiBQcm9jZXNzLVRyYW5zcGFyZW5jeQ==")))
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
