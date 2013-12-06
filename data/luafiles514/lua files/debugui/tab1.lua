
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
--
--============================================================




--============================================================
-- 운영자템 소환하기
--============================================================

function gmitem()
	Command ( "/item Angra_Manyu" )						
	Command ( "/item Ahura_Mazda" )	
	Command ( "/item Naqsh")
end

function buttonEventReceiver_spectacles()
	IdentifyItems()
end

function buttonEventReceiver_GmItem()
	gmitem()
	IdentifyItems()
end

function buttonEventReceiver_InsertMoney()
	UseItem("Handsei", 20 )
end

function buttonEventReceiver_yggdrasilberry ()
	UseItem("Yggdrasilberry" , 1 )	
end

--============================================================
-- 렙업하기
--============================================================

function buttonEventReceiver_TestMonster()							
	for i = 1, 100 do						
		Command ( "/ITEM PORING" )					
	end						
end							
							
function buttonEventReceiver_baselevelup()							
	UseItem("Pork_Belly" , 120 )						
end							
							
function buttonEventReceiver_joblevelup()							
	UseItem("Spareribs" , 80 )						
end		

--============================================================
-- 호문S 만들기
--============================================================


function buttonEventReceiver_homunlevelup ()
	UseItem("Pork_Belly_H" , 99 )
end

function buttonEventReceiver_use_friend ()
	UseItem( "Spareribs_H" , 20 )
end

function buttonEventReceiver_homunstone ()
	UseItem( "Stone_Of_Intelligence_" , 1 )
end

function mapmove_homun()
	Command("/mm prontera.gat 239 195")
end

function buttonEventReceiver_homunsrandom ()
        Command("/item Germination_Breed")
        Command("/item AM_CALLHOMUN")
	buttonEventReceiver_use_friend ()
	buttonEventReceiver_homunstone ()
	buttonEventReceiver_homunlevelup()
	buttonEventReceiver_use_friend ()
end

function buttonEventReceiver_em ()
        Command("/item Germination_Breed")
        Command("/item Stone_Of_Intelligence_")
end

function buttonEventReceiver_homunsSERA ()
        Command("/item homun_mutation_ready")
        Command("/item homun_mutation_sera")
end

function buttonEventReceiver_homunsEIRA ()
        Command("/item homun_mutation_ready")
        Command("/item homun_mutation_eira")
end

function buttonEventReceiver_homunsELEANOR ()
        Command("/item homun_mutation_ready")
        Command("/item homun_mutation_eleanor")
end

function buttonEventReceiver_homunsBAYERI ()
        Command("/item homun_mutation_ready")
        Command("/item homun_mutation_bayeri")
end

function buttonEventReceiver_homunsDIETER ()
        Command("/item homun_mutation_ready")
        Command("/item homun_mutation_dieter")
end

function buttonEventReceiver_homunsfood ()
        Command("/item Monster's_Feed")
        Command("/item Scell")
        Command("/item Zargon")
        Command("/item Garlet")
end

function buttonEventReceiver_homunsfoods ()
        Command("/item Bun_")
        Command("/item Small_Snow_Flower")
        Command("/item Apple_Pudding")
        Command("/item Big_Cell")
        Command("/item Fresh_Plant")
end

function buttonEventReceiver_homunsone ()
	buttonEventReceiver_use_friend ()
	buttonEventReceiver_homunstone ()
	buttonEventReceiver_homunlevelup()
	buttonEventReceiver_use_friend ()
end

--============================================================
-- 맵이동 하기
--============================================================
function buttonEventReceiver_sec_in02_1()
	Command("/mm sec_in02.gat 20 180")
end

function buttonEventReceiver_sec_in02_2()
	Command("/mm sec_in02.gat 20 20")
end

function buttonEventReceiver_sec_in02_3()
	Command("/mm sec_in02.gat 53 190")
end

function buttonEventReceiver_sec_in02_4()
	Command("/mm sec_in02.gat 53 165")
end

function buttonEventReceiver_mapmove_prontera()
	MoveMap ( "prontera" )
end
	
function buttonEventReceiver_mapmove_payon()
	MoveMap ( "payon" )
end

function buttonEventReceiver_mapmove_geffen()
	MoveMap ( "geffen" )
end

function buttonEventReceiver_mapmove_alberta()
	MoveMap ( "alberta" )
end

function buttonEventReceiver_mapmove_aldebaran()
	MoveMap ( "aldebaran" )
end

function buttonEventReceiver_mapmove_pvp()
	Command ( "/mm pvp_y_7-1.gat 100 100" )
end

--============================================================
-- 스킬 및 스탯 초기화 하기
--============================================================

