-- Problem 1.2.4

function max(arr)
    local m = arr[1]
    for i = 1, #arr do
        if arr[i] > m then
            m = arr[i]
        end
    end
    return m
end

-- Test
local arr = {1, 3, 128, 6, 9, 35, 14, 0, -4, 21}
print(max(arr))