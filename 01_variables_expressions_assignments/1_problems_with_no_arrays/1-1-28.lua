-- Problem 1.1.28
-- n -> number of pairs (x, y) such as x^2 + y^2 < n in integers

function count_solutions(n)
    local counter = 0
    for x = 0, n do
        for y = 0, n do
            if x * x + y * y < n then
                print(x, y)
                counter = counter + 1
            end
        end
    end
    return counter
end

-- Test
local n = 100
local result = count_solutions(n)
print(result)
