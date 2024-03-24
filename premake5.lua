project "D3D12MemoryAllocator"
kind "StaticLib"
language "C++"
cppdialect "C++14"
targetdir "Binaries/%{cfg.buildcfg}"
staticruntime "off"

files {"include/**.h", "src/**.cpp", "src/**.h"}
includedirs {"include", "src"}

targetdir("%{wks.location}/Binaries/" .. outputdir .. "/%{prj.name}")
objdir("%{wks.location}/Binaries/Intermediates/" .. outputdir .. "/%{prj.name}")

filter "configurations:Debug"
defines {"DEBUG"}
runtime "Debug"
symbols "On"

filter "configurations:Release"
defines {"RELEASE"}
runtime "Release"
optimize "On"
symbols "On"

filter "configurations:Dist"
defines {"DIST"}
runtime "Release"
optimize "On"
symbols "Off"

