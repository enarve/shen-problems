-- Problem 1.1.18
-- gcd(2a, 2b) = 2 * gcd(a, b)
-- gcd(2a, b) = gcd(a, b) if b is odd
-- in O(logn)

local function euclide(a, b)
    local count = 0
    local m = a
    local n = b
    while not (m == 0 or n == 0) do
        if m % 2 == 0 and n % 2 == 0 then
            return 2 * euclide(m // 2, n // 2)
        elseif n % 2 == 0 then
            return euclide(m, n // 2)
        elseif m % 2 == 0 then
            return euclide(m // 2, n)
        end
        if m > n then
            count = count + 1
            m = m - n
        else
            count = count + 1
            n = n - m
        end
    end
    if m == 0 then
        return n
    elseif n == 0 then
        return m
    end
end

-- Test
print(euclide(4, 8))
print(euclide(32, 16))
print(euclide(0, 9))
print(euclide(78, 45))