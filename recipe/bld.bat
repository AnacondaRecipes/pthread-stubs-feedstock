@echo off
:: pthread-stubs does not build or install any binary code on Windows.
:: We just need the pkg-config .pc file so downstream packages (like libxcb)
:: can unconditionally depend on pthread-stubs.

mkdir "%LIBRARY_LIB%\pkgconfig"
if errorlevel 1 exit 1

(
echo Name: pthread stubs
echo Description: Meta package for pthread symbols - defaults to heavyweight ones if the C runtime does not provide lightweight ones.
echo Version: {{ version }}
echo Cflags:
echo Libs:
) > "%LIBRARY_LIB%\pkgconfig\pthread-stubs.pc"
if errorlevel 1 exit 1
