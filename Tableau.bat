
@echo off
set /a num=0
setlocal enableDelayedExpansion
echo Entrez une liste de noms, pour finir entrez uniquement 0 
:newVar
set /a num=num+1
set /p tab[%num%]=Entrez un mot: 
if not !tab[%num%]! == 0 goto newVar
echo. 
echo Taille du tableau: %num%
echo.
echo.
echo le tableau final:
FOR /L %%i IN (1 1 %num%) DO (
	echo tab[%%i] = !tab[%%i]!
)
endlocal
pause