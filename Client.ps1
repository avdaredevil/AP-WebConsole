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
if (!(Test-Path $CacheLoc)) {md $CacheLocation >$null}
#==========================================|
function Get-IPCClient($Key) {
    $ClientHash = @{'Client' = new-object System.IO.Pipes.NamedPipeClientStream('.', $Key, [System.IO.Pipes.PipeDirection]::InOut,[System.IO.Pipes.PipeOptions]::None,[System.Security.Principal.TokenImpersonationLevel]::Impersonation)}
    $ClientHash.Reader = new-object System.IO.StreamReader($ClientHash.Client)
    $ClientHash.Writer = new-object System.IO.StreamWriter($ClientHash.Client)
    $IPC = [PSCustomObject]@{
        'IPC' = $ClientHash
    } | Add-Member -MemberType ScriptMethod -PassThru -Name Write -Value {
        param([Parameter(Mandatory=1)]$String)
# =======================================START=OF=COMPILER==========================================================|
#    The Following Code was added by AP-Compiler Version [1.0] To Make this program independent of AP-Core Engine
# ==================================================================================================================|
iex ([System.Text.Encoding]::UTF8.GetString([System.Convert]::FromBase64String("ZnVuY3Rpb24gSU4tQ29kZS1EZWJ1Zy1Db25zb2xlIHtXcml0ZS1Ib3N0IC1mIHllbGxvdyAnW0FQLUNPTVBJTEVSXSBNb2R1bGUgW0lOLUNvZGUtRGVidWctQ29uc29sZV0gZGlzYWJsZWQgZm9yIHRoaXMgcHJvZ3JhbSd9CgpmdW5jdGlvbiBBUC1SZXF1aXJlIHtwYXJhbShbUGFyYW1ldGVyKE1hbmRhdG9yeT0kVHJ1ZSldW0FsaWFzKCJGdW5jdGlvbmFsaXR5IiwiTGlicmFyeSIpXVtTdHJpbmddJExpYiwgW1NjcmlwdEJsb2NrXSRPbkZhaWw9e30sIFtTd2l0Y2hdJFBhc3N0aHJ1KQ0KDQogICAgW2Jvb2xdJFN0YXQgPSAkKHN3aXRjaCAtcmVnZXggKCRMaWIudHJpbSgpKSB7DQogICAgICAgICJeSW50ZXJuZXQiICB7dGVzdC1jb25uZWN0aW9uIGdvb2dsZS5jb20gLUNvdW50IDEgLVF1aWV0fQ0KICAgICAgICAiXmRlcDooLiopIiAge2lmICgkTWF0Y2hlc1sxXSAtbmUgIndoZXJlIil7QVAtUmVxdWlyZSAiZGVwOndoZXJlIiB7JE1PREU9Mn19ZWxzZXskTU9ERT0yfTtpZiAoJE1PREUtMil7R2V0LVdoZXJlICRNYXRjaGVzWzFdfWVsc2V7dHJ5eyYgJE1hdGNoZXNbMV0gIi9mamZkamZkcyAtLWRzamFoZGhzIC1kc2phZGoiIDI+JG51bGw7InN1Y2MifWNhdGNoe319fQ0KICAgICAgICAiXmZ1bmN0aW9uOiguKikiICB7Z2NtICRNYXRjaGVzWzFdIC1lYSBTaWxlbnRseUNvbnRpbnVlfQ0KICAgICAgICAiXnN0cmljdF9mdW5jdGlvbjooLiopIiAge1Rlc3QtUGF0aCAiRnVuY3Rpb246XCQoJE1hdGNoZXNbMV0pIn0NCiAgICB9KQ0KICAgIGlmICghJFN0YXQpIHskT25GYWlsLkludm9rZSgpfQ0KICAgIGlmICgkUGFzc3RocnUpIHtyZXR1cm4gJFN0YXR9DQp9CgpmdW5jdGlvbiBXcml0ZS1BUCB7cGFyYW0oW1BhcmFtZXRlcihNYW5kYXRvcnk9JFRydWUpXVtTdHJpbmddJFRleHQsIFtTd2l0Y2hdJE5vU2lnbiwgW1N3aXRjaF0kUGxhaW5UZXh0LCBbVmFsaWRhdGVTZXQoIkNlbnRlciIsIlJpZ2h0IiwiTGVmdCIpXVtTdHJpbmddJEFsaWduPSdMZWZ0JykNCg0KICAgIGlmICghJHRleHQgLW9yICR0ZXh0IC1tYXRjaCAiXltcK1wtXCFcKnhcPiBdKyQiKSB7cmV0dXJufQ0KICAgICRhY2MgID0gQCgoJysnLCcyJyksKCctJywnMTInKSwoJyEnLCcxNCcpLCgnKicsJzMnKSkNCiAgICAkdGIgICA9ICcnOyRmdW5jICAgPSAkZmFsc2UNCiAgICB3aGlsZSAoJFRleHQuY2hhcnMoMCkgLWVxICd4JykgeyRmdW5jID0gJHRydWU7ICRUZXh0ID0gJFRleHQuc3Vic3RyaW5nKDEpLnRyaW0oKX0NCiAgICB3aGlsZSAoJFRleHQuY2hhcnMoMCkgLWVxICc+JykgeyR0YiArPSAiICAgICI7ICRUZXh0ID0gJFRleHQuc3Vic3RyaW5nKDEpLnRyaW0oKX0NCiAgICAkU2lnbiA9ICRUZXh0LmNoYXJzKDApDQogICAgJFRleHQgPSAkVGV4dC5zdWJzdHJpbmcoMSkudHJpbSgpLnJlcGxhY2UoJy94XCcsJycpLnJlcGxhY2UoJ1suXScsJ1tDdXJyZW50IERpcmVjdG9yeV0nKQ0KICAgICR2ZXJzID0gJGZhbHNlDQogICAgZm9yZWFjaCAoJGFyIGluICRhY2MpIHtpZiAoJGFyWzBdIC1lcSAkc2lnbikgeyR2ZXJzID0gJHRydWU7ICRjbHIgPSAkYXJbMV07ICRTaWduID0gIlske1NpZ259XSAifX0NCiAgICBpZiAoISR2ZXJzKSB7VGhyb3cgIkluY29ycmVjdCBTaWduIFskU2lnbl0gUGFzc2VkISJ9DQogICAgQVAtUmVxdWlyZSAiZnVuY3Rpb246QWxpZ24tVGV4dCIge2Z1bmN0aW9uIEFsaWduLVRleHQoJGFsaWduLCR0ZXh0KSB7JHRleHR9fQ0KICAgICREYXRhID0gQWxpZ24tVGV4dCAtQWxpZ24gJEFsaWduICR0YiQoaWYgKCEkTm9TaWduKSB7JFNpZ259KSRUZXh0DQogICAgaWYgKCRQbGFpblRleHQpIHtyZXR1cm4gJERhdGF9DQogICAgV3JpdGUtSG9zdCAtTm9OZXdMaW5lOiRmdW5jIC1mICRjbHIgJERhdGENCn0KCmZ1bmN0aW9uIENvbnZlcnQtRnJvbUJhc2U2NCB7cGFyYW0oW1N0cmluZ10kVGV4dCwgW1ZhbGlkYXRlU2V0KCJVVEY4IiwiVW5pY29kZSIpXVtTdHJpbmddJEVuY29kaW5nID0gIlVURjgiKQ0KDQogICAgW1N5c3RlbS5UZXh0LkVuY29kaW5nXTo6JEVuY29kaW5nLkdldFN0cmluZyhbU3lzdGVtLkNvbnZlcnRdOjpGcm9tQmFzZTY0U3RyaW5nKCRUZXh0KSkNCn0KCmZ1bmN0aW9uIEdldC1GaWxlSGFzaCB7cGFyYW0oW1N0cmluZ10kRmlsZSkNCg0KICAgIGlmICghKFRlc3QtUGF0aCAtdHlwZSBsZWFmICRGaWxlKSkge1Rocm93ICJbR2V0LUZpbGVIYXNoXSBGaWxlIE5vdCBmb3VuZCJ9DQogICAgJEZpbGUgPSAiezB9IiAtZiAoUmVzb2x2ZS1QYXRoICRGaWxlKQ0KICAgICRhID0gW1N5c3RlbS5TZWN1cml0eS5DcnlwdG9ncmFwaHkuTUQ1XTo6Q3JlYXRlKCkNCiAgICAkSGFzaCA9ICRhLkNvbXB1dGVIYXNoKFtJTy5GaWxlXTo6UmVhZEFsbEJ5dGVzKCRGaWxlKSkgLWpvaW4gIjoiDQogICAgJGEuRGlzcG9zZSgpDQogICAgUmV0dXJuICRIYXNoDQp9CgpmdW5jdGlvbiBBUC1SZXF1aXJlIHtwYXJhbShbUGFyYW1ldGVyKE1hbmRhdG9yeT0kVHJ1ZSldW0FsaWFzKCJGdW5jdGlvbmFsaXR5IiwiTGlicmFyeSIpXVtTdHJpbmddJExpYiwgW1NjcmlwdEJsb2NrXSRPbkZhaWw9e30sIFtTd2l0Y2hdJFBhc3N0aHJ1KQ0KDQogICAgW2Jvb2xdJFN0YXQgPSAkKHN3aXRjaCAtcmVnZXggKCRMaWIudHJpbSgpKSB7DQogICAgICAgICJeSW50ZXJuZXQiICB7dGVzdC1jb25uZWN0aW9uIGdvb2dsZS5jb20gLUNvdW50IDEgLVF1aWV0fQ0KICAgICAgICAiXmRlcDooLiopIiAge2lmICgkTWF0Y2hlc1sxXSAtbmUgIndoZXJlIil7QVAtUmVxdWlyZSAiZGVwOndoZXJlIiB7JE1PREU9Mn19ZWxzZXskTU9ERT0yfTtpZiAoJE1PREUtMil7R2V0LVdoZXJlICRNYXRjaGVzWzFdfWVsc2V7dHJ5eyYgJE1hdGNoZXNbMV0gIi9mamZkamZkcyAtLWRzamFoZGhzIC1kc2phZGoiIDI+JG51bGw7InN1Y2MifWNhdGNoe319fQ0KICAgICAgICAiXmZ1bmN0aW9uOiguKikiICB7Z2NtICRNYXRjaGVzWzFdIC1lYSBTaWxlbnRseUNvbnRpbnVlfQ0KICAgICAgICAiXnN0cmljdF9mdW5jdGlvbjooLiopIiAge1Rlc3QtUGF0aCAiRnVuY3Rpb246XCQoJE1hdGNoZXNbMV0pIn0NCiAgICB9KQ0KICAgIGlmICghJFN0YXQpIHskT25GYWlsLkludm9rZSgpfQ0KICAgIGlmICgkUGFzc3RocnUpIHtyZXR1cm4gJFN0YXR9DQp9Cg==")))
# ========================================END=OF=COMPILER===========================================================|
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
function AP-FetchAsset([ValidateSet("Script")]$Type,$Source,[Switch]$Import,[Switch]$Quit_OnFail) {
    $Code = $(if ($Import) {{param($Path);. $Path;return}} else {{return $Path}})
    if (AP-WebCache $Type $Source -Check) {$Code.Invoke((AP-WebCache $Type $Source -Src))}
    AP-Require "Internet" {Write-Host -f yellow "[!] Need a Internet connection to fetch asset";if ($Quit_OnFail) {exit};return}
    AP-GetGithubAgent
}
function Get-FileHash ([Parameter(Mandatory=$True)][String]$File) {
    if (!(Test-Path -type leaf $File)) {Throw "[Get-FileHash] File Not found"}
    $File = "{0}" -f (Resolve-Path $File)
    $a = [System.Security.Cryptography.MD5]::Create()
    $Hash = $a.ComputeHash([IO.File]::ReadAllBytes($File)) -join ":";$a.Dispose()
    Return $Hash
}
function Load-WebBackbone {
    $BkBn="$CacheLoc\AP-BackBone.ps1";$IsBk=Test-Path $BkBn;if (!$IsBk -or (New-TimeSpan (ls $BkBn).CreationTime (Get-Date)).TotalDays -gt $Expiry.BackBone) {
        Write-AP ">*Fetching $(if($IsBk){'new '})backbone [$(if($IsBk){'Expired'}else{'Doesn''t-Exist'})]!"
        $API = $(try{irm "https://$repo/contents/AP-BackBone.ps1"}catch{})
        if (!$API.Content) {Write-AP ">!Cannot Access AP-BackBone on GitHub!";exit}
        [void]$ResourceLock.WaitOne()
        In-Code-Debug-Console
        (Convert-FromBase64 $API.Content).Substring(1) | Out-File -en default $BkBn
        $ResourceLock.ReleaseMutex()
    }
    try{& $BkBn}catch{Write-AP ">!BackBone Failed to Launch [$_]";exit}
}
$IPC = Get-IPCClient $ResourceKey
#=================BACKBONE======================|
Write-AP "*Establishing connection with BackBone Process."
$ConnectFail=0
while (1) {
    if ($i++ -gt 3) {Write-AP ">!Could not establish a connection, sorry.";exit}
    try {Write-AP "x>*Attempt: $i/4";[Console]::CursorLeft=0;$IPC.Connect();break} catch {Load-WebBackbone;continue}
}
$Script:ClientKey = $IPC.SendCommand("$ResourceKey|Login")
#=================MODULES=ENV===================|
#AP-FetchAsset "Script" "Modules-Common" -Q -Import
#switch ((Get-Host).Version.Major) {
#    3 {AP-FetchAsset "Script" "Modules-Common-v3" -Import;break}
#}
