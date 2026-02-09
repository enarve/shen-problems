-- Problem 1.1.2
-- Swap a and b without intermediate variable

local a = 3
local b = 7

a = a + b
b = a - b
a = a - b

print(a, b)