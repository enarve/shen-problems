-- Problem 2.1.2

function print_sequences(k, n)
    local sequence = {}
    for i = 1, k do
        table.insert(sequence, 1)
    end
    print(table.concat(sequence, ""))
    while not is_end_sequence(sequence, n) do
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

function is_end_sequence(sequence, n)
    for i = 1, #sequence do
        if sequence[i] ~= n then
            return false
        end
    end
    return true
end

-- Test
print_sequences(3, 3)