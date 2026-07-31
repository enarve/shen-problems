-- Problem 4.1.1

print("Sort #1")

function sort(arr)
    local sorted = {}
    while #arr > 0 do
        local min_value = arr[1]
        local min_index = 1
        for i = 1, #arr do
            if arr[i] < min_value then
                min_index = i
                min_value = arr[i]
            end
        end
        local selected = table.remove(arr, min_index)
        table.insert(sorted, selected)
    end

    return sorted
end

function print_arr(arr)
    print(table.concat(arr, ", "))
end

-- Test
local a = {4, 6, -1, 4, 3, 12, 8, 16, 0, 13}
print_arr(a)
local b = sort(a)
print_arr(b)


-- Alternative
print("\nSort #2")

function read_array()
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

function sort(arr)
    local n = #arr
    while n > 0 do
        for i = 1, n-1 do
	        if arr[i] > arr[i+1] then
                local a = arr[i+1]
                arr[i+1] = arr[i]
                arr[i] = a
            end
        end
	    n = n - 1
    end
    return arr
end

local array = read_array()
local sorted = sort(array)
print("\nSorted:\n" .. table.concat(sorted, " "))