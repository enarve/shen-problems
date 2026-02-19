-- Problem 1.2.10

function inverse(arr)
    for i = 1, #arr / 2 do
        local a = arr[i]
        arr[i] = arr[#arr-i+1]
        arr[#arr-i+1] = a
    end
    return arr
end

function print_arr(arr)
    print(table.concat(arr, ", "))
end

-- Test
local arr = {5, 7, 9, 1, 0, -39, 2, 17}
print_arr(arr)
inverse(arr)
print_arr(arr)
