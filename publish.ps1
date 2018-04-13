$root = (split-path -parent $MyInvocation.MyCommand.Definition)
$version = [System.Reflection.Assembly]::LoadFile("$($root)\src\Sitecore.React\bin\Sitecore.React.dll").GetName().Version
$versionStr = "{0}.{1}.{2}" -f ($version.Major, $version.Minor, $version.Build)

Write-Host "Deploying packages to bizGov nuget"

& $root\NuGet\NuGet.exe push -Source http://build.dev.business.gov.au/ -ApiKey 8e24a1d00ee9ff5e543586018ca9aa6d30afc236 "Sitecore.React.$versionStr.nupkg"
& $root\NuGet\NuGet.exe push -Source http://build.dev.business.gov.au/ -ApiKey 8e24a1d00ee9ff5e543586018ca9aa6d30afc236 "Sitecore.React.Web.$versionStr.nupkg"