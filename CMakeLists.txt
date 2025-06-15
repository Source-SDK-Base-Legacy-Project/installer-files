cmake_minimum_required(VERSION 4.0.2)

project(InstallerFiles LANGUAGES NONE)

include(FetchContent)

set(SOURCE_2004_BINARIES_VERSION "v2.0.0-alpha.1" CACHE STRING "Source 2004 release version")
set(SOURCE_2006_BINARIES_VERSION "v2.0.0-alpha.1" CACHE STRING "Source 2006 release version")
set(SOURCE_2007_BINARIES_VERSION "v2.0.0-alpha.1" CACHE STRING "Source 2007 release version")
set(EXTRACTVPK_VERSION "v1.0.0-alpha.1" CACHE STRING "ExtractVPK release version")
set(STEAMAPPS_VERSION "v1.0.0-alpha.1" CACHE STRING "SteamApps release version")
set(VPKEDITCLI_VERSION "vpkeditcli-v4.4.2" CACHE STRING "VPKEditCLI release version")

set(ARTIFACTS_DIR "${CMAKE_SOURCE_DIR}/artifacts")
set(DOWNLOADS_DIR "${CMAKE_BINARY_DIR}/downloads")
set(VPK_TOOL_PATH "${DOWNLOADS_DIR}/VPKEditCLI/vpkeditcli.exe")

cmake_path (CONVERT "${ARTIFACTS_DIR}" TO_NATIVE_PATH_LIST ARTIFACTS_DIR_NATIVE)
cmake_path (CONVERT "${DOWNLOADS_DIR}" TO_NATIVE_PATH_LIST DOWNLOADS_DIR_NATIVE)
cmake_path (CONVERT "${VPK_TOOL_PATH}" TO_NATIVE_PATH_LIST VPK_TOOL_PATH_NATIVE)

#=============
# Source 2004
#=============

FetchContent_Populate(
  source_2004_mod_hl2
  URL https://github.com/Source-SDK-Base-Legacy-Project/source-sdk-2004/releases/download/${SOURCE_2004_BINARIES_VERSION}/source_2004_mod_hl2-${SOURCE_2004_BINARIES_VERSION}-win-x86.zip
  URL_HASH SHA256=7a07db4ac0017d4adb71f9f104b4b5957ce9b51624e2649e85a190b2488ee6e7
  
  SOURCE_DIR   ${DOWNLOADS_DIR}/source_2004_mod_hl2 # Determine ou extraire les fichiers telecharges
)

#=============
# Source 2006
#=============

FetchContent_Populate(
  source_2006_mod_episodic
  URL https://github.com/Source-SDK-Base-Legacy-Project/source-sdk-2006/releases/download/${SOURCE_2006_BINARIES_VERSION}/source_2006_mod_episodic-${SOURCE_2006_BINARIES_VERSION}-win-x86.zip
  URL_HASH SHA256=90b70a3b1fde8e667532307fef4554d892644b27f2db2b61942b53600459d208
  SOURCE_DIR   ${DOWNLOADS_DIR}/source_2006_mod_episodic # Determine ou extraire les fichiers telecharges
)

FetchContent_Populate(
  source_2006_mod_hl2
  URL https://github.com/Source-SDK-Base-Legacy-Project/source-sdk-2006/releases/download/${SOURCE_2006_BINARIES_VERSION}/source_2006_mod_hl2-${SOURCE_2006_BINARIES_VERSION}-win-x86.zip
  URL_HASH SHA256=ef85b633413579dfd53b99f7f157b87d8f3084036f0dff0345b25178edd7ee65
  SOURCE_DIR   ${DOWNLOADS_DIR}/source_2006_mod_hl2 # Determine ou extraire les fichiers telecharges
)

FetchContent_Populate(
  source_2006_mod_hl2mp
  URL https://github.com/Source-SDK-Base-Legacy-Project/source-sdk-2006/releases/download/${SOURCE_2006_BINARIES_VERSION}/source_2006_mod_hl2mp-${SOURCE_2006_BINARIES_VERSION}-win-x86.zip
  URL_HASH SHA256=4f300f056047f7b26ef360842f24622ffb311bed1a8755c3ea18c140fb11b37a
  SOURCE_DIR   ${DOWNLOADS_DIR}/source_2006_mod_hl2mp # Determine ou extraire les fichiers telecharges
)

FetchContent_Populate(
  source_2006_mod_lostcoast
  URL https://github.com/Source-SDK-Base-Legacy-Project/source-sdk-2006/releases/download/${SOURCE_2006_BINARIES_VERSION}/source_2006_mod_lostcoast-${SOURCE_2006_BINARIES_VERSION}-win-x86.zip
  URL_HASH SHA256=0a49f38f7a058fa5ede1bba6b323484e183159092ca6c4049f17234a074760b3
  SOURCE_DIR   ${DOWNLOADS_DIR}/source_2006_mod_lostcoast # Determine ou extraire les fichiers telecharges
)

#=============
# Source 2007
#=============

