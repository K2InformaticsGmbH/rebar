@echo off
if "%1"=="" goto verbose
if "%1"=="-silent" goto silent
cls
rebar skip_deps=true eunit suites=%1%
goto end

:verbose
cls
echo rebar skip_deps=true eunit 
rebar skip_deps=true eunit 
goto end

:silent
echo running all tests for project, reporting only failures
echo rebar skip_deps=true eunit 
rebar skip_deps=true eunit | grep -re "---TEST---\|assertion_failed\|\*failed\*\|\*timed\ out\*\|\*\*throw"

:end
