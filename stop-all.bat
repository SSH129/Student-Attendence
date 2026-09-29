@echo off
powershell -ExecutionPolicy Bypass -NoProfile -File "%~dp0stop-all.ps1" %*
