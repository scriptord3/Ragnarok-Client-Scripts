--Function #0
queryNavi_MapInfo = function(Index)
	if Navi_Map[Index] == nil then
		return nil, nil, nil, nil, nil
	end
	return Navi_Map[Index][1], Navi_Map[Index][2], Navi_Map[Index][3], Navi_Map[Index][4], Navi_Map[Index][5]
end

--Function #1
queryNavi_NpcInfo = function(Index)
	if Navi_Npc[Index] == nil then
		return nil, nil, nil, nil, nil, nil, nil, nil
	end
	return Navi_Npc[Index][1], Navi_Npc[Index][2], Navi_Npc[Index][3], Navi_Npc[Index][4], Navi_Npc[Index][5], Navi_Npc[Index][6], Navi_Npc[Index][7], Navi_Npc[Index][8]
end

 --Function #2
queryNavi_MobInfo = function(Index)
	if Navi_Mob[Index] == nil then
		return nil, nil, nil, nil, nil, nil, nil, nil
	end
	return Navi_Mob[Index][1], Navi_Mob[Index][2], Navi_Mob[Index][3], Navi_Mob[Index][4], Navi_Mob[Index][5], Navi_Mob[Index][6], Navi_Mob[Index][7], Navi_Mob[Index][8]
end

--Function #3
queryNavi_LinkInfo = function(Index)
	if Navi_Link[Index] == nil then
		return nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
	end
	return Navi_Link[Index][1], Navi_Link[Index][2], Navi_Link[Index][3], Navi_Link[Index][4], Navi_Link[Index][5], Navi_Link[Index][6], Navi_Link[Index][7], Navi_Link[Index][8], Navi_Link[Index][9], Navi_Link[Index][10], Navi_Link[Index][11]
end

--Function #4
queryNavi_Distance_Map = function(Index)
	if Navi_Distance[Index] == nil then
		return nil, nil
	end
	return Navi_Distance[Index], Navi_Distance[Index + 1]
end

--Function #5
queryNavi_Distance_Link = function(Index, Index2)
	if Navi_Distance[Index + 2] == nil then
		return nil
	end
	if Navi_Distance[Index + 2][Index2] == nil then
		return nil
	end
	return Navi_Distance[Index + 2][Index2][1]
end

--Function #6
queryNavi_Distance_Pass = function(Index, Index2, Index3)
	if Navi_Distance[Index] == nil then
		return nil, nil, nil
	end
	if Navi_Distance[Index + 2][Index2] == nil then
		return nil, nil, nil
	end
	if Navi_Distance[Index + 2][Index2][Index3] == nil then
		return nil, nil, nil
	end
	return Navi_Distance[Index + 2][Index2][Index3 + 1][1], Navi_Distance[Index + 2][Index2][Index3 + 1][2], Navi_Distance[Index + 2][Index2][Index3 + 1][3]
end

--Function #7
queryNavi_NpcDistance_Map = function(Index)
	if Navi_NpcDistance[Index] == nil then
		return nil, nil
	end
	return Navi_NpcDistance[Index], Navi_NpcDistance[Index + 1]
end

--Function #8
queryNavi_NpcDistance_Link = function(Index, Index2)
	if Navi_NpcDistance[Index + 2] == nil then
		return nil
	end
	if Navi_NpcDistance[Index + 2][Index2] == nil then
		return nil
	end
	return Navi_NpcDistance[Index + 2][Index2][1]
end

--Function #9
queryNavi_NpcDistance_Pass = function(Index, Index2, Index3)
	if Navi_NpcDistance[Index] == nil then
		return nil, nil, nil
	end
	if Navi_NpcDistance[Index + 2][Index2] == nil then
		return nil, nil, nil
	end
	if Navi_NpcDistance[Index + 2][Index2][Index3] == nil then
		return nil, nil, nil
	end
	return Navi_NpcDistance[Index + 2][Index2][Index3 + 1][1], Navi_NpcDistance[Index + 2][Index2][Index3 + 1][2], Navi_NpcDistance[Index + 2][Index2][Index3 + 1][3]
end

--Function #10
queryNavi_Scroll = function(Index)
	if Navi_Scroll[Index] == nil then
		return nil, nil, nil, nil, nil, nil
	end
	return Navi_Scroll[Index][1], Navi_Scroll[Index][2], Navi_Scroll[Index][3], Navi_Scroll[Index][4], Navi_Scroll[Index][5], Navi_Scroll[Index][6]
end

--Function #11
queryNavi_Scroll_Pass = function(Index, Index2)
	if Navi_Scroll[Index] == nil then
		return nil, nil
	end
	if Navi_Scroll[Index][Index2 + 6] == nil then
		return nil, nil
	end
	return Navi_Scroll[Index][Index2 + 6][1], Navi_Scroll[Index][Index2 + 6][2]
end