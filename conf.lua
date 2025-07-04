function love.conf(t)
	io.stdout:setvbuf("no")
	-- Basic Setup --
	t.identity = nil             -- Save Folder
	t.appendidentity = false     -- Search files in source directory before save directory
	t.console = false            -- Attach a console to the game (Windows-only)
	t.externalstorage = false    -- Read files from external storage (Android-only)
	t.graphics.gammacorrect = false -- Enable gamma correction (if supported by the system)
	t.highdpi = true             -- Enable HighDPI on MacOS Retina
	t.version = "12.0"           -- LÖVE2D Target Version
	-- Window Setup --
	t.window.title = "Game Template"
	t.window.icon = nil
	t.window.width = 800
	t.window.height = 600
	t.window.borderless = false -- Removes the border of the window
	t.window.resizable = false -- Let the window be resizable
	t.window.usedpiscale = true -- Enables Automatic DPI Scaling
	t.window.vsync = 1       -- Enable V-Sync
	--- If you wanna setup anything else, please check this page:
	--- @see https://love2d.org/wiki/Config_Files
end
