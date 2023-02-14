$ErrorActionPreference = 'Stop'; # stop on all errors

Remove-Item -Path "$env:PROGRAMFILES\Babysouris" -Recurse -ErrorAction SilentlyContinue
Remove-Item -Path "$env:PROGRAMDATA\Microsoft\Windows\Start Menu\Programs\Baby_Souris.lnk" -Recurse -ErrorAction SilentlyContinue
Remove-Item -Path "$env:PUBLIC\Desktop\Baby_Souris.lnk" -Recurse -ErrorAction SilentlyContinue