function DeepDictionarySearch(RootDictionary: table, Path: string)
    local PathKeys = string.split(Path, ".")
	
	if #PathKey == 0 then print("DeepDictionarySearch has failed, there were no path keys to parse!") return nil end
	
	local CurrentKey = RootDictionary
	for i = 1, #PathKeys do
		CurrentKey = CurrentKey[PathKeys[i]]
	end
	
	return CurrentKey
end
