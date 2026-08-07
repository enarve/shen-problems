-- Problem 4.3.2

local function read_segments()
    local input
    local points = {}
    print("Enter segments: ")
    while true do
        input = io.read()
        if input == "" then
	        break
        end
        local segment_iter = string.gmatch(string.gsub(input, ",", " "), "%S+")
        local segment = {}
        for i in segment_iter do
            table.insert(segment, tonumber(i))
        end
        if #segment == 2 then
            if segment[1] > segment[2] then
                local temp = segment[1]
                segment[1] = segment[2]
                segment[2] = temp
            end
            for i, v in ipairs(segment) do
                local point = { v, i }
				table.insert(points, point)
            end
            local segment_description = segment[1] .. ", " .. segment[2]
            print("Added [" .. segment_description .. "]! Segments total: " .. #points // 2)
            if #points == 1 then
                print("Add more segments or press enter to run")
            end
        else
            print("Segment must contain two numbers")
        end
    end
    return points
end

local function count_max_layers(points)
    local count = 0
    local max_count = 0
    if #points ~= 0 then
        for _, point in ipairs(points) do
    	    if point[2] == 1 then
                count = count + 1
                if count > max_count then
                    max_count = count
                end
            else 
                count = count - 1
            end
        end
    end
    return max_count
end

local function sort(points)
    if #points <= 1 then
	    return points
    end
    local mid_index = #points // 2
    local left_part = { table.unpack(points, 1, mid_index) }
    local right_part = { table.unpack(points, mid_index + 1, #points) }
    local sorted_left = sort(left_part)
    local sorted_right = sort(right_part)
    local merged = {}
    while #sorted_left > 0 or #sorted_right > 0 do
        local item
        if #sorted_left == 0 then
            item = table.remove(sorted_right, 1)
        elseif #sorted_right == 0 then
            item = table.remove(sorted_left, 1)
        elseif sorted_left[1][1] < sorted_right[1][1] then
            item = table.remove(sorted_left, 1)
        elseif sorted_left[1][1] == sorted_right[1][1] then
	        if sorted_left[1][2] < sorted_right[1][2] then
				item = table.remove(sorted_left, 1)				
            else 
                item = table.remove(sorted_right, 1)
			end
        else
            item = table.remove(sorted_right, 1)
        end
		table.insert(merged, item)
    end
    return merged
end

local points = read_segments()
print("Running...")
local sorted = sort(points)
print("Maximum layer number: " .. count_max_layers(sorted))
