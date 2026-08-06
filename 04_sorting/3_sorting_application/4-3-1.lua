-- Problem 4.3.1
-- Count different numbers in array with o(nlogn)
-- Sort array first and then count unique items

local function read_array()
    print("Enter array values:")
    local input = io.read()
    local iter = string.gmatch(string.gsub(input, ",", " "), "%S+")
    local array = {}
    for i in iter do
        table.insert(array, tonumber(i))
    end
    return array
end

local function qsort(arr)
    -- base case
    if #arr <=1 then
	    return arr
    end
    -- find pivot
    local pivot_index = math.random(1, #arr)
    local pivot_value = arr[pivot_index]
    local left_part = {}
    local right_part = {}
    -- when value is equal to pivot, flag changes
    -- to ensure even distribution between left and right parts
    local flag = false
    for _, v in ipairs(arr) do
        if v == pivot_value then
	        if flag then
                table.insert(left_part, v)
		        flag = false		
            else 
                table.insert(right_part, v)
                flag = true
			end
        elseif v < pivot_value then
            table.insert(left_part, v)
        else
            table.insert(right_part, v)
        end
    end
    -- sort parts recursively
    left_part = qsort(left_part)
    right_part = qsort(right_part)
    local new_arr = {}
    -- return sorted parts
    for i = 1, #left_part  do
        new_arr[i] = left_part[i]
    end
    for i = 1, #right_part  do
        new_arr[#left_part+i] = right_part[i]
    end
    return new_arr
end

local function count_unique(arr)
    -- sort array
    local sorted = qsort(arr)
    print("Sorted:")
    print(table.concat(sorted, " "))
    -- count different values
    local counter = 0
    local previous_value = nil
    for _, value in ipairs(sorted) do
        if value ~= previous_value then
			counter = counter + 1
			previous_value = value		
        end
    end
    return counter
end

local arr = read_array()
local number = count_unique(arr)
print("Number of unique elements: " .. number)
