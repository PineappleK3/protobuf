@ECHO OFF

MKDIR "../build/"
MKDIR "../build/CSharp"

FOR /r %%A IN ("..\proto\*") DO protoc --csharp_out=..\build\CSharp --proto_path="..\proto" %%~nxA
FOR /D /r %%G IN ("..\proto\*") DO FOR /r %%A IN ("..\proto\%%~nxG\*") DO protoc --csharp_out="..\build\CSharp" --proto_path="..\proto" %%~nxG/%%~nxA

pause