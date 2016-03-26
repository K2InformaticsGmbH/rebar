@echo off

if "%1"=="-deps" goto deps
if "%1"=="" goto raw
if "%2"=="" goto skip
if "%3"=="" goto single
if "%4"=="" goto double
if "%5"=="" goto triple

echo rebar compile %1=%2,%3,%4,%5
call rebar compile %1=%2,%3,%4,%5
goto end

:triple
echo triple
echo rebar compile %1=%2,%3,%4 
call rebar compile %1=%2,%3,%4 
goto end

:double
echo double
echo rebar compile %1=%2,%3
call rebar compile %1=%2,%3 
goto end

:single
echo single skip
echo rebar compile %1=%2
call rebar compile %1=%2 
goto end

:skip
echo skip
echo rebar compile %1=true 
call rebar compile %1=true
goto end

:raw
echo raw
echo rebar compile
call rebar compile

:deps
echo rebar compile skip deps=dderloci,erlscrypt
call rebar compile skip_deps=dderloci,erlscrypt

:end
