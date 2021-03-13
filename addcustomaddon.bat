@echo off
echo %1
echo %2
cd addons
mklink /D %2\ ..\.gitrepos\%1\addons\%2\ 