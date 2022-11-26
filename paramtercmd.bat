@echo off

::config URL
set Jenkins_URL=localhost:8080
set userName=Hasannelta
set API_Tocken=1119f427a6e0505395fd6db49d8cee9bee
set Job_Name=parameter

::to rename Variables
set Variabl_1=card
set Variabl_2=Country

echo countrys: DE CH NH CI

::car not empty
:newCard
set /p "Variabl_value1=%Variabl_1%: "
if [%Variabl_value1%]==[] ( goto:newCard ) 


:newContry
set /p "Variabl_value2=%Variabl_2%: "

if %Variabl_value2%==DE ( goto:end ) 
if %Variabl_value2%==CH ( goto:end ) 
if %Variabl_value2%==NH ( goto:end ) 
if %Variabl_value2%==CI ( goto:end ) else ( goto:newContry ) 

:end
curl -d "%Variabl_1%=%Variabl_value1%&%Variabl_2%=%Variabl_value2%" -i -X POST http://%userName%:%API_Tocken%@%Jenkins_URL%/job/%Job_Name%/buildWithParameters>nul

::curl -s -X GET -u %userName%:%API_Tocken%  http://%Jenkins_URL%/job/%Job_Name%/lastBuild/api/xml  



echo.
echo Build is runnig ...
echo.

echo run new build?
echo [y]/[n] 
set /p "newBuild= "
echo.
if %newBuild%==y (echo New build ) 
if %newBuild%==y ( goto:newCard ) 
if %newBuild%==n ( goto:close ) 
::PAUSE>nul
:close

    
