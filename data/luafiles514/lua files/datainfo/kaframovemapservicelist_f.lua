--==================================
-- function : ReadKafraMoveMapServiceInfo
-- descript : 카프라 공간이동 서비스 정보 읽어들이기
--==================================

function ReadKafraMoveMapServiceInfo()
	for startMapName, table in pairs( KafraMoveMapServiceList ) do
		for key, destMapName in pairs( table ) do
			AddItmeTokafraServiceMapList( startMapName, destMapName )
		end
	end
end


--==================================
-- function : ReadKafraMiniMapPosInfo
-- descript : 미니맵 표시 위치 수정 정보 읽어들이기
--==================================

function ReadKafraMiniMapPosInfo()
	for k, v in pairs( KafraMiniMapPos ) do
		AddItmeToExceptionMiniMapPosList( k, v[1], v[2] )
	end
end