@ECHO OFF

MKDIR "../build/"
MKDIR "../build/Obj-C"

FOR /r %%A IN ("..\proto\*") DO protoc --objc_out=..\build\Obj-C --proto_path="..\proto" %%~nxA
FOR /D /r %%G IN ("..\proto\*") DO FOR /r %%A IN ("..\proto\%%~nxG\*") DO protoc --objc_out="..\build\Obj-C" --proto_path="..\proto" %%~nxG/%%~nxA

pause