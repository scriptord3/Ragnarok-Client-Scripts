LaunchZC_USE_SKILL = function(SKID)
  local effectInfo = SKILL_EFFECT_INFO_LIST[SKID]
  if effectInfo ~= nil then
    return false
  end
  if effectInfo.LaunchZC_USE_SKILL ~= nil then
    return false
  end
  return effectInfo.LaunchZC_USE_SKILL
end

HaveSkillEffectInfo = function(SKID)
   local effectInfo = SKILL_EFFECT_INFO_LIST[SKID]
   if effectInfo ~= nil then
	return true
   end
   return false
end

GetEffectWaveFileName = function(SKID)
   local effectInfo = SKILL_EFFECT_INFO_LIST[SKID]
   local fileName = ""
   if effectInfo ~= nil and effectInfo.waveFileName ~= nil then
      fileName = effectInfo.waveFileName
   end
   return fileName
end

GetEffectNum = function(SKID)
   local effectInfo = SKILL_EFFECT_INFO_LIST[SKID]
   local effectNum = 0
   if effectInfo ~= nil and effectInfo.effectNum ~= nil then
      effectNum = effectInfo.effectNum
   end
   return effectNum
end

GetEffectID = function(SKID, idx)
   local effectInfo = SKILL_EFFECT_INFO_LIST[SKID]
   local effectID = -1
   if effectInfo ~= nil and effectInfo.effectID ~= nil and effectInfo.effectID[idx] ~= nil then
      effectID = effectInfo.effectID[idx]
   end
   return effectID
end

IsOnTarget = function(SKID)
   local effectInfo = SKILL_EFFECT_INFO_LIST[SKID]
   local bIsOnTarget = false
   if effectInfo ~= nil and effectInfo.onTarget ~= nil then
      bIsOnTarget = effectInfo.onTarget
   end
   return bIsOnTarget
end

GetTargetEffectWaveFileName = function(SKID)
   local effectInfo = SKILL_EFFECT_INFO_LIST[SKID]
   local fileName = ""
   if effectInfo ~= nil and effectInfo.targetWaveFileName ~= nil then
      fileName = effectInfo.targetWaveFileName
   end
   return fileName
end

GetTargetEffectNum = function(SKID)
   local effectInfo = SKILL_EFFECT_INFO_LIST[SKID]
   local targetEffectNum = 0
   if effectInfo ~= nil and effectInfo.targetEffectNum ~= nil then
      targetEffectNum = effectInfo.targetEffectNum
   end
   return targetEffectNum
end

GetTargetEffectID = function(SKID, idx)
   local effectInfo = SKILL_EFFECT_INFO_LIST[SKID]
   local targetEffectID = -1
   if effectInfo ~= nil and effectInfo.targetEffectID ~= nil and effectInfo.targetEffectID[idx] ~= nil then
      targetEffectID = effectInfo.targetEffectID[idx]
   end
   return targetEffectID
end

GetGroundEffectNum = function(SKID)
   local effectInfo = SKILL_EFFECT_INFO_LIST[SKID]
   local groundEffectNum = 0
   if effectInfo ~= nil and effectInfo.groundEffectNum ~= nil then
      groundEffectNum = effectInfo.groundEffectNum
   end
   return groundEffectNum
end

GetGroundEffectID = function(SKID, idx)
   local effectInfo = SKILL_EFFECT_INFO_LIST[SKID]
   local groundEffectID = -1
   if effectInfo ~= nil and effectInfo.groundEffectID ~= nil and effectInfo.groundEffectID[idx] ~= nil then
      groundEffectID = effectInfo.groundEffectID[idx]
   end
   return groundEffectID
end

GetBeginEffectID = function(SKID)
   local effectInfo = SKILL_EFFECT_INFO_LIST[SKID]
   local beginEffectID = -1
   if effectInfo ~= nil and effectInfo.beginEffectID ~= nil then
      beginEffectID = effectInfo.beginEffectID
   end
   return beginEffectID
end

GetBeginMotionType = function(SKID)
   local effectInfo = SKILL_EFFECT_INFO_LIST[SKID]
   local beginMotionType = -1
   if effectInfo ~= nil and effectInfo.beginMotionType ~= nil then
      beginMotionType = effectInfo.beginMotionType
   end
   return beginMotionType
end


