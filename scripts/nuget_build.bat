@echo off
cd %~dp0

"%VS140COMNTOOLS%\VsMSBuildCmd.bat" && ^
msbuild pugixml_vs2013_static.vcxproj /t:Rebuild /p:Configuration=Debug /p:Platform=x86 /v:minimal /nologo && ^
msbuild pugixml_vs2013_static.vcxproj /t:Rebuild /p:Configuration=Release /p:Platform=x86 /v:minimal /nologo && ^
msbuild pugixml_vs2013_static.vcxproj /t:Rebuild /p:Configuration=Debug /p:Platform=x64 /v:minimal /nologo && ^
msbuild pugixml_vs2013_static.vcxproj /t:Rebuild /p:Configuration=Release /p:Platform=x64 /v:minimal /nologo && ^
msbuild pugixml_vs2015.vcxproj /t:Rebuild /p:Configuration=Debug /p:Platform=x86 /v:minimal /nologo && ^
msbuild pugixml_vs2015.vcxproj /t:Rebuild /p:Configuration=Release /p:Platform=x86 /v:minimal /nologo && ^
msbuild pugixml_vs2015.vcxproj /t:Rebuild /p:Configuration=Debug /p:Platform=x64 /v:minimal /nologo && ^
msbuild pugixml_vs2015.vcxproj /t:Rebuild /p:Configuration=Release /p:Platform=x64 /v:minimal /nologo && ^
"%VS141COMNTOOLS%\VsMSBuildCmd.bat" && ^
msbuild pugixml_vs2017.vcxproj /t:Rebuild /p:Configuration=Debug /p:Platform=x86 /v:minimal /nologo && ^
msbuild pugixml_vs2017.vcxproj /t:Rebuild /p:Configuration=Release /p:Platform=x86 /v:minimal /nologo && ^
msbuild pugixml_vs2017.vcxproj /t:Rebuild /p:Configuration=Debug /p:Platform=x64 /v:minimal /nologo && ^
msbuild pugixml_vs2017.vcxproj /t:Rebuild /p:Configuration=Release /p:Platform=x64 /v:minimal /nologo && ^
powershell Write-NuGetPackage nuget.autopkg
