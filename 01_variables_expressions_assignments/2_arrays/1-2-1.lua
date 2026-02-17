-- Problem 1.2.1

function fill_with_zeroes(arr)
    for i = 1, #arr do
        arr[i] = 0
    end
    return arr
end

function print_arr(arr)
    print(table.concat(arr, ", "))
end

-- Test
local arr = {1, 1, 1, 1, 1, 1, 1}
print_arr(fill_with_zeroes(arr))

