@echo off
setlocal enableextensions enabledelayedexpansion
prompt $

echo Platform RID: %~1

call setup_env_vars.bat

set _archive_path=%_artifacts_dir%\publish\release_%~1
set _archive_name=Installer-Files-%~1.zip

rem Remove previous built artifacts.
if exist "%_archive_path%" (rmdir /q /s "%_archive_path%")
if exist "%_archive_path%\..\%_archive_name%" (del "%_archive_path%\..\%_archive_name%")

rem Copy licenses
xcopy "..\content\licenses\*" "%_archive_path%\licenses" /i /r /s /y

rem Copy tools
xcopy "%_downloads_dir%\ExtractVPK\%~1\*" "%_archive_path%\tools\ExtractVPK" /i /r /s /y
xcopy "%_downloads_dir%\SteamApps\%~1\*" "%_archive_path%\tools\SteamApps" /i /r /s /y
xcopy "%_downloads_dir%\VPKEditCLI\*" "%_archive_path%\tools\VPKEditCLI" /i /r /s /y

rem Copy DLLs
xcopy "%_downloads_dir%\source_2004_mod_hl2\bin\*" "%_archive_path%\Source SDK Base\hl2\bin" /i /r /s /y
xcopy "%_downloads_dir%\source_2006_mod_episodic\bin\*" "%_archive_path%\Source SDK Base\episodic_2006\bin" /i /r /s /y
xcopy "%_downloads_dir%\source_2006_mod_hl2\bin\*" "%_archive_path%\Source SDK Base\hl2_2006\bin" /i /r /s /y
xcopy "%_downloads_dir%\source_2006_mod_hl2mp\bin\*" "%_archive_path%\Source SDK Base\hl2mp\bin" /i /r /s /y
xcopy "%_downloads_dir%\source_2006_mod_lostcoast\bin\*" "%_archive_path%\Source SDK Base\lostcoast\bin" /i /r /s /y
xcopy "%_downloads_dir%\source_2007_mod_ep2\bin\*" "%_archive_path%\Source SDK Base 2007\ep2\bin" /i /r /s /y
xcopy "%_downloads_dir%\source_2007_mod_episodic\bin\*" "%_archive_path%\Source SDK Base 2007\episodic_2007\bin" /i /r /s /y
xcopy "%_downloads_dir%\source_2007_mod_hl2\bin\*" "%_archive_path%\Source SDK Base 2007\hl2\bin" /i /r /s /y
xcopy "%_downloads_dir%\source_2007_mod_hl2mp\bin\*" "%_archive_path%\Source SDK Base 2007\hl2mp\bin" /i /r /s /y
xcopy "%_downloads_dir%\source_2007_mod_lostcoast\bin\*" "%_archive_path%\Source SDK Base 2007\lostcoast\bin" /i /r /s /y

rem Copy non-VPK files.
xcopy "..\content\files\Source SDK Base Shared" "%_archive_path%\Source SDK Base" /i /r /s /y
xcopy "..\content\files\Source SDK Base Shared" "%_archive_path%\Source SDK Base 2007" /i /r /s /y

rem Build VPKs
call build_vpk.bat "%~1" "Source SDK Base" "source2006_patches_dir"
call build_vpk.bat "%~1" "Source SDK Base 2007" "source2007_patches_dir"

pushd "%_archive_path%"
  zip -r "..\%_archive_name%" .
popd

endlocal