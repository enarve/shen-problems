-- Problem 4.2.1

function read_array()
    print("Enter array to sort:")
    local arr = {}
    local input = io.read()
    local iter = string.gmatch(string.gsub(input, ",", " "), "%S+")
    for i in iter do
        table.insert(arr, tonumber(i))
    end
    return arr
end

function sort(arr)
    -- base case
    if #arr <= 1 then
        return arr
    end
    -- sort two halves recursively
    local mid_index = #arr // 2
    local left_part = sort({ table.unpack(arr, 1, mid_index) })
    local right_part = sort({ table.unpack(arr, mid_index + 1, #arr) })
    -- merge
    local sorted = {}
    while #left_part > 0 or #right_part > 0 do
        local item
        if #left_part == 0 then
            item = table.remove(right_part, 1)
        elseif #right_part == 0 then
            item = table.remove(left_part, 1)
        elseif left_part[1] <= right_part[1] then
            item = table.remove(left_part, 1)
        else
            item = table.remove(right_part, 1)
        end
        table.insert(sorted, item)
    end
    return sorted
end

local arr = read_array()
local sorted = sort(arr)
print("Sorted: ")
print(table.concat(sorted, " "))