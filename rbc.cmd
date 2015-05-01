@echo off

if "%1%"=="" goto raw
if "%2%"=="" goto skip
if "%3%"=="" goto single
if "%4%"=="" goto double
if "%5%"=="" goto triple

call rebar %1%=%2%,%3%;%4%;%5% compile
goto end

:triple
call rebar %1%=%2%,%3%;%4% compile
goto end

:double
call rebar %1%=%2%,%3% compile
goto end

:single
call rebar %1%=%2% compile
goto end

:skip
call rebar %1%=true compile
goto end

:raw
call rebar compile

:end
