-- Problem 1.1.14

local function euclide_mod(a, b)
    local m = a
    local n = b
    while not ((m == 0) or (n == 0)) do
        if m >= n then
            m = m % n
        else
            n = n % m
        end
    end
    if m == 0 then
        return n
    else 
        return m
    end

end

-- Test
print(euclide_mod(32, 6))
print(euclide_mod(14, 84))
print(euclide_mod(4, 8))
print(euclide_mod(32, 16))
print(euclide_mod(0, 9))