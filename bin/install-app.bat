@echo off
REM This program and the accompanying materials are
REM made available under the terms of the Eclipse Public License v2.0 which accompanies
REM this distribution, and is available at https://www.eclipse.org/legal/epl-v20.html
REM 
REM SPDX-License-Identifier: EPL-2.0
REM 
REM Copyright Contributors to the Zowe Project.

if [%1]==[] goto :fail
setlocal
set app_path="%~f1"
cd "%~dp0..\..\zlux-server-framework\utils"
node install-app.js -i "%app_path%"  -o "%~dp0..\..\\" -c "%~dp0..\..\zlux-app-server\deploy\instance\ZLUX\serverConfig\zluxserver.json" %2
endlocal
goto :finished

:fail
echo Usage: install-app.bat AppPackagePath
goto :eof

:finished
echo Ended with rc=%ERRORLEVEL%
REM This program and the accompanying materials are
REM made available under the terms of the Eclipse Public License v2.0 which accompanies
REM this distribution, and is available at https://www.eclipse.org/legal/epl-v20.html
REM 
REM SPDX-License-Identifier: EPL-2.0
REM 
REM Copyright Contributors to the Zowe Project.
