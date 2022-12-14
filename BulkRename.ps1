# Bulk rename files in a directory with file extension .txt to .ps1

$targetDir = Get-Location
$oldExt = Read-Host "Enter the extension to be replaced"
$newExt = Read-Host "Enter the new extension you wish to replace $oldExt with"




ForEach {Rename-Item $targetDir.FullName -NewName ($targetDir.name).Replace(".txt",".csv")}

Get-ChildItem -File | ForEach {Rename-Item $_.FullName -NewName ($_.name).Replace(".txt",".csv")}

$i = 0
foreach ($file in Get-ChildItem) {
  if ($file.length -lt 100KB) {
    Write-Host $file "file size:" ($file.length / 1024).ToString("F0") KB
    $i = $i + 1
  }
}