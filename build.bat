@echo off
REM Build script for Calculator project (Windows)

echo ========================================
echo Building Calculator Application
echo ========================================

echo Cleaning previous builds...
call mvn clean

echo Compiling the project...
call mvn compile

echo Running tests...
call mvn test

echo Packaging the application...
call mvn package

echo ========================================
echo Build completed successfully!
echo JAR file location: target\calculator-1.0-SNAPSHOT.jar
echo ========================================
