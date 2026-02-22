-- Problem 1.1.21

function print_squares(n)
    local square = 0
    print(square)
    for i = 1, n do
        local next = square + i + i - 1
        print(next)
        square = next
    end
end

-- Test
local n = 8
print_squares(n)