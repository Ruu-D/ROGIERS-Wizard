

Add-Type -AssemblyName System.Windows.Forms

Function Get-Folder($initialDirectory = "")
{
    [System.Reflection.Assembly]::LoadWithPartialName("System.windows.forms") | Out-Null

    $foldername = New-Object System.Windows.Forms.FolderBrowserDialog
    $foldername.Description = "Select a folder"
    $foldername.rootfolder = "MyComputer"
    $foldername.SelectedPath = $initialDirectory

    if ($foldername.ShowDialog() -eq "OK") {
        $folder += $foldername.SelectedPath
    }
    return $folder
}

$targetfolder = Get-Folder

#$targetfolder = 'C:\temp'
#Load xml
$xml = New-Object -TypeName xml
$xml.load('C:\Users\Public\Documents\SCM Group\Maestro\ui00.exe.config')
#Find node by using xpath and store path
$node1 = $xml.SelectSingleNode("//add[@key='AtrxDir']").Value
$node2 = $xml.SelectSingleNode("//add[@key='CfgxDir']").Value
$node3 = $xml.SelectSingleNode("//add[@key='EdgxDir']").Value
$node4 = $xml.SelectSingleNode("//add[@key='MacroPath']").Value
$node5 = $xml.SelectSingleNode("//add[@key='TechnologiesDir']").Value
$node6 = $xml.SelectSingleNode("//add[@key='TlgxDir']").Value
$node7 = $xml.SelectSingleNode("//add[@key='DirToolsWear']").Value
$node8 = $xml.SelectSingleNode("//add[@key='CurrentConfigurationFileName']").Value


Write-Host ""
Write-Host ""
Write-Host ""
Write-Host ""
Write-Host ""
Write-Host ""
Write-Host ""


# indien pad niet beschikbaar, neem data uit public documents als backup

if (Test-Path -Path $node1) {
    $node1 = $node1
    Write-Host "Backup made from: " $node1 -ForegroundColor black -BackgroundColor White
}
else {
    Write-Host "ATRX Path not found. Check network or confirm settings in maestro options dialog by pressing 'apply' Proceed (y) = Creating settings from public documents folder. Else press (n)" -ForegroundColor black -BackgroundColor Red
    $confirmation = Read-Host "(y) or (n)?"
    if ($confirmation -eq 'y') {
        $node1 = 'C:\Users\Public\Documents\SCM Group\Maestro\Atrx'
    }
    else {
        Exit
    }
}

if (Test-Path -Path $node2) {
    $node2 = $node2
    Write-Host "Backup made from: " $node2 -ForegroundColor black -BackgroundColor White
}
else {
    Write-Host "CFGX Path not found. Check network or confirm settings in maestro options dialog by pressing 'apply' Proceed (y) = Creating settings from public documents folder. Else press (n)" -ForegroundColor black -BackgroundColor Red
    $confirmation = Read-Host "(y) or (n)?"
    if ($confirmation -eq 'y') {
        $node2 = 'C:\Users\Public\Documents\SCM Group\Maestro\Cfgx'
    }
    else {
        Exit
    }
}

if (Test-Path -Path $node3) {
    $node3 = $node3
    Write-Host "Backup made from: " $node3 -ForegroundColor black -BackgroundColor White
}
else {
    Write-Host "EDGX Path not found. Check network or confirm settings in maestro options dialog by pressing 'apply' Proceed (y) = Creating settings from public documents folder. Else press (n)" -ForegroundColor black -BackgroundColor Red
    $confirmation = Read-Host "(y) or (n)?"
    if ($confirmation -eq 'y') {
        $node3 = 'C:\Users\Public\Documents\SCM Group\Maestro\Edgx'
    }
    else {
        Exit
    }
}

if (Test-Path -Path $node4) {
    $node4 = $node4
    Write-Host "Backup made from: " $node4 -ForegroundColor black -BackgroundColor White
}
else {
    Write-Host "MACROS Path not found. Check network or confirm settings in maestro options dialog by pressing 'apply' Proceed (y) = Creating settings from public documents folder. Else press (n)" -ForegroundColor black -BackgroundColor Red
    $confirmation = Read-Host "(y) or (n)?"
    if ($confirmation -eq 'y') {
        $node4 = 'C:\Users\Public\Documents\SCM Group\Maestro\Macros'
    }
    else {
        Exit
    }
}

if (Test-Path -Path $node5) {
    $node5 = $node5
    Write-Host "Backup made from: " $node5 -ForegroundColor black -BackgroundColor White
}
else {
    Write-Host "TECHNOLOGIES Path not found. Check network or confirm settings in maestro options dialog by pressing 'apply' Proceed (y) = Creating settings from public documents folder. Else press (n)" -ForegroundColor black -BackgroundColor Red
    $confirmation = Read-Host "(y) or (n)?"
    if ($confirmation -eq 'y') {
        $node5 = 'C:\Users\Public\Documents\SCM Group\Maestro\Technologies'
    }
    else {
        Exit
    }
}

