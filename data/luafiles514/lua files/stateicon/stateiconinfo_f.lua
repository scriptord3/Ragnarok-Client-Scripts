local resultDesInfos = {}
setmetatable(resultDesInfos, {__mode = "v"})
GetTimeLimitInfo = function(EFST_ID)
   local key = EFST_ID .. "-haveTimeLimit"
   local timeInfo = resultDesInfos[key]
   if timeInfo == nil then
      timeInfo = {0, 0}
      if StateIconList ~= nil then
         obj = StateIconList[EFST_ID]
         if obj ~= nil then
            haveTimeLimit = obj.haveTimeLimit
            if haveTimeLimit == nil then
               haveTimeLimit = 0
            end
            posTimeLimitStr = obj.posTimeLimitStr
            if posTimeLimitStr == nil then
               posTimeLimitStr = 0
            end
            timeInfo = {haveTimeLimit, posTimeLimitStr}
            resultDesInfos[key] = timeInfo
         end
      end
   end
   return timeInfo[1], timeInfo[2]
end

SetDefaultDesInfo = function(des, r, g, b)
   if des == nil then
      des = ""
   end
   if r == nil then
      r = 255
   end
   if g == nil then
      g = 255
   end
   if b == nil then
      b = 255
   end
   return {des, r, g, b}
end

local defaultInfo = SetDefaultDesInfo
GetStateIconDescript = function(EFST_ID, idx)
   local key = EFST_ID .. "-" .. idx
   local desInfo = resultDesInfos[key]
   if desInfo == nil then
      desInfo = {"", 255, 255, 255}
      if StateIconList ~= nil and StateIconList[EFST_ID] ~= nil then
         v = StateIconList[EFST_ID].descript
         if v ~= nil and v[idx] ~= nil then
            if v[idx][2] ~= nil then
               desInfo = defaultInfo(v[idx][1], v[idx][2][1], v[idx][2][2], v[idx][2][3])
            else
               desInfo = defaultInfo(v[idx][1], nil, nil, nil)
            end
            resultDesInfos[key] = desInfo
         end
      end
   end
   return desInfo[1], desInfo[2], desInfo[3], desInfo[4]
end

MakeBuffIconInfoFile = function()
   makeFile = io.open("data\\StateIconInfo_n.lua", "w")
   if makeFile ~= nil then
      makeFile:write("StateIconList = {}\n\n")
      for k, v in pairs(EFST_IDs) do
         filename, msg = c_GetEFSTMsg(v), v
         if filename ~= "" and filename ~= nil then
            makeFile:write(string.format("-- %d, %s\n", v, filename))
            makeFile:write(string.format("StateIconList[EFST_IDs.%s] =\n", k))
            makeFile:write("{\n")
            makeFile:write("\tdescript = \n")
            makeFile:write("\t{\n")
            if msg ~= "" and msg ~= nil then
               makeFile:write(string.format("\t\t{ \"%s\", },\n", msg))
            end
            makeFile:write("\t}\n")
            makeFile:write("}\n\n")
         end
      end
   end
   io.close(makeFile)
end

GetStrEFSTID = function(EFSTID)
   for j, k in pairs(EFST_IDs) do
      if k == EFSTID then
         return j
      end
   end
   return ""
end

GetEFSTID = function(EFSTID)
   if EFSTID ~= 0 then
      local efst = EFST_IDs[EFSTID]
      if efst ~= nil then
         return efst
      end
   end
   return 0
end

GetEFSTImgFileName = function(EFSTID, priority)
   if StateIconImgList ~= nil then
      local obj = StateIconImgList[priority]
      if obj ~= nil then
         local fileName = obj[EFSTID]
         if fileName ~= nil then
            return "effect\\" .. fileName
         end
      end
   end
   return ""
end