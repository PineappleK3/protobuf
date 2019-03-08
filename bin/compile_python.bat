@ECHO OFF

MKDIR "../build/"
MKDIR "../build/Python"

FOR /r %%A IN ("..\proto\*") DO protoc --python_out=..\build\Python --proto_path="..\proto" %%~nxA
FOR /D /r %%G IN ("..\proto\*") DO FOR /r %%A IN ("..\proto\%%~nxG\*") DO protoc --python_out="..\build\Python" --proto_path="..\proto" %%~nxG/%%~nxA

pause