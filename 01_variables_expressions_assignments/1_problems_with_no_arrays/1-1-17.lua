-- Problem 1.1.17
-- Prove, that returns 2*gcd(a, b)

local function euclide(a, b) 
    local m = a
    local n = b
    local u = b
    local v = a

    while not(m == 0 and n == 0) do
        if m > n then
            m = m - n; v = v + u
        else
            n = n - m; u = u + v
        end
    end

    if m == 0 then
        return v
    else
        return u
    end
end