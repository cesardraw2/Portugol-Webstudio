@echo off
dotnet restore
dotnet publish -r win-x64
del /s /q bin\Debug\netcoreapp2.0\win-x64\publish\*
rmdir /s /q bin\Debug\netcoreapp2.0\win-x64\publish\
mkdir dist
move bin\Debug\netcoreapp2.0\win-x64\ .\dist\win-x64\
mkdir .\dist\win-x64\temp\
del /s /q bin\