print("Hello world, from server!")

local a = game:GetService("ReplicatedStorage")

local testModule = require(a.test)

print(testModule())
