call runcrud.bat /wait
if "%ERRORLEVEL%" == "0" goto runwebbrowser
echo.
echo Error detected during crud update.
goto fail

:runwebbrowser
start http://localhost:8080/crud/v1/task/getTasks
if "%ERRORLEVEL%" == "0" goto end
echo.
echo Error during browser startup

:fail
echo.
echo Errors detected.

:end
echo.
echo Batch finisched.
