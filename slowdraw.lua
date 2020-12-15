function init()
	frame_metro = metro.init{
		time = 1 / 16,
		event = function()
			redraw()
		end
	}
	frame_metro:start()
end

function redraw()
	screen.clear()
	for x = 1, 45 do
		for y = 1, 24 do
			screen.rect(x * 3, y * 3 - 1, 1, 1)
			screen.level(2)
			screen.fill()
		end
	end
	screen.update()
end

function cleanup()
	if frame_metro ~= nil then
		frame_metro:stop()
	end
end