@echo off
REM ── VI-PS Pharma Launcher ──────────────────────────────────────────
REM  Requirements: Java 17+ installed (https://adoptium.net)
REM  Check: java -version
REM ──────────────────────────────────────────────────────────────────

set JAVAFX_LIB=%~dp0javafx-sdk-26.0.1\lib
set FAT_JAR=%~dp0target\vips-pharma-fat.jar

if not exist "%FAT_JAR%" (
    echo [ERROR] target\vips-pharma-fat.jar not found.
    pause
    exit /b 1
)

if not exist "%JAVAFX_LIB%\javafx.controls.jar" (
    echo [ERROR] javafx-sdk-26.0.1\lib not found.
    pause
    exit /b 1
)

java ^
  --module-path "%JAVAFX_LIB%" ^
  --add-modules javafx.controls,javafx.fxml,javafx.graphics,javafx.base ^
  -jar "%FAT_JAR%"
