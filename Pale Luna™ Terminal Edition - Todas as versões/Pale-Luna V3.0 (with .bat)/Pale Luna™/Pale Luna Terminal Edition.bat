::[Bat To Exe Converter]
::
::YAwzoRdxOk+EWAjk
::fBw5plQjdCyDJGqh2mMZFChVSESgOXmoH/U76eX+/Na3o0EYGc4qdo7n6rWCJaA//0vl93Lvlk5fisYFAhpUPjevZxs9pmAC+ySxOMOdoE/gWQif41kjuLBxlF/gjSc+Lf99lMJD5XPwrA23iKwE2TixXKgaXF/RwKBteOUV8ws2jIv0m6NFdf/tZLOnCjXHQw==
::YAwzuBVtJxjWCl3EqQJgSA==
::ZR4luwNxJguZRRnk
::Yhs/ulQjdF+5
::cxAkpRVqdFKZSDk=
::cBs/ulQjdF+5
::ZR41oxFsdFKZSDk=
::eBoioBt6dFKZSDk=
::cRo6pxp7LAbNWATEpCI=
::egkzugNsPRvcWATEpCI=
::dAsiuh18IRvcCxnZtBJQ
::cRYluBh/LU+EWAnk
::YxY4rhs+aU+JeA==
::cxY6rQJ7JhzQF1fEqQJQ
::ZQ05rAF9IBncCkqN+0xwdVs0
::ZQ05rAF9IAHYFVzEqQJQ
::eg0/rx1wNQPfEVWB+kM9LVsJDGQ=
::fBEirQZwNQPfEVWB+kM9LVsJDGQ=
::cRolqwZ3JBvQF1fEqQJQ
::dhA7uBVwLU+EWDk=
::YQ03rBFzNR3SWATElA==
::dhAmsQZ3MwfNWATElA==
::ZQ0/vhVqMQ3MEVWAtB9wSA==
::Zg8zqx1/OA3MEVWAtB9wSA==
::dhA7pRFwIByZRRnk
::Zh4grVQjdCyDJGqh2mMZFChVSESgOXmoH/U76eX+/Na3o0EYGc4qdo7n6rWCJaA//0vl93Lvlk5fisYFAhpUPjevZxs9pmAC+ySxOMOdoE/gWQif41kjuLBxlF/gjSc+Lf99lMJD5XPwrA23iKwE2TixXKgaXF/RwKBteOUV8ws2jIv0qrJZT7bCfrPoQwLNMWQWgnHPy6Zul5ckUC4V
::YB416Ek+ZG8=
::
::
::978f952a14a936cc963da21a135fa983
@echo off
title Pale Luna Terminal Edition
mode con cols=121 lines=36
color 0B
where node >nul
if errorlevel 1 (
  echo Node.js nao encontrado. Instale para continuar.
  pause
  exit
)
cd assets
node lang.js
cd..
if not exist HAHAHAHAHAHAHA.txt (
taskkill /f /im "vlc.exe" 2>NUL
)

pause
exit /b 0