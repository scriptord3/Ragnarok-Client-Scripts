FirstAttackSkillList = {}
AttackSkillList = {}
BuffSkillList = {}
InsertNewSkillInfo = function(self, skillID, level, nTime)
   local nListSize = getTableSize(self)
   self[nListSize + 1] = {}
   self[nListSize + 1].nSkillID = skillID
   self[nListSize + 1].nSkillLevel = level
   self[nListSize + 1].nReuseTime = nTime
end

GetFirstAttackSkillInfo = function(nIndex)
   local obj = FirstAttackSkillList[nIndex]
   if obj ~= nil then
      return obj.nSkillID, obj.nSkillLevel
   end
   return -1, 1
end

GetAttackSkillInfo = function(nIndex)
   local obj = AttackSkillList[nIndex]
   if obj ~= nil then
      return obj.nSkillID, obj.nSkillLevel
   end
   return -1, 1
end

GetBuffSkillInfo = function(nIndex)
   local obj = BuffSkillList[nIndex]
   if obj ~= nil then
      return obj.nSkillID, obj.nSkillLevel, obj.nReuseTime
   end
   return -1, 1, -1
end


