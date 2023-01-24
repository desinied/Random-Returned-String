function DeepDictionarySearch(RootDictionary: table, Path: string, PathParser: string)
    if string.len(PathParser) ~= 1 then 
        error("DeepDictionarySearch has been given too manny/little PathParser characters as a paramater!\nPlease only use a 1 in length character PathParcer!") 
        return nil 
    end

    local PathKeys = string.split(Path, PathParser)
    if #PathKey == 0 then warn("DeepDictionarySearch has failed, there were no path keys to parse!") return nil end

    local CurrentKey = RootDictionary
    for i = 1, #PathKeys do
        CurrentKey = CurrentKey[PathKeys[i]]
    end

    return CurrentKey
end
