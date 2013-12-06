--============================================================
-- descript : 다음 함수들을 이용해서 이벤트 리시버를 작성하세요.
--
--   Command       ( 명령어 )                 : 명령어 실행 (ex. Command( "/ITEM PORING" ) )
--   UseItem       ( 이름, 개수 )             : 아이템 사용
--   BaseLevelUp   ( 상승 수치 )              : 캐릭터 Base 레벨 상승
--   JobLevelUp    ( 상승 수치 )              : 캐릭터 Job  레벨 상승
--   UpgradeSkill  ( 스킬 아이디, 상승 수치 ) : 캐릭터 스킬 레벨 상승
--   MoveMap       ( 맵이름 )                 : 맵 이동
--   ChangeJob     ( 직업 이름 )              : 직업 변경
--   StatusUp_STR  ( 상승 수치 )              : 캐릭터 STR 능력치 올리기
--   StatusUp_AGI  ( 상승 수치 )              : 캐릭터 AGI 능력치 올리기
--   StatusUp_VIT  ( 상승 수치 )              : 캐릭터 VIT 능력치 올리기
--   StatusUp_INT  ( 상승 수치 )              : 캐릭터 INT 능력치 올리기
--   StatusUp_DEX  ( 상승 수치 )              : 캐릭터 DEX 능력치 올리기
--   StatusUp_LUK  ( 상승 수치 )              : 캐릭터 LUK 능력치 올리기
--   GetJobId      ( )                        : 캐릭터 잡 ID 얻기
--   GetMapName    ( )                        : 현재 맵 이름 얻기
--   GetHp         ( )                        : Hp 얻기
--   GetSp         ( )                        : Sp 얻기
--   GetMaxhp      ( )                        : Maxhp 얻기
--   GetMaxsp      ( )                        : MaxSp 얻기
--   GetBaseExp    ( )                        : Base Exp 얻기
--   GetBaseMaxExp ( )                        : Base MaxExp 얻기
--   GetJobExp     ( )                        : JobExp 얻기
--   GetJobMaxExp  ( )                        : Job MaxExp 얻기
--   GetBaseLevel  ( )                        : Base Level 얻기
--   GetJobLevel   ( )                        : Job Level 얻기
--   GetCharName   ( )                        : 캐릭터 이름 얻기
--   IdentifyItems ( )                        : 감정되지 않은 모든 아이템을 감정
--============================================================

-- 이곳에 추가하세요
--[[
function buttonEventReceiver_makeGoToXXX()
	if GetMapName() == "prontera" then
		MoveMap ( "payon" )
		buttonEventReceiver_makeLordKnight()
	else
		MoveMap( "prontera" )
		buttonEventReceiver_makeLordKnight()
	end
	StatusUp_STR  ( 60 )
	StatusUp_AGI  ( 60 )
	StatusUp_VIT  ( 60 )
	StatusUp_INT  ( 60 )
	StatusUp_DEX  ( 60 )
	StatusUp_LUK  ( 60 )
end

function buttonEventReceiver_makePoring()
	for i = 1, 10 do
		Command ( "/ITEM PORING" )
	end
end

function eventTest_001()
	MoveMap( "prontera" )

	buttonEventReceiver_makeLordKnight()

	for i = 1, 100 do
		Command( "/ITEM PORING" )
	end
end

function eventUseItemTest()
   UseItem( "사과", 25 )
end
--]]

--============================================================
-- function : DebugingInterface_UserDefine
-- descript : 다음 함수들을 이용해서 메뉴를 추가하세요.
--
--   AddString ( 문자열 )                   : 리스트에 설명용 텍스트 추가
--   AddMenu   ( 메뉴 이름, 이벤트 리시버 ) : 리스트에 사용자 메뉴 추가
--
--============================================================

function DebugingInterface_UserDefine()
	-- 이곳에 추가하세요
	--[[
	AddString ( "-- [ 사용자 정의 ] --" )
	AddMenu ( "맵 이동 후 로드나이트 되기", buttonEventReceiver_makeGoToXXX )
	AddMenu ( "포링 10마리 만들기",   buttonEventReceiver_makePoring  )
	AddMenu ( "eventTest_001",   eventTest_001  )
	AddMenu ( "eventUseItemTest",   eventUseItemTest  )
	--]]
end