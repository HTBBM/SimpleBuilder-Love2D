if not exist "Game" (
	mkdir "Game"
)


cd .\Game

del "*" /S /Q

cd ..

cd LoveFiles

copy /b .\love.exe+..\*.love ..\Game\game.exe

copy * ..\Game

cd ..\Game

del "love.exe"
del "lovec.exe"
del "love.ico"
del "game.ico"

cd ..

tar -czvf Game.tar.gz -C .\Game .

move Game.tar.gz .\Game
