$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://github.com/simonmichael/hledger/releases/download/1.22.2/hledger-windows.zip'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'EXE'
  url           = $url
  softwareName  = 'hledger*'
  checksum      = '8135241CED807585453C690DE2301FFF534F5FC0E05A4C9E923828CDB5246354'
  checksumType  = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
