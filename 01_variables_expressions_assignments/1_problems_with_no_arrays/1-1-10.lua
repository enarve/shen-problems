-- Problem 1.1.10
-- fib in O(logn) operations with matrix

local function mt_mult(a, b)
    local res = {}
    -- print(#a[1], #b)
    if #a[1] == #b then
        -- for each row i
        for i, _ in ipairs(a) do
            res[i] = {}
            -- for each coordinate j in row
            for j, _ in ipairs(b) do
                res[i][j] = 0
                -- summarize products of a_ik and b_kj
                for k, _ in ipairs(b) do
                    res[i][j] = res[i][j] + a[i][k] * b[k][j]
                end
            end
        end
    else
        print("Error")
    end
    return res
end

local function mt_pow(a, n)
    if n == 1 then
        return a
    elseif n % 2 == 0 then
        local b = mt_pow(a, n/2)
        return mt_mult(b, b)
    else
        local b = mt_pow(a, (n-1)/2)
        return mt_mult(mt_mult(b, b), a)
    end
end

local function fib(n)
    local base = {{1, 0}}
    local mt = {{1, 1}, {1, 0}}
    return mt_mult(base, mt_pow(mt, n-1))
end

local function print_table(table)
    for _, row in ipairs(table) do
        for _, col in ipairs(row) do
            print(col)
        end
        print()
    end
end

-- Test

-- local table = mt_mult({{1, 2}}, {{1, 0}, {0, 1}})
-- print_table(table)

print(fib(5)[1][1])
print(fib(20)[1][1])