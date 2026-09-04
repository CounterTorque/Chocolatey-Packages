$version = '10.21.0'
$packageName = 'flyway.commandline.withjre'
$url = "https://repo1.maven.org/maven2/org/flywaydb/flyway-commandline/$version/flyway-commandline-$version-windows-x64.zip"
$checksumType = 'sha256'
$checksum = '7fb2fb92db2e8100247535a8a6ee7995625744190e938e2a48b680eb3070ac6c'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
Install-ChocolateyZipPackage $packageName $url $toolsDir -Checksum $checksum -ChecksumType $checksumType
Install-BinFile "flyway" "$toolsDir\flyway-$version\flyway.cmd"