function buttonEventReceiver_skillreset()
	Command ( "/resetskill" )
end

function buttonEventReceiver_statereset()
	Command ( "/resetstate" )
end

--=========================================================== 
-- 테스트 레이어 
--===========================================================

function buttonEventReceiver_testlayer() 
	Command("/testlayer") 
end

--===========================================================
-- 행운의알 100개 가기
--===========================================================

function buttonEventReceiver_egg10()
	UseItem("2011RWC스크롤",100)
end

--===========================================================
-- 심연의 회랑 추가 아이템
--===========================================================

function buttonEventReceiver_agit_renewal()		
item = {		
"	시즈부츠	",
"	시즈그리브	",
"	시즈슈즈	",
"	시즈망토	",
"	시즈머플러	",
"	시즈플레이트	",
"	시즈슈츠	",
"	시즈로브	",
"	수라의장갑	",
"	검은로자리	",
"	음파증폭기	",
"	벨룸자마다르	",
"	벨룸스케어	",
"	벨룸버스터	",
"	벨룸글레이브	",
"	벨룸바이블	",
"	벨룸대백과사전	",
"	벨룸크로	",
"	멘탈디스트로이어	",
"	벨룸아크완드	",
"	벨룸다마스커스	",
"	벨룸스터너	",
"	벨룸플레일	",
"	벨룸알바레스트	",
"	벨룸크로스보우	",
"	벨룸크레모어	",
"	벨룸카츠발게르	",
"	공성보급용화살S	",
"	공성보급용화살A	",
"	신급재료상자	",
"	공성무기보급상자	",
"	공성용보라포션상자	",
"	투자감사티켓	",
"	고양이상단투자증서	",
"	공성용보라포션	",
}		
for index, value in pairs(item) do		
Command ("/item" ..value )		
end		
end		
		
function buttonEventReceiver_agit_re ()		
buttonEventReceiver_agit_renewal()		
IdentifyItems()		
end




--============================================================
-- function : DebugingInterface_UserDefine
-- descript : 다음 함수들을 이용해서 메뉴를 추가하세요.
--
--   AddString ( 문자열 )                   : 리스트에 설명용 텍스트 추가
--   AddMenu   ( 메뉴 이름, 이벤트 리시버 ) : 리스트에 사용자 메뉴 추가
--
--============================================================
function DebugingInterface_Tab1()
	AddString ( "-- [ GMitem ] --" )
	AddMenu ("GMitem pleaseT_T", buttonEventReceiver_GmItem )
	AddMenu ("Spectacles pleaseT_T" , buttonEventReceiver_spectacles )
	AddMenu ("Give me money!!", buttonEventReceiver_InsertMoney )
	AddMenu ("Yggdrasilberry pleaseT_T" , buttonEventReceiver_yggdrasilberry )
	AddString ( "-- [ Lv up! ] --" )
	AddMenu ("Monster come on baby~ ", buttonEventReceiver_TestMonster )
	AddMenu ("Baselevel up!", buttonEventReceiver_baselevelup )
	AddMenu ("Joblevel up!", buttonEventReceiver_joblevelup )

	AddString ( "-- [ Move to Map ] --" )
	AddMenu ("Move to Valhalla 1", buttonEventReceiver_sec_in02_1 )
	AddMenu ("Move to Valhalla 2", buttonEventReceiver_sec_in02_2 )
	AddMenu ("Valhalla Monster area1", buttonEventReceiver_sec_in02_3 )
	AddMenu ("Valhalla Monster area2", buttonEventReceiver_sec_in02_4 )
	AddMenu ("Move to Prontera", buttonEventReceiver_mapmove_prontera )
	AddMenu ("Move to Payon", buttonEventReceiver_mapmove_payon )
	AddMenu ("Move to Geffen", buttonEventReceiver_mapmove_geffen )
	AddMenu ("Move to Alberta", buttonEventReceiver_mapmove_alberta )
	AddMenu ("Move to Aldebaran", buttonEventReceiver_mapmove_aldebaran )
	AddMenu ("Move to PVP", buttonEventReceiver_mapmove_pvp )

	
	AddString ( "-- [ State Skill RESET ] --" )
	AddMenu ("Skillreset Please T_T", buttonEventReceiver_skillreset )
	AddMenu ("Statereset Please T_T", buttonEventReceiver_statereset )


	AddString ( "-- [ Testlayer ] --")                            
	AddMenu ("Testlayer" , buttonEventReceiver_testlayer ) -- 테스트레이어 실행    
	AddString ( "-- [ 행운의알 100개 까기 --" )    
	AddMenu ("행운의알 100개 까기 " , buttonEventReceiver_egg10 )
end