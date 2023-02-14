$ErrorActionPreference = 'Stop';

$unzipLocation = "$env:PROGRAMFILES\$packagename"

$packageArgs = @{
  packageName   = 'babysouris'
  unzipLocation = $unzipLocation
  Url           = "https://github.com/awatchanaman/Babysouris/raw/main/tools/Babysouris.zip"
  checksum      = 'CB3AA1CE2C24BD03AF588DC09B34DF69F9103E67DC575F739C1BAC0AE18F7068'
  checksumType  = 'sha256'
}
Install-ChocolateyZipPackage @packageArgs


# Mise en place du Raccourci dans Menu Demarrer
#$filepath = Join-Path "$env:ProgramFiles\Apprenti-Geometre" 'Apprenti_Geometre.exe'
#Install-ChocolateyShortcut -ShortcutFilePath "$env:ProgramData\Microsoft\Windows\Start Menu\Programs\Apprenti_Geometre.lnk" -TargetPath "$filepath"


# Mise en place du Raccourci dans Menu Demarrer (si le params est renseigné --params /DesktopShortcut)

#if ((Get-PackageParameters).DesktopShortcut) {
#Install-ChocolateyShortcut -ShortcutFilePath "$env:Public\Desktop\Apprenti_Geometre.lnk" -TargetPath "$filepath"
#}
