@ECHO OFF

TITLE Cleaning the user documentation for libOpenCOR...

SET CurrentPath=%CD%

CD %CurrentPath%\build

FOR /D %%I IN (*.*) DO RMDIR /S /Q "%%I"
FOR    %%I IN (*.*) DO DEL /Q "%%I"

CD %CurrentPath%
