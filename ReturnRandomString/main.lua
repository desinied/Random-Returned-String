local Bytes = { -- QWERTYUIOPASDFGHJKLZXCVBNMqwertyuiopasdfghjklzxcvbnm1234567890 in bytes
    81,87,69,82,84,89,85,73,79,80,65,83,68,70,
    71,72,74,75,76,90,88,67,86,66,78,77,113,119,
    101,114,116,121,117,105,111,112,97,115,100,102,
    103,104,106,107,108,122,120,99,118,98,110,109,49,
    50,51,52,53,54,55,56,57,48
}

math.randomseed(tick() * tick())

function ReturnRandomString(length: number)
    local temporary = ""
    for i = 1, length do
        temporary = temporary .. string.char(Bytes[math.random(#Bytes)])
    end

    return temporary
end