if (Test-Path -Path $node6) {
    $node6 = $node6
    Write-Host "Backup made from: " $node6 -ForegroundColor black -BackgroundColor White
}
else {
    Write-Host "TLGX Path not found. Check network or confirm settings in maestro options dialog by pressing 'apply' Proceed (y) = Creating settings from public documents folder. Else press (n)" -ForegroundColor black -BackgroundColor Red
    $confirmation = Read-Host "(y) or (n)?"
    if ($confirmation -eq 'y') {
        $node6 = 'C:\Users\Public\Documents\SCM Group\Maestro\Tlgx'
    }
    else {
        Exit
    }
}

if (Test-Path -Path $node7) {
    $node7 = $node7
    Write-Host "Backup made from: " $node7 -ForegroundColor black -BackgroundColor White
}
else {
    Write-Host "TOOLSWEAR Path not found. Check network or confirm settings in maestro options dialog by pressing 'apply' Proceed (y) = Creating settings from public documents folder. Else press (n)" -ForegroundColor black -BackgroundColor Red
    $confirmation = Read-Host "(y) or (n)?"
    if ($confirmation -eq 'y') {
        $node7 = 'C:\Users\Public\Documents\SCM Group\Maestro\Wear'
    }
    else {
        Exit
    }
}


#Creating maestro.arch file

$Folder = 'C:\Program Files (x86)\Scm Group\Maestro'
if (Test-Path -Path $Folder) {
    $maestrodir = 'C:\Program Files (x86)\Scm Group\Maestro'
    $architecture = '32'
}
else {
    $maestrodir = 'C:\Program Files\Scm Group\Maestro'
    $architecture = '64'
}

$architecturefilepath = $targetfolder + '\maestro.arch'
New-Item -Path $targetfolder -Name 'maestro.arch' -ItemType File
Add-Content $architecturefilepath $architecture



$node10 = 'C:\Users\Public\Documents\SCM Group\Maestro\Eplx'
$node11 = 'C:\Users\Public\Documents\SCM Group\Maestro\Labels'
$node12 = 'C:\Users\Public\Documents\SCM Group\Maestro\Log'
$node13 = 'C:\Users\Public\Documents\SCM Group\Maestro\Settings'
$node14 = 'C:\Users\Public\Documents\SCM Group\Maestro\configurationmanager.exe.config'
$node15 = 'C:\Users\Public\Documents\SCM Group\Maestro\Control.exe.config'
$node16 = 'C:\Users\Public\Documents\SCM Group\Maestro\EdgeManager.exe.config'
$node17 = 'C:\Users\Public\Documents\SCM Group\Maestro\LabelEditor.exe.config'
$node18 = 'C:\Users\Public\Documents\SCM Group\Maestro\LabelPrinterManager.exe.config'
$node19 = 'C:\Users\Public\Documents\SCM Group\Maestro\toolequipmentmanager.exe.config'
$node20 = 'C:\Users\Public\Documents\SCM Group\Maestro\toolmanager.exe.config'
$node21 = 'C:\Users\Public\Documents\SCM Group\Maestro\ui00.exe.config'
$node22 = 'C:\Users\Public\Documents\SCM Group\Maestro\virtualtoolsmanager.exe.config'
$node23 = 'C:\Users\Public\Documents\SCM Group\Maestro\XConverter.exe.config'
$node24 =  $maestrodir + '\Maestro.rel'



Copy-Item -Path $node12 -Destination $targetfolder -Recurse -Force -Confirm:$false
$node25 = $targetfolder + '\Log'
$node26 = $targetfolder + '\maestro.arch'

$datum = Get-Date -UFormat "%Y.%m.%d_%Hh%M"


$ziptarget = $targetfolder +'\' + $datum + '_' + $node8 +'.zip'
$compress = @{
    Path             = $node1, $node2, $node3, $node4, $node5, $node6, $node7, $node10, $node11, $node25, $node13, $node14, $node15, $node16,$node17,$node18,$node19,$node20,$node21,$node22,$node23,$node24,$node26
    CompressionLevel = "Fastest"
    DestinationPath  = $ziptarget
}
Compress-Archive @compress -Force

$finalsettingsname = $targetfolder + '\' + $datum + '_' + $node8 + '.settingsx'
Rename-Item -Path $ziptarget -NewName $finalsettingsname -Force

Remove-Item $node25 -Recurse -Force
Remove-Item $node26 -Recurse -Force

Timeout /T 5