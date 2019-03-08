@ECHO OFF

MKDIR "../build/"
MKDIR "../build/C++"

FOR /r %%A IN ("..\proto\*") DO protoc --cpp_out=..\build\C++ --proto_path="..\proto" %%~nxA
FOR /D /r %%G IN ("..\proto\*") DO FOR /r %%A IN ("..\proto\%%~nxG\*") DO protoc --cpp_out="..\build\C++" --proto_path="..\proto" %%~nxG/%%~nxA

pause