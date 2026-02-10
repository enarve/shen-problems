-- Problem 1.1.7
-- a >= 0, d > 0; a // d, a % d = ?

local function divmod(a, d)
    local b = a
    local c = 0

    while b >= d do
        b = b - d
        c = c + 1
    end

    return c, b
end

-- Test
local cases = {{7, 3}, {4, 2}, {26, 8}}
for _, case in ipairs(cases) do
    local a = case[1]
    local d = case[2]
    print(divmod(a, d))
end