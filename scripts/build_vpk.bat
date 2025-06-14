@echo off
setlocal enableextensions enabledelayedexpansion
prompt $

echo Platform RID: %~1
echo Source Folder: %~2
echo Target Folder: %~3

call setup_env_vars.bat

set _archive_path=%_artifacts_dir%\publish\release_%~1

xcopy "..\content\vpks\%~2" "%_archive_path%\%~2\vpks\%~3" /i /r /s /y
xcopy "..\content\vpks\Source SDK Base Shared" "%_archive_path%\%~2\vpks\%~3" /i /r /s /y

pushd "%_archive_path%\%~2\vpks"
  rem "%_vpktoolpath%" -M -P ".\%~3"
  "%_vpktoolpath%" -c 100 -o ".\%~3.vpk" ".\%~3"
  rmdir /q /s ".\%~3"
popd

endlocal