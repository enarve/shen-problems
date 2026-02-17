-- Problem 1.2.3

function assign_arr(old, new)
    for i = 1, #new do
        old[i] = new[i]
    end
    return old
end

function print_arr(arr)
    print(table.concat(arr, ", "))
end

-- Test
local old = {0, 0, 0, 0, 0}
local new = {1, 2, 3, 4, 5}
print_arr(old)
-- assigning to function result for test purpose
-- no assignments in function body
old = assign_arr(old, new)
print_arr(old)