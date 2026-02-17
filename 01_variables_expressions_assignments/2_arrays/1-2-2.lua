-- Problem 1.2.2

function count_zeroes(arr)
    local counter = 0
    for _, x in ipairs(arr) do
        if x == 0 then
            counter = counter + 1
        end
    end
    return counter
end

-- Test
local arr = {1, 0, 1, 1, 1, 0, 1, 0, 0}
print(count_zeroes(arr))