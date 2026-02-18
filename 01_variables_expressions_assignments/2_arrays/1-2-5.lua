-- Problem 1.2.5
-- Find number of different items in sorted array

function count(arr)
    local checked = {}
    for _, x in ipairs(arr) do
        if not contains(checked, x) then
            table.insert(checked, x)
        end
    end
    return #checked
end

function contains(arr, item)
    for _, x in ipairs(arr) do
        if x == item then
            return true
        end
    end
    return false
end

-- Test
local arr = {1, 2, 3, 3, 4, 5, 6, 6, 6, 6, 7, 9}
print(count(arr))
