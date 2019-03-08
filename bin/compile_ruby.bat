@ECHO OFF

MKDIR "../build/"
MKDIR "../build/Ruby"

FOR /r %%A IN ("..\proto\*") DO protoc --ruby_out=..\build\Ruby --proto_path="..\proto" %%~nxA
FOR /D /r %%G IN ("..\proto\*") DO FOR /r %%A IN ("..\proto\%%~nxG\*") DO protoc --ruby_out="..\build\Ruby" --proto_path="..\proto" %%~nxG/%%~nxA

pause