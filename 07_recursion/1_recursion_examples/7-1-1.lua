-- Problem 7.1.1

function fact(n)
    if n == 1 then
        return 1
    else
        return n * fact(n-1)
    end
end

-- Test
print(fact(20))