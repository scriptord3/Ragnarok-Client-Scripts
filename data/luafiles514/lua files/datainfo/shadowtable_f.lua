ReqshadowFactor = function(index)
  if ShadowFactorTable == nil then
    return -1
  end
  if ShadowFactorTable[index] ~= nil then
    return ShadowFactorTable[index]
  else
    return -1
  end
end