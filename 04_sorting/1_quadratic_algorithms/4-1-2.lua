-- Problem 4.1.2

local function read_array()
    print("Input array to sort:")
    local input = io.read()
    -- string formatting
    local iter = string.gmatch(string.gsub(input, ",", " "), "%S+")
    -- making array
    local array = {}
    for value in iter do
        table.insert(array, tonumber(value))
    end
    return array
end

-- insertion sort
local function sort(array)
    local sorted = {}
    local k = 0
    -- loop invariant: first k items sorted
    while k < #array do
        k = k + 1
        local index_to_put_into = #sorted + 1
        for index, value in ipairs(sorted) do
            if value >= array[k] then
                index_to_put_into = index
                break
            end
        end
        table.insert(sorted, index_to_put_into, array[k])
        -- print(k .. " | " .. table.concat(sorted, " "))
    end
    return sorted
end

local array = read_array()
local sorted = sort(array)
print(table.concat(sorted, " "))