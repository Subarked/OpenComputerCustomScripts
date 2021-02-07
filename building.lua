--run this to downlad the script to the tmp  folder
--wget -f https://github.com/Subarked/OpenComputerCustomScripts/raw/main/building.lua /tmp/building.lua
local robot = require("robot")

--break old floor
robot.select(1)
for i = 1,3 do
	for v = 1,5 do
		if robot.detectDown()  then
			robot.swingDown(4,false)
		end
		robot.forward()
		if robot.detectDown()  then
			robot.swingDown(4,false)
		end
	end
	robot.turnRight()
	robot.forward()
	robot.turnRight()
	for v = 1,5 do
		if robot.detectDown()  then
			robot.swingDown(4,false)
		end
		robot.forward()
		if robot.detectDown()  then
			robot.swingDown(4,false)
		end
	end
	robot.turnLeft()
	robot.forward()
	robot.turnLeft()
end
for i = 1,3 do
	robot.turnRight()
	robot.back()
	robot.turnRight()
	for v = 1,5 do
		if robot.detectDown()  then
			robot.swingDown(4,false)
		end
		robot.back()
		if robot.detectDown()  then
			robot.swingDown(4,false)
		end
	end
	robot.turnLeft()
	robot.back()
	robot.turnLeft()
	for v = 1,5 do
		if robot.detectDown()  then
			robot.swingDown(4,false)
		end
		robot.back()
		if robot.detectDown()  then
			robot.swingDown(4,false)
		end
	end
end

--make new floor
for i = 1,3 do
	for v = 1,5 do
		if robot.detectDown() == false then
			robot.placeDown()
		end
		robot.forward()
		if robot.detectDown() == false then
			robot.placeDown()
		end
	end
	robot.turnRight()
	robot.forward()
	robot.turnRight()
	for v = 1,5 do
		if robot.detectDown() == false  then
			robot.placeDown()
		end
		robot.forward()
		if robot.detectDown() == false  then
			robot.placeDown()
		end
	end
	robot.turnLeft()
	robot.forward()
	robot.turnLeft()
end
for i = 1,3 do
	robot.turnRight()
	robot.back()
	robot.turnRight()
	for v = 1,5 do
		if robot.detectDown() == false  then
			robot.placeDown()
		end
		robot.back()
		if robot.detectDown() == false  then
			robot.placeDown()
		end
	end
	robot.turnLeft()
	robot.back()
	robot.turnLeft()
	for v = 1,5 do
		if robot.detectDown() == false  then
			robot.placeDown()
		end
		robot.back()
		if robot.detectDown() == false  then
			robot.placeDown()
		end
	end
end
--First 2 layers of wall
for i = 1,2 do
	robot.up()
	robot.select(2)
	for v = 1,5 do
		if robot.detectDown() == false  then
				robot.placeDown()
			end
			robot.forward()
			if robot.detectDown() == false  then
				robot.placeDown()
			end
		end
	robot.turnRight()
	for v = 1,1 do
			if robot.detectDown() == false  then
				robot.placeDown()
			end
			robot.forward()
			if robot.detectDown() == false  then
				robot.placeDown()
			end
	end
	robot.forward()
	robot.forward()
	robot.forward()
	for v = 1,1 do
			if robot.detectDown() == false  then
				robot.placeDown()
			end
			robot.forward()
			if robot.detectDown() == false  then
				robot.placeDown()
			end
	end
	robot.turnRight()
	for v = 1,5 do
			if robot.detectDown() == false  then
				robot.placeDown()
			end
			robot.forward()
			if robot.detectDown() == false  then
				robot.placeDown()
			end
	end
	robot.turnRight()
	for v = 1,5 do
			if robot.detectDown() == false  then
				robot.placeDown()
			end
			robot.forward()
			if robot.detectDown() == false  then
				robot.placeDown()
			end
	end
	robot.turnRight()
end
--Third floor of walls
for i = 1,1 do
	robot.up()
	robot.select(2)
	for v = 1,5 do
		if robot.detectDown() == false  then
				robot.placeDown()
			end
			robot.forward()
			if robot.detectDown() == false  then
				robot.placeDown()
			end
		end
	robot.turnRight()
	for v = 1,5 do
			if robot.detectDown() == false  then
				robot.placeDown()
			end
			robot.forward()
			if robot.detectDown() == false  then
				robot.placeDown()
			end
	end
	robot.turnRight()
	for v = 1,5 do
			if robot.detectDown() == false  then
				robot.placeDown()
			end
			robot.forward()
			if robot.detectDown() == false  then
				robot.placeDown()
			end
	end
	robot.turnRight()
	for v = 1,5 do
			if robot.detectDown() == false  then
				robot.placeDown()
			end
			robot.forward()
			if robot.detectDown() == false  then
				robot.placeDown()
			end
	end
	robot.turnRight()
end
--roof
robot.up()
robot.select(3)
for i = 1,3 do
	for v = 1,5 do
		if robot.detectDown() == false then
			robot.placeDown()
		end
		robot.forward()
		if robot.detectDown() == false then
			robot.placeDown()
		end
	end
	robot.turnRight()
	robot.forward()
	robot.turnRight()
	for v = 1,5 do
		if robot.detectDown() == false  then
			robot.placeDown()
		end
		robot.forward()
		if robot.detectDown() == false  then
			robot.placeDown()
		end
	end
	robot.turnLeft()
	robot.forward()
	robot.turnLeft()
end
for i = 1,3 do
	robot.turnRight()
	robot.back()
	robot.turnRight()
	for v = 1,5 do
		if robot.detectDown() == false  then
			robot.placeDown()
		end
		robot.back()
		if robot.detectDown() == false  then
			robot.placeDown()
		end
	end
	robot.turnLeft()
	robot.back()
	robot.turnLeft()
	for v = 1,5 do
		if robot.detectDown() == false  then
			robot.placeDown()
		end
		robot.back()
		if robot.detectDown() == false  then
			robot.placeDown()
		end
	end
end


