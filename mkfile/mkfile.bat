:: Mkfile: Batch script for creating new files from template.
:: Copyright (c) 2025 Ivan Kmeťo, licensed under the MIT License.

@echo off
setlocal enableextensions

set template_path="%~dp0template.txt"

if "%~1" == "" (
    goto usage
) else if /i "%~1" == "/?" (
    goto usage
) else if /i "%~2" == "/?" (
    goto usage
) else (
    if "%~2" == "" (
        copy /-Y %template_path% "%~1"
        exit /b 0
    ) else if /i "%~2" == "/E" (
        if not exist "%~1" (
            type nul > "%~1"
            exit /b 0
        )
        echo File "%~1" already exists.
        exit /b 1
    ) else (
        echo Argument "%~2" is not recognized.
        exit /b 1
    )
)

:usage
echo Creates a file from template.
echo,
echo MKFILE [drive:][path]filename [/E]
echo,
echo   /E            Creates empty file.
exit /b 0
