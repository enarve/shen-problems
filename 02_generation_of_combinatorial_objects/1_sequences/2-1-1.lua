-- Problem 2.1.1

function print_sequences(k, n)
    local sequence = {}
    local end_sequence = {}
    for i = 1, k do
        table.insert(sequence, 1)
        table.insert(end_sequence, n)
    end
    print(table.concat(sequence, ""))
    while not are_equal(sequence, end_sequence) do
        local pointer = k
        local value = sequence[pointer]
        if value < n then
            sequence[pointer] = value + 1
        else
            while value == n do
                sequence[pointer] = 1
                pointer = pointer - 1
                value = sequence[pointer]
            end
            if pointer > 0 then
                sequence[pointer] = sequence[pointer] + 1
                pointer = k
            end
        end
        print(table.concat(sequence, ""))
    end
end

function are_equal(a, b)
    if #a ~= #b then
        return false
    end
    for i = 1, #a do
        if a[i] ~= b[i] then
            return false
        end
    end
    return true
end

-- Test
print_sequences(3, 3)