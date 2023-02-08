local function DeepSearch (SearchInput: Instance, Name: string, OptionalClass: string?)

	local descendants = SearchInput:GetDescendants()

	if not descendants or #descendants == 0 then
		warn("DeepSearch failed: No descendants found")
		return
	end

	for _, current in descendants do
		if (OptionalClass and current:IsA(OptionalClass)) or (not OptionalClass) then
			if current.Name == Name then
				return current
			end
		end
	end

	warn(string.format('Infinite yield on "DeepSearch";\n    "%s" not found in %s', Name, SearchInput.Name))
end
