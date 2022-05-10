@echo off
:start
set /a rand=%Random% %%100
set /a counter=0

:tenta 
set /a counter=counter+1
set /p nb=tentative n.%counter% 


if %nb% == %rand% (goto :trouve)
if %nb% LSS %rand% (echo Plus grand)
if %nb% GTR %rand% (echo Plus petit)
GOTO :tenta 

:trouve 
echo bravo! le nombre etait %rand%
echo vous avez trouve en %counter% coups


set playagain=n
set /p playagain=voulez vous rejouez (Y/N)?
if "%playagain%" == "Y" goto :start