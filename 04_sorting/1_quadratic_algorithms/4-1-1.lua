-- Problem 4.1.1

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