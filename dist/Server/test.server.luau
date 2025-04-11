print("Hello world, from server!")

local b = require(game:GetService('ReplicatedStorage').Shared.test)

print(b())

local function add(x: number, y: number, z: number): number
	return x + y + z
end

add(1, 2, 3)
