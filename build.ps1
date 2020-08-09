﻿Remove-Item –path ./client –recurse
& java -jar swagger-codegen-cli-2.4.12.jar generate -i https://api.cloudmersive.com/swagger/api/dataintegration -l csharp -o client -c packageconfig.json
#(Get-Content ./client/src/api/ConvertDocumentApi.js).replace('var returnType = Object;', "var returnType = 'Blob';") | Set-Content ./client/src/api/ConvertDocumentApi.js
#(Get-Content ./client/src/api/ConvertWebApi.js).replace('var returnType = Object;', "var returnType = 'Blob';") | Set-Content ./client/src/api/ConvertWebApi.js
#& npm build ./client

# Cleanup



(Get-Content ./client/src/Cloudmersive.APIClient.NETCore.DataIntegration/Cloudmersive.APIClient.NETCore.DataIntegration.csproj).replace('<Authors>Swagger</Authors>', "<Authors>Cloudmersive</Authors>") | Set-Content ./client/src/Cloudmersive.APIClient.NETCore.DataIntegration/Cloudmersive.APIClient.NETCore.DataIntegration.csproj
(Get-Content ./client/src/Cloudmersive.APIClient.NETCore.DataIntegration/Cloudmersive.APIClient.NETCore.DataIntegration.csproj).replace('<Company>Swagger</Company>', "<Company>Cloudmersive</Company>") | Set-Content ./client/src/Cloudmersive.APIClient.NETCore.DataIntegration/Cloudmersive.APIClient.NETCore.DataIntegration.csproj
(Get-Content ./client/src/Cloudmersive.APIClient.NETCore.DataIntegration/Cloudmersive.APIClient.NETCore.DataIntegration.csproj).replace('<AssemblyTitle>Swagger Library</AssemblyTitle>', "<AssemblyTitle>Cloudmersive Video and Media Services API Client</AssemblyTitle>") | Set-Content ./client/src/Cloudmersive.APIClient.NETCore.DataIntegration/Cloudmersive.APIClient.NETCore.DataIntegration.csproj
(Get-Content ./client/src/Cloudmersive.APIClient.NETCore.DataIntegration/Cloudmersive.APIClient.NETCore.DataIntegration.csproj).replace('<Description>A library generated from a Swagger doc</Description>', "<Description>Convert and encode video and media files and content between file formats. On-demand.</Description>") | Set-Content ./client/src/Cloudmersive.APIClient.NETCore.DataIntegration/Cloudmersive.APIClient.NETCore.DataIntegration.csproj
(Get-Content ./client/src/Cloudmersive.APIClient.NETCore.DataIntegration/Cloudmersive.APIClient.NETCore.DataIntegration.csproj).replace('<TargetFramework>net45</TargetFramework>', "<TargetFramework>netcoreapp2.1</TargetFramework>") | Set-Content ./client/src/Cloudmersive.APIClient.NETCore.DataIntegration/Cloudmersive.APIClient.NETCore.DataIntegration.csproj
(Get-Content ./client/src/Cloudmersive.APIClient.NETCore.DataIntegration/Cloudmersive.APIClient.NETCore.DataIntegration.csproj).replace('</PropertyGroup>', "<PackageIconUrl>https://cloudmersive.com/images/cmsdk_core.png</PackageIconUrl><PackageLicenseExpression>Apache-2.0</PackageLicenseExpression><PackageProjectUrl>https://cloudmersive.com/video-and-media-services-api</PackageProjectUrl></PropertyGroup>") | Set-Content ./client/src/Cloudmersive.APIClient.NETCore.DataIntegration/Cloudmersive.APIClient.NETCore.DataIntegration.csproj
(Get-Content '.\client\src\Cloudmersive.APIClient.NETCore.DataIntegration\Cloudmersive.APIClient.NETCore.DataIntegration.csproj').replace('<PackageReference Include="RestSharp" Version="105.1.0" />', '<PackageReference Include="RestSharp" Version="106.6.10" />') | Set-Content '.\client\src\Cloudmersive.APIClient.NETCore.DataIntegration\Cloudmersive.APIClient.NETCore.DataIntegration.csproj'
(Get-Content '.\client\src\Cloudmersive.APIClient.NETCore.DataIntegration\Client\ApiClient.cs').replace('request.AddFile(param.Value.Name, param.Value.Writer, param.Value.FileName, param.Value.ContentType);', 'request.AddFile(param.Value.Name, param.Value.Writer, param.Value.FileName, param.Value.ContentLength, param.Value.ContentType);') | Set-Content '.\client\src\Cloudmersive.APIClient.NETCore.DataIntegration\Client\ApiClient.cs'

& dotnet build ./client/src/Cloudmersive.APIClient.NETCore.DataIntegration/Cloudmersive.APIClient.NETCore.DataIntegration.csproj -c Release
& dotnet pack ./client/src/Cloudmersive.APIClient.NETCore.DataIntegration/Cloudmersive.APIClient.NETCore.DataIntegration.csproj -c Release

(Get-Content ./client/README.md).replace(' automatically generated by the [Swagger Codegen](https://github.com/swagger-api/swagger-codegen) project', " for the [Cloudmersive Data Integration API](https://cloudmersive.com/data-integration-api)") | Set-Content ./client/README.md

Copy-Item ./client/README.md ./README.md