$ErrorActionPreference = 'Stop';

$unzipLocation = "$env:TEMP\$packagename"

$packageArgs = @{
  packageName   = 'babysouris'
  unzipLocation = $unzipLocation
  Url           = "https://adajls.pagesperso-orange.fr/zips/babysou.zip"
  checksum      = '7588F9A2AA0D9D7E872579F5C4F090D03CECD6A615AE5351962A2CF3C02D389E'
  checksumType  = 'sha256'
}
Install-ChocolateyZipPackage @packageArgs

$packageArgs = @{
  packageName    = 'babysouris'
  softwareName   = 'babysouris*'
  fileType       = 'exe'
  file          = "$unzipLocation\babysou.exe"
  silentArgs     = '/S'
  validExitCodes = @(0)
  checksum       = '0CAEE760923AF3D4ADD318CD07B6709456CB4E14F93C71B7001F3204AF3CC71D'
  checksumType   = 'sha256'
  }

Install-ChocolateyInstallPackage @packageArgs

# Mise en place du Raccourci dans Menu Demarrer
$filepath = Join-Path "$env:ProgramFiles\Apprenti-Geometre" 'Apprenti_Geometre.exe'
Install-ChocolateyShortcut -ShortcutFilePath "$env:ProgramData\Microsoft\Windows\Start Menu\Programs\Apprenti_Geometre.lnk" -TargetPath "$filepath"


# Mise en place du Raccourci dans Menu Demarrer (si le params est renseigné --params /DesktopShortcut)

if ((Get-PackageParameters).DesktopShortcut) {
Install-ChocolateyShortcut -ShortcutFilePath "$env:Public\Desktop\Apprenti_Geometre.lnk" -TargetPath "$filepath"
}
