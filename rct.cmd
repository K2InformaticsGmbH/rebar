@echo off
if "%1%"=="" goto verbose
cls
rebar skip_deps=true -v %1% ct
goto end

:verbose
cls
rebar skip_deps=true -v 3 ct
goto end

:end