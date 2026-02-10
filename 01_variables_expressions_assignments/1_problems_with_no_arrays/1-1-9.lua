-- Problem 1.1.9

local function fib(n)
    if n == 0 then
        return 0
    elseif n == 1 then
        return 1
    else
        return fib(n-2) + fib(n-1)
    end
end

-- Test
print(fib(5))
print(fib(20))