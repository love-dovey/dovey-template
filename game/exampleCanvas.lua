local ExampleCanvas = Canvas:extend({
	_name = "ExampleCanvas"
})

function ExampleCanvas:init()
	Log.info("Initialised "..tostring(ExampleCanvas._name))
	local limit = love.graphics.getWidth() -- for the sake of the example.
	local test = TextDisplay:new(0, 0, "dövey2d is an extremely experimental\nextension for LÖVE2D!", limit)
		:setFont(love.graphics.newFont(24))
		:setAlignment("CENTER")
	self:add(test)
	return self
end

return ExampleCanvas
