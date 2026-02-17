@echo off
:: pthread-stubs does not build or install any binary code on Windows.
:: We just need the pkg-config .pc file so downstream packages (like libxcb)
:: can unconditionally depend on pthread-stubs.

mkdir "%LIBRARY_LIB%\pkgconfig"
if errorlevel 1 exit 1

(
echo prefix=%LIBRARY_PREFIX:\=/%
echo exec_prefix=${prefix}
echo libdir=${exec_prefix}/lib
echo.
echo Name: pthread stubs
echo Description: Stubs missing from libc for standard pthread functions
echo Version: 0.4
echo Libs:
) > "%LIBRARY_LIB%\pkgconfig\pthread-stubs.pc"
if errorlevel 1 exit 1
