Engine = require("dovey.engine")

function love.load()
	-- Set the max framerate the game is allowed to reach.
	-- this will be affected by your VSync settings too, if VSync is enabled
	-- don't expect the game to go higher than your monitor's refresh rate.
	-- NOTE: If this is set to 0, then the FPS will be uncapped
	Engine.maxFPS = 60
	Engine.begin("game.exampleCanvas")

	-- Example overlay.
	local displayFPS = Engine.maxFPS
	local version = tostring(Engine.getVersion())
	local _timer = 0.0
	Engine.addLayered({ -- Can be a table or a metatable.
		_name = "Watermark",
		draw = function()
			if _timer > 1.0 then
				_timer = 0.0
				_lastFPS = love.timer.getFPS()
			end
			love.graphics.push("all")
			love.graphics.print((
				"FPS "..tostring(displayFPS).." - "..version
			), 5, 5)
			love.graphics.pop()
			_timer = _timer + love.timer.getDelta()
		end,
	})
end
