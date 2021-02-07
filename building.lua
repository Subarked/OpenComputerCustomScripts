local robot = require("robot")

--break old floor
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
			robot.swingDown(4,false)
		end
		robot.forward()
		if robot.detectDown() == false then
			robot.swingDown(4,false)
		end
	end
	robot.turnRight()
	robot.forward()
	robot.turnRight()
	for v = 1,5 do
		if robot.detectDown() == false  then
			robot.swingDown(4,false)
		end
		robot.forward()
		if robot.detectDown() == false  then
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
		if robot.detectDown() == false  then
			robot.swingDown(4,false)
		end
		robot.back()
		if robot.detectDown() == false  then
			robot.swingDown(4,false)
		end
	end
	robot.turnLeft()
	robot.back()
	robot.turnLeft()
	for v = 1,5 do
		if robot.detectDown() == false  then
			robot.swingDown(4,false)
		end
		robot.back()
		if robot.detectDown() == false  then
			robot.swingDown(4,false)
		end
	end
end




