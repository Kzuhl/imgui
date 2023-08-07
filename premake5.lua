project "ImGui"
	kind "StaticLib"
	language "C++"
	staticruntime "on"

	targetdir ("bin/" .. outputdir .. "/%{prj.name}")
	objdir ("bin-int/" .. outputdir .. "/%{prj.name}")

	files
	{
		"imgui.h",
		"imgui.cpp",
		
		"imconfig.h",	
		"imgui_internal.h",
		"imgui_rectpack.h",
		"imgui_textedit.h",
		"imgui_truetype.h",		
		"imgui_draw.cpp",
		"imgui_tables.cpp",
		"imgui_widgets.cpp",		
		"imgui_demo.cpp"
	}

	filter "system:windows"
		systemversion "latest"
		cppdialect "C++17"
	
	filter "system:linux"
		pic "On"
		systemversion "latest"
		cppdialect "C++17"

	filter "configurations:Debug"
		runtime "Debug"
		symbols "on"

	filter "configurations:Release"
		runtime "Release"
		optimize "on"

    filter "configurations:Dist"
		runtime "Release"
		optimize "on"
        symbols "off"