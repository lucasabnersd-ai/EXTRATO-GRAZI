@echo off
chcp 65001 >nul
title Publicar Extrato no GitHub Pages
cd /d "%~dp0"
echo.
echo ============================================================
echo   Publicando o extrato no GitHub Pages
echo ============================================================
echo.

REM Tenta python primeiro; se nao achar, tenta py launcher
where python >nul 2>nul
if %errorlevel%==0 (
    python auto_commit.py %*
) else (
    py auto_commit.py %*
)

echo.
echo ============================================================
pause
