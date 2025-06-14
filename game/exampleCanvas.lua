local ExampleCanvas = Canvas:extend({
	_name = "ExampleCanvas"
})

function ExampleCanvas:init()
	Log.info("Initialised "..tostring(ExampleCanvas._name))
	local test = TextDisplay:new(0, 0, "dövey2d is an extremely experimental\nextension for LÖVE2D!")
		:setFont(love.graphics.newFont(24))
		:setAlignment("CENTER")
	self:add(test)
	return self
end

return ExampleCanvas