EXCEPTION_ItemProducer = {

	[11539] = MsgStrID.MSI_ITEM_PRODUCER_11539,
	[11540] = MsgStrID.MSI_ITEM_PRODUCER_11540,
	[11541] = MsgStrID.MSI_ITEM_PRODUCER_11541,
	[11542] = MsgStrID.MSI_ITEM_PRODUCER_11542,
	[11543] = MsgStrID.MSI_ITEM_PRODUCER_11543,
	[11544] = MsgStrID.MSI_ITEM_PRODUCER_11544,
	[11545] = MsgStrID.MSI_ITEM_PRODUCER_11545,
	[11546] = MsgStrID.MSI_ITEM_PRODUCER_11546,
}

--Function #0
GetExceptionItemProducer = function(ITID)
	if HaveExceptionItemProducer(ITID) == true then
		return EXCEPTION_ItemProducer[ITID]
	end
	return ""
end

--Function #1
HaveExceptionItemProducer = function(ITID)
	if EXCEPTION_ItemProducer ~= nil and EXCEPTION_ItemProducer[ITID] ~= nil then
		return true
	end
	return false
end