FetchContent_Populate(
  source_2007_mod_ep2
  URL https://github.com/Source-SDK-Base-Legacy-Project/source-sdk-2007/releases/download/${SOURCE_2007_BINARIES_VERSION}/source_2007_mod_ep2-${SOURCE_2007_BINARIES_VERSION}-win-x86.zip
  URL_HASH SHA256=9ddf9b57ee3741e8c054d347cc45fa21815ae732b12f313443eff98ed0abbed7
  SOURCE_DIR   ${DOWNLOADS_DIR}/source_2007_mod_ep2 # Determine ou extraire les fichiers telecharges
)

FetchContent_Populate(
  source_2007_mod_episodic
  URL https://github.com/Source-SDK-Base-Legacy-Project/source-sdk-2007/releases/download/${SOURCE_2007_BINARIES_VERSION}/source_2007_mod_episodic-${SOURCE_2007_BINARIES_VERSION}-win-x86.zip
  URL_HASH SHA256=b7a8824c5e79ea71801562d57c45961850bad1608a5c2fde439920f8cb5b05aa
  SOURCE_DIR   ${DOWNLOADS_DIR}/source_2007_mod_episodic # Determine ou extraire les fichiers telecharges
)

FetchContent_Populate(
  source_2007_mod_hl2
  URL https://github.com/Source-SDK-Base-Legacy-Project/source-sdk-2007/releases/download/${SOURCE_2007_BINARIES_VERSION}/source_2007_mod_hl2-${SOURCE_2007_BINARIES_VERSION}-win-x86.zip
  URL_HASH SHA256=2cd84b81879f6b074814a5ea8de6f5ca67d0d16c416b592689e3286ae0888279
  SOURCE_DIR   ${DOWNLOADS_DIR}/source_2007_mod_hl2 # Determine ou extraire les fichiers telecharges
)

FetchContent_Populate(
  source_2007_mod_hl2mp
  URL https://github.com/Source-SDK-Base-Legacy-Project/source-sdk-2007/releases/download/${SOURCE_2007_BINARIES_VERSION}/source_2007_mod_hl2mp-${SOURCE_2007_BINARIES_VERSION}-win-x86.zip
  URL_HASH SHA256=c218fd5bee7ad0c4a1e466d7d53d6dec7a89d1a73a73e461db4ca842655bebc4
  SOURCE_DIR   ${DOWNLOADS_DIR}/source_2007_mod_hl2mp # Determine ou extraire les fichiers telecharges
)

FetchContent_Populate(
  source_2007_mod_lostcoast
  URL https://github.com/Source-SDK-Base-Legacy-Project/source-sdk-2007/releases/download/${SOURCE_2007_BINARIES_VERSION}/source_2007_mod_lostcoast-${SOURCE_2007_BINARIES_VERSION}-win-x86.zip
  URL_HASH SHA256=e4b285dba4521b2ce61874692dbd51dd76924602d73045efb8e3e9ec3074b304
  SOURCE_DIR   ${DOWNLOADS_DIR}/source_2007_mod_lostcoast # Determine ou extraire les fichiers telecharges
)

#=============
# Tools
#=============

# ExtractVPK

FetchContent_Populate(
  extractvpk_x64
  URL https://github.com/Source-SDK-Base-Legacy-Project/ExtractVPK/releases/download/${EXTRACTVPK_VERSION}/ExtractVPK-${EXTRACTVPK_VERSION}-win-x64.zip
  URL_HASH SHA256=6aa892af5c8ea1425554074e0117b8da8e3094d61041c6aafc993602de9260dd
  SOURCE_DIR   ${DOWNLOADS_DIR}/ExtractVPK/win-x64 # Determine ou extraire les fichiers telecharges
)

# SteamApps

FetchContent_Populate(
  steamapps_x64
  URL https://github.com/Source-SDK-Base-Legacy-Project/SteamApps/releases/download/${STEAMAPPS_VERSION}/SteamApps-${STEAMAPPS_VERSION}-win-x64.zip
  URL_HASH SHA256=41e6c5dbac337f24c22f0997fdfa69e2db3d05e339acceb2feaab0e3f89a377c
  SOURCE_DIR   ${DOWNLOADS_DIR}/SteamApps/win-x64 # Determine ou extraire les fichiers telecharges
)

# VPKEditCLI

FetchContent_Populate(
  vpkeditcli
  URL https://github.com/Source-SDK-Base-Legacy-Project/external-tools/releases/download/${VPKEDITCLI_VERSION}/VPKEdit-Windows-Standalone-CLI-msvc-Release.zip
  URL_HASH SHA256=4a2e9b62193c986aee2d47c5beeede8a1f4e0d79428148f688379ca3ca77bf3e
  SOURCE_DIR   ${DOWNLOADS_DIR}/VPKEditCLI # Determine ou extraire les fichiers telecharges
)

configure_file(
  "${CMAKE_SOURCE_DIR}/cmake/setup_env_vars.bat.in"
  "${CMAKE_SOURCE_DIR}/scripts/setup_env_vars.bat"
  @ONLY
)
