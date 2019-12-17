$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$fileLocation = Join-Path $toolsDir 'emuflight-configurator-installer_0.2.12_win64.exe'
$url        = ''
$url64      = ''

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'EXE'
  url           = $url
  url64bit      = $url64
  file          = $fileLocation

  softwareName  = 'emu-configurator*'
  checksum      = ''
  checksumType  = 'sha256'
  checksum64    = '9B8A59F28E7260CB3ADCC9EA57BE8A2C8ECA9325406DC1184B3F736A1944B706'
  checksumType64= 'sha256'

  silentArgs   = '/S'
  validExitCodes= @(0)
}

Install-ChocolateyInstallPackage @packageArgs
