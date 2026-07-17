@echo off
setlocal enabledelayedexpansion

if "%*"=="" exit /b 0

for %%i in (%*) do (
    set "filepath=%cd%\%%i.vue"
    set "filedir=%%~dpi"

    if not "!filedir!"=="" (
        if not exist "!filedir!" mkdir "!filedir!" 2>nul
    )

    (   
        echo ^<script setup^>
        echo ^</script^>
        echo.
        echo ^<template^>
        echo   ^<h1^>You did it!^</h1^>
        echo   ^<p^>Here is %%i^</p^>
        echo ^</template^>
        echo.
        echo ^<style scoped^>
        echo ^</style^>
    ) > "!filepath!"
)
