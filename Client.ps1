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
iex ([System.Text.Encoding]::UTF8.GetString([System.Convert]::FromBase64String("ZnVuY3Rpb24gQ29udmVydC1Gcm9tQmFzZTY0IHtwYXJhbShbU3RyaW5nXSRUZXh0LCBbVmFsaWRhdGVTZXQoIlVURjgiLCJVbmljb2RlIildW1N0cmluZ10kRW5jb2RpbmcgPSAiVVRGOCIpDQoNCiAgICBbU3lzdGVtLlRleHQuRW5jb2RpbmddOjokRW5jb2RpbmcuR2V0U3RyaW5nKFtTeXN0ZW0uQ29udmVydF06OkZyb21CYXNlNjRTdHJpbmcoJFRleHQpKQ0KfQoKZnVuY3Rpb24gQVAtUmVxdWlyZSB7cGFyYW0oW1BhcmFtZXRlcihNYW5kYXRvcnk9JFRydWUpXVtBbGlhcygiRnVuY3Rpb25hbGl0eSIsIkxpYnJhcnkiKV1bU3RyaW5nXSRMaWIsIFtTY3JpcHRCbG9ja10kT25GYWlsPXt9LCBbU3dpdGNoXSRQYXNzdGhydSkNCg0KICAgIFtib29sXSRTdGF0ID0gJChzd2l0Y2ggLXJlZ2V4ICgkTGliLnRyaW0oKSkgew0KICAgICAgICAiXkludGVybmV0IiAge3Rlc3QtY29ubmVjdGlvbiBnb29nbGUuY29tIC1Db3VudCAxIC1RdWlldH0NCiAgICAgICAgIl5kZXA6KC4qKSIgIHtpZiAoJE1hdGNoZXNbMV0gLW5lICJ3aGVyZSIpe0FQLVJlcXVpcmUgImRlcDp3aGVyZSIgeyRNT0RFPTJ9fWVsc2V7JE1PREU9Mn07aWYgKCRNT0RFLTIpe0dldC1XaGVyZSAkTWF0Y2hlc1sxXX1lbHNle3RyeXsmICRNYXRjaGVzWzFdICIvZmpmZGpmZHMgLS1kc2phaGRocyAtZHNqYWRqIiAyPiRudWxsOyJzdWNjIn1jYXRjaHt9fX0NCiAgICAgICAgIl5mdW5jdGlvbjooLiopIiAge2djbSAkTWF0Y2hlc1sxXSAtZWEgU2lsZW50bHlDb250aW51ZX0NCiAgICAgICAgIl5zdHJpY3RfZnVuY3Rpb246KC4qKSIgIHtUZXN0LVBhdGggIkZ1bmN0aW9uOlwkKCRNYXRjaGVzWzFdKSJ9DQogICAgfSkNCiAgICBpZiAoISRTdGF0KSB7JE9uRmFpbC5JbnZva2UoKX0NCiAgICBpZiAoJFBhc3N0aHJ1KSB7cmV0dXJuICRTdGF0fQ0KfQoKZnVuY3Rpb24gV3JpdGUtQVAge3BhcmFtKFtQYXJhbWV0ZXIoTWFuZGF0b3J5PSRUcnVlKV1bU3RyaW5nXSRUZXh0LCBbU3dpdGNoXSROb1NpZ24sIFtTd2l0Y2hdJFBsYWluVGV4dCwgW1ZhbGlkYXRlU2V0KCJDZW50ZXIiLCJSaWdodCIsIkxlZnQiKV1bU3RyaW5nXSRBbGlnbj0nTGVmdCcpDQoNCiAgICBpZiAoISR0ZXh0IC1vciAkdGV4dCAtbWF0Y2ggIl5bXCtcLVwhXCp4XD4gXSskIikge3JldHVybn0NCiAgICAkYWNjICA9IEAoKCcrJywnMicpLCgnLScsJzEyJyksKCchJywnMTQnKSwoJyonLCczJykpDQogICAgJHRiICAgPSAnJzskZnVuYyAgID0gJGZhbHNlDQogICAgd2hpbGUgKCRUZXh0LmNoYXJzKDApIC1lcSAneCcpIHskZnVuYyA9ICR0cnVlOyAkVGV4dCA9ICRUZXh0LnN1YnN0cmluZygxKS50cmltKCl9DQogICAgd2hpbGUgKCRUZXh0LmNoYXJzKDApIC1lcSAnPicpIHskdGIgKz0gIiAgICAiOyAkVGV4dCA9ICRUZXh0LnN1YnN0cmluZygxKS50cmltKCl9DQogICAgJFNpZ24gPSAkVGV4dC5jaGFycygwKQ0KICAgICRUZXh0ID0gJFRleHQuc3Vic3RyaW5nKDEpLnRyaW0oKS5yZXBsYWNlKCcveFwnLCcnKS5yZXBsYWNlKCdbLl0nLCdbQ3VycmVudCBEaXJlY3RvcnldJykNCiAgICAkdmVycyA9ICRmYWxzZQ0KICAgIGZvcmVhY2ggKCRhciBpbiAkYWNjKSB7aWYgKCRhclswXSAtZXEgJHNpZ24pIHskdmVycyA9ICR0cnVlOyAkY2xyID0gJGFyWzFdOyAkU2lnbiA9ICJbJHtTaWdufV0gIn19DQogICAgaWYgKCEkdmVycykge1Rocm93ICJJbmNvcnJlY3QgU2lnbiBbJFNpZ25dIFBhc3NlZCEifQ0KICAgIEFQLVJlcXVpcmUgImZ1bmN0aW9uOkFsaWduLVRleHQiIHtmdW5jdGlvbiBBbGlnbi1UZXh0KCRhbGlnbiwkdGV4dCkgeyR0ZXh0fX0NCiAgICAkRGF0YSA9IEFsaWduLVRleHQgLUFsaWduICRBbGlnbiAkdGIkKGlmICghJE5vU2lnbikgeyRTaWdufSkkVGV4dA0KICAgIGlmICgkUGxhaW5UZXh0KSB7cmV0dXJuICREYXRhfQ0KICAgIFdyaXRlLUhvc3QgLU5vTmV3TGluZTokZnVuYyAtZiAkY2xyICREYXRhDQp9CgpmdW5jdGlvbiBHZXQtRmlsZUhhc2gge3BhcmFtKFtTdHJpbmddJEZpbGUpDQoNCiAgICBpZiAoIShUZXN0LVBhdGggLXR5cGUgbGVhZiAkRmlsZSkpIHtUaHJvdyAiW0dldC1GaWxlSGFzaF0gRmlsZSBOb3QgZm91bmQifQ0KICAgICRGaWxlID0gInswfSIgLWYgKFJlc29sdmUtUGF0aCAkRmlsZSkNCiAgICAkYSA9IFtTeXN0ZW0uU2VjdXJpdHkuQ3J5cHRvZ3JhcGh5Lk1ENV06OkNyZWF0ZSgpDQogICAgJEhhc2ggPSAkYS5Db21wdXRlSGFzaChbSU8uRmlsZV06OlJlYWRBbGxCeXRlcygkRmlsZSkpIC1qb2luICI6Ig0KICAgICRhLkRpc3Bvc2UoKQ0KICAgIFJldHVybiAkSGFzaA0KfQoKZnVuY3Rpb24gQVAtUmVxdWlyZSB7cGFyYW0oW1BhcmFtZXRlcihNYW5kYXRvcnk9JFRydWUpXVtBbGlhcygiRnVuY3Rpb25hbGl0eSIsIkxpYnJhcnkiKV1bU3RyaW5nXSRMaWIsIFtTY3JpcHRCbG9ja10kT25GYWlsPXt9LCBbU3dpdGNoXSRQYXNzdGhydSkNCg0KICAgIFtib29sXSRTdGF0ID0gJChzd2l0Y2ggLXJlZ2V4ICgkTGliLnRyaW0oKSkgew0KICAgICAgICAiXkludGVybmV0IiAge3Rlc3QtY29ubmVjdGlvbiBnb29nbGUuY29tIC1Db3VudCAxIC1RdWlldH0NCiAgICAgICAgIl5kZXA6KC4qKSIgIHtpZiAoJE1hdGNoZXNbMV0gLW5lICJ3aGVyZSIpe0FQLVJlcXVpcmUgImRlcDp3aGVyZSIgeyRNT0RFPTJ9fWVsc2V7JE1PREU9Mn07aWYgKCRNT0RFLTIpe0dldC1XaGVyZSAkTWF0Y2hlc1sxXX1lbHNle3RyeXsmICRNYXRjaGVzWzFdICIvZmpmZGpmZHMgLS1kc2phaGRocyAtZHNqYWRqIiAyPiRudWxsOyJzdWNjIn1jYXRjaHt9fX0NCiAgICAgICAgIl5mdW5jdGlvbjooLiopIiAge2djbSAkTWF0Y2hlc1sxXSAtZWEgU2lsZW50bHlDb250aW51ZX0NCiAgICAgICAgIl5zdHJpY3RfZnVuY3Rpb246KC4qKSIgIHtUZXN0LVBhdGggIkZ1bmN0aW9uOlwkKCRNYXRjaGVzWzFdKSJ9DQogICAgfSkNCiAgICBpZiAoISRTdGF0KSB7JE9uRmFpbC5JbnZva2UoKX0NCiAgICBpZiAoJFBhc3N0aHJ1KSB7cmV0dXJuICRTdGF0fQ0KfQo=")))
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
Write-AP "*Logging In           "
$Script:ClientKey = $IPC.SendCommand("$ResourceKey|Login")
#=================MODULES=ENV===================|
#AP-FetchAsset "Script" "Modules-Common" -Q -Import
#switch ((Get-Host).Version.Major) {
#    3 {AP-FetchAsset "Script" "Modules-Common-v3" -Import;break}
#}
