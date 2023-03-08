local hpLoss = 0.02
local minHP = 0.3
local unFair = false
local activated = true
local longNotes = false
--Variables:
--hpLoss: The HP you loose when the enemy hits a note
--minHP: The minimum HP value you can have, if the value is equal or less than this variable it won't drain any health (Remember that the health shit is 0 to 2)
--unFair: If true, the enemy drains HP with the long notes as well, if it is deactivated, the enemy won't drain health with long notes.
--Activated: If the value is true, the script runs, if not, it won't lol 

--Remember: *0.023* is the default hit HP gain and *0.0475* is the default miss HP decrease!
function opponentNoteHit(id, direction, noteType, isSustainNote)
    if activated == true then --Checks if it is activated
        if getProperty('health') > minHP then --Checks if the health is less or equal than the minHP value
            if unFair == true then --Checks if the unfair value is true
                setProperty('health',getProperty('health')-hpLoss) --HP Loss shit
            end
            if unFair == false then --Checks if the unfair value is false
                if isSustainNote == false then --Checks if the note is a long note (This only drains health with the actual note, not with the *sustain*)
                    setProperty('health',getProperty('health')-hpLoss) --HP Loss shit
                end
            end
        end
    end
end
