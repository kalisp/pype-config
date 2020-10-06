@echo off

set __app__="Fusion Studio 16"
set __exe__="C:\Program Files\Blackmagic Design\Fusion 16\Fusion.exe"
if not exist %__exe__% goto :missing_app

start %__app__% %__exe__% %*

goto :eof

:missing_app
    echo ERROR: %__app__% not found in %__exe__%
    exit /B 1
