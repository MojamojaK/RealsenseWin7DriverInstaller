@ECHO off
SET dir=%~dp0
SET pa=%dir%intelrealsense_d400_series_win7.inf

PUSHD "%~dp0"
%SystemRoot%\System32\InfDefaultInstall.exe %pa%

::PAUSE