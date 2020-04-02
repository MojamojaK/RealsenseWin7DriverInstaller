 @echo off
 setlocal EnableDelayedExpansion

set _LAST=NULL
for /f "tokens=2 delims=:" %%A in ('pnputil /enum-drivers') DO (
	for %%i in (%%A) DO (
		if "%%i"=="intelrealsense_d400_series_win7.inf" (
			set OEM=!_LAST!
			goto :found
		) else (
			set _LAST=%%i
		)
	)
)
ECHO DRIVER NOT FOUND
goto :end

:found
 echo RETRIEVING DRIVER !OEM!
 pnputil /export-driver !OEM! %~dp0

:end
::PAUSE