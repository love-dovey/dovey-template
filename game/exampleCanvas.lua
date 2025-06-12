local ExampleCanvas = Canvas:extend({
	_name = "ExampleCanvas"
})

function ExampleCanvas:init()
	Log.info("Initialised "..tostring(ExampleCanvas._name))
	return self
end

return ExampleCanvas