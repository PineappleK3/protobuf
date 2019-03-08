@ECHO OFF

MKDIR "../build/"
MKDIR "../build/PHP"

FOR /r %%A IN ("..\proto\*") DO protoc --php_out=..\build\PHP --proto_path="..\proto" %%~nxA
FOR /D /r %%G IN ("..\proto\*") DO FOR /r %%A IN ("..\proto\%%~nxG\*") DO protoc --php_out="..\build\PHP" --proto_path="..\proto" %%~nxG/%%~nxA

pause