function Create(className: string, parent: any, properties: table, return_object: boolean?)	
	local _ = Instance.new(className)
	
	for name , value in properties do
		_[name] = value
	end
	
	_.Parent = parent
	
	if return_object then
		return _
	end
end
