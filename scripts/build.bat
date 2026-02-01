@echo off
REM Build script for Calculator project (Windows)

echo ========================================
echo Building Calculator Application
echo ========================================

REM Clean previous builds
echo Cleaning previous builds...
call mvn clean

REM Compile the project
echo Compiling the project...
call mvn compile
if %ERRORLEVEL% NEQ 0 (
    echo Compilation failed!
    exit /b 1
)

REM Run tests
echo Running tests...
call mvn test
if %ERRORLEVEL% NEQ 0 (
    echo Tests failed!
    exit /b 1
)

REM Package the application
echo Packaging the application...
call mvn package
if %ERRORLEVEL% NEQ 0 (
    echo Packaging failed!
    exit /b 1
)

echo ========================================
echo Build completed successfully!
echo JAR file location: target\calculator-1.0-SNAPSHOT.jar
echo ========================================

exit /b 0
