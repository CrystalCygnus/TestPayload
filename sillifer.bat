@echo off

mkdir containment
cd containment

.>silly.bat 2>NUL & .>meow.bat 2>NUL

echo @echo off >> silly.bat
echo @echo off >> meow.bat

FOR /L %%A IN (1,1,10) DO echo start "Mreow" cmd /c meow.bat >> silly.bat 
FOR /L %%A IN (1,1,20) DO echo echo mreow mrrp >> meow.bat
echo timeout 1 >> meow.bat
echo timeout 5 >> silly.bat

echo GO MY KITTENS!!!!
start "CAT CANNON" cmd /c silly.bat

timeout 7 >NUL
del .\meow.bat 
del .\silly.bat 
cd ..\
rmdir containment
del .\sillifer.bat