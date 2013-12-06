SprEditInfoList = {}

--Function #0
GetSprEditInfo = function(strJobIDnSprName, nCurAction, nCurMotion)
  obj = SprEditInfoList[strJobIDnSprName]
  local x = 0
  local y = 0
  local oow = 0
  local bFlip = false
  local bHide = false
  if obj ~= nil then
    obj = obj[nCurAction]
    if obj ~= nil then
      obj = obj[nCurMotion]
      if obj ~= nil then
        if obj.x ~= nil then
          x = obj.x
        end
        if obj.y ~= nil then
          y = obj.y
        end
        if obj.oow ~= nil then
          oow = obj.oow
        end
        if obj.bFlip ~= nil then
          bFlip = obj.bFlip
        end
        if obj.bHide ~= nil then
          bHide = obj.bHide
        end
      end
    end
  end
  return x, y, oow, bFlip, bHide
end

--Function #1
GetRecommendList = function(nIdx)
  obj = SprRecommendList
  if obj ~= nil then
    obj = obj[nIdx]
    if obj ~= nil then
      return true
    else
      return false
    end
  end
  return false
end

--Function #2
IsExistTable = function(strJobIDnSprName)
  obj = SprEditInfoList[strJobIDnSprName]
  if obj ~= nil then
    return true
  end
  return false
end

--Function #3
GetSavedActionNum = function(strJobIDnSprName)
  obj = SprEditInfoList[strJobIDnSprName]
  if obj ~= nil then
    obj = obj.savedActionNum
    if obj ~= nil then
      return obj
    end
  end
  return 0
end

--Function #4
SetSavedActionNum = function(strJobIDnSprName, savedActionNum)
  if SprEditInfoList[strJobIDnSprName] == nil then
    SprEditInfoList[strJobIDnSprName] = {}
  end
  SprEditInfoList[strJobIDnSprName].savedActionNum = savedActionNum
end

--Function #5
SetSprEditInfo = function(strJobIDnSprName, nActionNum, nMotionNum, xGap, yGap, oowGap, bFlip, bHide)
  objTable = SprEditInfoList[strJobIDnSprName]
  if objTable == nil then
    objTable = {}
  end
  if objTable[nActionNum] == nil then
    objTable[nActionNum] = {}
  end
  if objTable[nActionNum][nMotionNum] == nil then
    objTable[nActionNum][nMotionNum] = {}
  end
  if xGap ~= nil and xGap ~= 0 then
    objTable[nActionNum][nMotionNum].x = xGap
  end
  if yGap ~= nil and yGap ~= 0 then
    objTable[nActionNum][nMotionNum].y = yGap
  end
  if oowGap ~= nil and oowGap ~= 0 then
    objTable[nActionNum][nMotionNum].oow = oowGap
  end
  if bFlip ~= nil and bFlip == true then
    objTable[nActionNum][nMotionNum].bFlip = bFlip
  end
  if bHide ~= nil and bHide == true then
    objTable[nActionNum][nMotionNum].bHide = bHide
  end
end