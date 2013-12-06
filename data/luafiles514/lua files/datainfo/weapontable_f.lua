--Function #0
ReqWeaponName = function(index)

	if WeaponNameTable == nil then
		return ""
	end

	local NameMsg = WeaponNameTable[index]
	if NameMsg ~= nil then
		return NameMsg
	else
		return ""
	end

end

--Function #1
ReqWeaponHitWaveName = function(index)

	if WeaponHitWaveNameTable == nil then
		return ""
	end

	local NameMsg = WeaponHitWaveNameTable[index]
	if NameMsg ~= nil then
		return NameMsg
	else
		return ""
	end

end