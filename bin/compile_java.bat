@ECHO OFF

MKDIR "../build/"
MKDIR "../build/Java"

FOR /r %%A IN ("..\proto\*") DO protoc --java_out=..\build\Java --proto_path="..\proto" %%~nxA
FOR /D /r %%G IN ("..\proto\*") DO FOR /r %%A IN ("..\proto\%%~nxG\*") DO protoc --java_out="..\build\Java" --proto_path="..\proto" %%~nxG/%%~nxA

pause