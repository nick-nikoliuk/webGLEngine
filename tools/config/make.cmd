%~dp0/../nodejs/node %~dp0/../nodejs/node_modules/typescript/bin/tsc %~dp0/../../source/webGLEngine.ts --out %~dp0/../../source/webGLEngine.js -d --sourcemap --target ES5
%~dp0/../nodejs/node %~dp0/../nodejs/node_modules/typescript/bin/tsc %~dp0/../../example/code/main.ts --out %~dp0/../../example/code/main.js -d --sourcemap --target ES5
if %ERRORLEVEL% neq 0 GOTO EXIT_LABEL
rem %~dp0/../nodejs/node %~dp0/build.js
:EXIT_LABEL
exit %ERRORLEVEL%