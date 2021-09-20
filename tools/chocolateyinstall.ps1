$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://github.com/simonmichael/hledger/releases/download/1.22.2/hledger-windows.zip'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'EXE'
  url           = $url
  softwareName  = 'hledger*'
  checksum      = 'D7ED8B4AC563E6F9D6BADBD1EB9D9CF2DA873D6685628710C1CD8C472D42EDAF'
  checksumType  = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
