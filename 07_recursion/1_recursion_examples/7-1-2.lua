-- Problem 7.1.2

function fact(n)
    if n == 0 then
        return 1
    else
        return n * fact(n-1)
    end
end

-- Test
print(fact(8))