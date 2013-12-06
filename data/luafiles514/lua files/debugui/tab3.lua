
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
		Command ( "/ITEM FABRE_" )
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
	UseItem("Pork_Belly_H" , 98 )
end

function buttonEventReceiver_use_friend ()
	UseItem( "Spareribs_H" , 20 )
end

function buttonEventReceiver_homunstone ()
	UseItem( "Stone_Of_Intelligence_" , 1 )
end

function buttonEventReceiver_mapmove_homun()
	Command("/mm job3_gen01.gat 12 44")
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
-- 길드
--============================================================

function buttonEventReceiver_empelium ()
        Command("/item Empelium_Box")
end

function buttonEventReceiver_guildlup ()
	UseItem("Union_Of_Tribe" , 20 )
end

--============================================================
-- 편의맵이동 하기
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

function buttonEventReceiver_prtg_cas02()
	Command("/mm prtg_cas02.gat 20 216")
end

function buttonEventReceiver_mapmove_pvp()
	Command ( "/mm pvp_y_8-1.gat 155 186" )
end

--============================================================
-- 룬미드가드마을
--============================================================

function buttonEventReceiver_mapmove_prontera()
	MoveMap ( "prontera" )
end

function buttonEventReceiver_mapmove_izlude()
	MoveMap ( "izlude" )
end

function buttonEventReceiver_mapmove_payon()
	MoveMap ( "payon" )
end

function buttonEventReceiver_mapmove_morocc()
	MoveMap ( "morocc" )
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

function buttonEventReceiver_mapmove_xmas()
	MoveMap ( "xmas" )
end

function buttonEventReceiver_mapmove_comodo()
	MoveMap ( "comodo" )
end

function buttonEventReceiver_mapmove_comodo()
	MoveMap ( "umbala" )
end

function buttonEventReceiver_mapmove_niflheim()
	MoveMap ( "niflheim" )
end

--============================================================
-- 슈발츠공화국마을
--============================================================

function buttonEventReceiver_mapmove_yuno()
	MoveMap ( "yuno" )
end

function buttonEventReceiver_mapmove_einbroch()
	MoveMap ( "einbroch" )
end

function buttonEventReceiver_mapmove_einbech()
	MoveMap ( "einbech" )
end

function buttonEventReceiver_mapmove_lighthalzen()
	MoveMap ( "lighthalzen" )
end

function buttonEventReceiver_mapmove_hugel()
	MoveMap ( "hugel" )
end

--============================================================
-- 아루나펠츠마을
--============================================================

function buttonEventReceiver_mapmove_rachel()
	MoveMap ( "rachel" )
end

function buttonEventReceiver_mapmove_veins()
	MoveMap ( "veins" )
end

--============================================================
-- 에쉬바쿰마을
--============================================================

function buttonEventReceiver_mapmove_malangdo()
	MoveMap ( "malangdo" )
end

function buttonEventReceiver_mapmove_mid_camp()
	MoveMap ( "mid_camp" )
end

function buttonEventReceiver_mapmove_manuk()
	MoveMap ( "manuk" )
end

function buttonEventReceiver_mapmove_dicastes()
	MoveMap ( "dicastes01" )
end

function buttonEventReceiver_mapmove_splendide()
	MoveMap ( "splendide" )
end

function buttonEventReceiver_mapmove_mora()
	MoveMap ( "mora" )
end

function buttonEventReceiver_mapmove_eclage()
	MoveMap ( "eclage" )
end

--============================================================
-- 로컬라이징마을
--============================================================

function buttonEventReceiver_mapmove_amatsu()
	MoveMap ( "amatsu" )
end

function buttonEventReceiver_mapmove_gonryun()
	MoveMap ( "gonryun" )
end

function buttonEventReceiver_mapmove_louyang()
	MoveMap ( "louyang" )
end

function buttonEventReceiver_mapmove_ayothaya()
	MoveMap ( "ayothaya" )
end

function buttonEventReceiver_mapmove_brasilis()
	MoveMap ( "brasilis" )
end

function buttonEventReceiver_mapmove_moscovia()
	MoveMap ( "moscovia" )
end

function buttonEventReceiver_mapmove_dewata()
	MoveMap ( "dewata" )
end

function buttonEventReceiver_mapmove_malaya()
	MoveMap ( "malaya" )
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

--============================================================
-- 캐릭터 속성변경하기
--============================================================

function buttonEventReceiver_elementalSa()
	Command ( "/item elemental saint" )
end

function buttonEventReceiver_elementalDr()
	Command ( "/item elemental darkness" )
end

function buttonEventReceiver_elementalUn()
	Command ( "/item elemental undead" )
end

function buttonEventReceiver_elementalTe()
	Command ( "/item elemental telekinesis" )
end

function buttonEventReceiver_elementalPo()
	Command ( "/item elemental poison" )
end

function buttonEventReceiver_elementalWi()
	Command ( "/item elemental wind" )
end

function buttonEventReceiver_elementalFi()
	Command ( "/item elemental fire" )
end

