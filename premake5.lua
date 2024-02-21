include "SteamAudioExternals.lua"

require('vstudio')

workspace "SteamAudio"
  architecture "x64"
  startproject "core"
  language("C++")
  cppdialect("C++14")
--  version("4.5.2")

  filter("system:windows")
  defines {
    "IPL_OS_WINDOWS"
  }
  if (buildoptions) then
    buildoptions {
      "/EHsc", "/MP", "/W3", "/Zi",
      "/MTd", "/MT",
      "/RTC1",
      "/Ox",
      "/GL"
    }
  end

    configurations
  {
  "Debug",
  "Release",
  "Dist"
  }
  
  outputdir = "%{cfg.buildcfg}-%{cfg.system}-%{cfg.architecture}"