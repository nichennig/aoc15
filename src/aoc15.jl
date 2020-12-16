module aoc15

export spoken, playUpToTurn

# Write your package code here.
function spoken(inputs, turn)
    if turn <= length(inputs)
        return inputs[turn]
    end
    # play the first rounds with the given input
    turnMemory = Dict() # the key is a spoken number and the value is the last round this key is spoken
    latestTurn = length(inputs)
    latestNumber = inputs[latestTurn]
    for i in eachindex(inputs)
        turnMemory[inputs[i]] = i
    end
    # play the remaining rounds
    return playUpToTurn(turnMemory, latestNumber, latestTurn, turn)
end

function playUpToTurn(relevantTurns, currentNumber, from, upTo)
    result = 0
    while from < upTo
        roundResult = 0
        if haskey(relevantTurns, currentNumber)
            roundResult = from - relevantTurns[currentNumber]
        end
        relevantTurns[currentNumber] = from
        from = from + 1
        currentNumber = roundResult
        result = roundResult
    end
    return result
end

end
