@ECHO OFF

MKDIR "../build/"
MKDIR "../build/JS"

FOR /r %%A IN ("..\proto\*") DO protoc --js_out=..\build\JS --proto_path="..\proto" %%~nxA
FOR /D /r %%G IN ("..\proto\*") DO FOR /r %%A IN ("..\proto\%%~nxG\*") DO protoc --js_out="..\build\JS" --proto_path="..\proto" %%~nxG/%%~nxA

pause