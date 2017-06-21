set PROJ=src\Iatec.Apis.Accounts.v1.Client\Iatec.Apis.Accounts.v1.Client.csproj
set CONFIGURATION=Release
nuget restore %PROJ%
msbuild %PROJ% /p:Configuration=%CONFIGURATION%
nuget pack %PROJ% -Prop Configuration=%CONFIGURATION%