function buttonEventReceiver_elementalGr()
	Command ( "/item elemental ground" )
end

function buttonEventReceiver_elementalWa()
	Command ( "/item elemental water" )
end

function buttonEventReceiver_elementalNo()
	Command ( "/item elemental nothing" )
end

--=========================================================== 
-- 상태이상걸기 
--===========================================================
function buttonEventReceiver_stoncurse()
	Command ( "/item stoncurse 30" )
end

function buttonEventReceiver_freezing()
	Command ( "/item freezing 30" )
end

function buttonEventReceiver_stun()
	Command ( "/item stun 30" )
end

function buttonEventReceiver_sleep()
	Command ( "/item sleep 30" )
end

function buttonEventReceiver_undead()
	Command ( "/item undead 30" )
end

function buttonEventReceiver_poison()
	Command ( "/item poison 30" )
end

function buttonEventReceiver_curse()
	Command ( "/item curse 30" )
end

function buttonEventReceiver_silence()
	Command ( "/item silence 30" )
end

function buttonEventReceiver_confusion()
	Command ( "/item confusion 30" )
end

function buttonEventReceiver_blind()
	Command ( "/item blind 30" )
end

--=========================================================== 
-- 테스트 레이어 
--===========================================================

function buttonEventReceiver_testlayer() 
	Command("/testlayer") 
end

--=========================================================== 
-- 스탑워치 
--===========================================================

function buttonEventReceiver_stopwatch() 
	Command("/stopwatch") 
end

--===========================================================
-- 행운의알 100개 가기
--===========================================================

function buttonEventReceiver_egg10()
	UseItem("행운의알",100)
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
function DebugingInterface_Tab3()
	AddString ( "★[ MAP ]★" )
	AddString ( "-- [ Rune Midgard ] --" )
	AddMenu ("PRONTERA" , buttonEventReceiver_mapmove_prontera )
	AddMenu ("IZLUDE" , buttonEventReceiver_mapmove_izlude )
	AddMenu ("PAYON" , buttonEventReceiver_mapmove_payon )
	AddMenu ("MOROCC" , buttonEventReceiver_mapmove_morocc )
	AddMenu ("GEFFEN" , buttonEventReceiver_mapmove_geffen )
	AddMenu ("ALBERTA" , buttonEventReceiver_mapmove_alberta )
	AddMenu ("ALDEBARAN" , buttonEventReceiver_mapmove_aldebaran )
	AddMenu ("LUTIE" , buttonEventReceiver_mapmove_xmas )
	AddMenu ("COMODO" , buttonEventReceiver_mapmove_comodo )
	AddMenu ("UMBALA" , buttonEventReceiver_mapmove_umbala )
	AddMenu ("NIFLHEIM" , buttonEventReceiver_mapmove_niflheim )

	AddString ( "-- [ Republic of Schwartzvald ] --" )
	AddMenu ("YUNO" , buttonEventReceiver_mapmove_yuno )
	AddMenu ("EINBROCH" , buttonEventReceiver_mapmove_einbroch )
	AddMenu ("EINBECH" , buttonEventReceiver_mapmove_einbech )
	AddMenu ("LIGHTHALZEN" , buttonEventReceiver_mapmove_lighthalzen )
	AddMenu ("HUGEL" , buttonEventReceiver_mapmove_hugel )

	AddString ( "-- [ Arunafeltz States ] --" )
	AddMenu ("RACHEL" , buttonEventReceiver_mapmove_rachel )
	AddMenu ("VEINS" , buttonEventReceiver_mapmove_veins )

	AddString ( "-- [ New World ] --" )
	AddMenu ("MALANGDO" , buttonEventReceiver_mapmove_malangdo )
	AddMenu ("MID CAMP" , buttonEventReceiver_mapmove_mid_camp )
	AddMenu ("MANUK" , buttonEventReceiver_mapmove_manuk )
	AddMenu ("EL DICASTES" , buttonEventReceiver_mapmove_dicastes )
	AddMenu ("SPLENDIDE" , buttonEventReceiver_mapmove_splendide )
	AddMenu ("MORA" , buttonEventReceiver_mapmove_mora )
	AddMenu ("ECLAGE" , buttonEventReceiver_mapmove_eclage )

	AddString ( "-- [ Localizing ] --" )
	AddMenu ("AMATSU" , buttonEventReceiver_mapmove_amatsu )
	AddMenu ("GONRYUN" , buttonEventReceiver_mapmove_gonryun )
	AddMenu ("LOUYANG" , buttonEventReceiver_mapmove_louyang )
	AddMenu ("AYOTHAYA" , buttonEventReceiver_mapmove_ayothaya )
	AddMenu ("BRASILIS" , buttonEventReceiver_mapmove_brasilis )
	AddMenu ("MOSCOVIA" , buttonEventReceiver_mapmove_moscovia )
	AddMenu ("DEWATA" , buttonEventReceiver_mapmove_dewata )
	AddMenu ("MALAYA" , buttonEventReceiver_mapmove_malaya )

end