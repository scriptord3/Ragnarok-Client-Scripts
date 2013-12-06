WHAT_CONTROL_TO_VIEW = {

	VIEW_NONE = 0,
	VIEW_EDITBOX = 1,
	VIEW_ITEMCTRL = 2,
	VIEW_SKILLCTRL = 3,
	VIEW_ITEM_EDIT = 4
}

FOR_WHAT_TYPE = {

	FOR_HP = 1,
	FOR_SP = 2
}

ITEM_SELECT_LIST = {

	[1] = {

		strMsg = MsgStrID.MSI_EX_MACRO_ITEM_1,
		whatToView = WHAT_CONTROL_TO_VIEW.VIEW_EDITBOX,
		forWhatType = FOR_WHAT_TYPE.FOR_HP,
		bViewPercentage = true
	},

	[2] = {

		strMsg = MsgStrID.MSI_EX_MACRO_ITEM_2,
		whatToView = WHAT_CONTROL_TO_VIEW.VIEW_EDITBOX,
		forWhatType = FOR_WHAT_TYPE.FOR_SP,
		bViewPercentage = true
	}
}

--Function #0
GetItemSelectInfo = function(nIndex)
	local obj = ITEM_SELECT_LIST[nIndex]
	if obj ~= nil then
		return obj.strMsg, obj.whatToView, obj.bViewPercentage
	end
	return "", WHAT_CONTROL_TO_VIEW.VIEW_NONE, false
end

CombatItemList = {}
NonCombatITemList = {}

--Function #1
InsertNewCombatItemInfo = function(self, nForWhatType, nPercentage, nItemID1, nItemID2)
	local nListSize = getTableSize(self)
	self[nListSize + 1] = {}
	self[nListSize + 1].nForWhatType = nForWhatType
	self[nListSize + 1].nPercentage = nPercentage
	self[nListSize + 1].nItemID1 = nItemID1
	self[nListSize + 1].nItemID2 = nItemID2
end

--Function #2
GetItemInfo = function(self, nIndex)
	local obj = self[nIndex]
	if obj ~= nil then
		return obj.nForWhatType, obj.nPercentage, obj.nItemID1, obj.nItemID2
	end
	return 0, -1, -1, -1
end

--Function #3
GetCombatItemInfo = function(nIndex)
	return GetItemInfo(CombatItemList, nIndex)
end

--Function #4
GetNonCombatItemInfo = function(nIndex)
	return GetItemInfo(NonCombatITemList, nIndex)
end

BuffItemList = {}

--Function #5
GetBuffItemInfo = function(nIndex)
	local obj = BuffItemList[nIndex]
	if obj ~= nil then
		return obj.nItemID, obj.bReuseWhenDie, obj.nReuseTime
	end
	return -1, false, 0
end

--Function #6
InsertNewBuffItemInfo = function(itemID, nTime, bReuseWhenDie)
	local nListSize = getTableSize(BuffItemList)
	BuffItemList[nListSize + 1] = {}
	BuffItemList[nListSize + 1].nItemID = itemID
	BuffItemList[nListSize + 1].nReuseTime = nTime
	BuffItemList[nListSize + 1].bReuseWhenDie = bReuseWhenDie
end

AutoEquipmentList = {}

--Function #7
InsertNewAutoEquipmentInfo = function(strEnemyName)
	local nListSize = getTableSize(AutoEquipmentList)
	AutoEquipmentList[nListSize + 1] = {}
	AutoEquipmentList[nListSize + 1].strEnemyName = strEnemyName
	AutoEquipmentList[nListSize + 1].equipmentInfo = {}
end

--Function #8
InsertNewEquipmentInfo = function(tableIdx, idx, itemID, refiningLevel, nSlot1, nSlot2, nSlot3, nSlot4)
	local obj = AutoEquipmentList[tableIdx]
	if obj ~= nil then
		obj.equipmentInfo[idx] = {}
		obj = obj.equipmentInfo[idx]
		obj.nItemID = itemID
		obj.nRefiningLevel = refiningLevel
		obj.nSlot = {nSlot1, nSlot2, nSlot3, nSlot4}
	end
end

--Function #9
GetAutoEquipmentInfo = function(tableIdx)
	local obj = AutoEquipmentList[tableIdx]
	if obj ~= nil then
		return obj.strEnemyName
	end
	return ""
end

--Function #10
GetEquipmentInfo = function(tableIdx, idx)
	local obj = AutoEquipmentList[tableIdx]
	if obj ~= nil then
		obj = obj.equipmentInfo[idx]
		if obj ~= nil then
			return obj.nItemID, obj.nRefiningLevel, obj.nSlot[1], obj.nSlot[2], obj.nSlot[3], obj.nSlot[4]
		end
	end
	return -1, 0, 0, 0, 0, 0
end