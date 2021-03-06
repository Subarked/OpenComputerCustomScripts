--run this to downlad the script to the tmp  folder
--wget -f https://github.com/Subarked/OpenComputerCustomScripts/raw/main/building.lua /tmp/building.lua
local robot = require("robot")
local component = require("component")
local sign = component.sign 

signTextOne = "Subarked's Pizzeria"
signTextTwo = "and Orhanage!"
signTextThree = "Your loss is"
signTextFour = "our sauce!"

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
for v = 1,5 do
		robot.forward()
end
robot.turnRight()
robot.forward()
robot.forward()
robot.turnLeft()
robot.forward()
robot.forward()
robot.turnAround()
robot.down()
robot.turnLeft()
robot.forward()
robot.forward()
robot.turnRight()
robot.select(4)
robot.place()
sign.setValue(signTextOne)
robot.turnLeft()
robot.back()
robot.turnRight()
robot.place()
sign.setValue(signTextTwo)
robot.turnRight()
robot.forward()
robot.turnLeft()
robot.place()
sign.setValue(signTextThree)
robot.turnRight()
robot.forward()
robot.turnLeft()
robot.place()
sign.setValue(signTextFour)
robot.turnLeft()
robot.forward()
robot.turnRight()
robot.up()
robot.turnAround()
robot.back()
robot.back()
robot.turnRight()
robot.back()
robot.back()
robot.turnLeft()for v = 1,5 do
		robot.back()
end
