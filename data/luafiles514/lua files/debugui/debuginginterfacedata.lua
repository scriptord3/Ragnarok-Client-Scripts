--==========================================
-- filename		: DebuginInterfaceData.lua
--수정자                : 조한성 조성철 박성철

-- 작성자		: (이호진)
-- 최종 수정	: 2012.02.15
--==========================================

--============================================================
-- descript : 사용 제한 목록(아이디)
--============================================================

-- 성별 제한
SEX_FEMALE = 0
SEX_MALE = 1


--============================================================
-- function : eventReceiverTable
-- descript : 이벤트 리시버를 저장하고 버튼 id 로 검색하여 활용할 테이블
--============================================================

eventReceiverTable = {}


--============================================================
-- function : buttonEvent
-- descript : 버튼의 id 에 해당하는 이벤트 리시버를 검색 후 실행
--============================================================

function buttonEvent( str )
   receiver = eventReceiverTable[str]
   if receiver ~= nil then
      receiver()
   end
end


--============================================================
-- function : AddItem
-- descript : 윈도우에 버튼 UI 를 추가
--============================================================

function AddString( title )
   if title == nil then
      title = "untitled"
   end
   SetAddItemToListBox( title )
end


--============================================================
-- function : AddMenu
-- descript : 디버깅 인터페이스 리스트에 메뉴 추가
--============================================================

function AddMenu ( strMenuName, receiver  )
   AddString( strMenuName )
   eventReceiverTable[strMenuName] = receiver  
end


--============================================================
-- function : Command
-- descript : 디버깅 인터페이스 리스트에 생성 아이템 메뉴 추가
--============================================================

function Command ( str )
	SetAddOrderToList_Command ( str )
end


--============================================================
-- function : UseItem
-- descript : 아이템 사용
--============================================================

function UseItem( itemName, num )
   SetAddOrderToList_CreateItem( itemName, num )
   SetAddOrderToList_UseItem( itemName, num )
end


--============================================================
-- function : BaseLevelUp
-- descript : Base 레벨 상승 처리
--============================================================

function BaseLevelUp ( amount )
	UseItem( "Pork_Belly", amount )
end


--============================================================
-- function : JobLevelUp
-- descript : Job 레벨 상승 처리
--============================================================

function JobLevelUp ( amount )
	UseItem( "Spareribs", amount )
end


--============================================================
-- function : UpgradeSkill
-- descript : 스킬 레벨 상승 처리
--============================================================

function UpgradeSkill ( skillid, amount )
	SetAddOrderToList_UpgradeSkill ( skillid, amount )
end


--============================================================
-- function : MoveMap
-- descript : 맵 이동 처리
--============================================================

function MoveMap ( name )
	Command ( "/mm " .. name .. ".gat" )
end

--============================================================
-- function : ChangeJob
-- descript : 직업 변경 처리
--============================================================

function ChangeJob ( jobName )
	SetAddOrderToList_ChangeJob( jobName )
end

--============================================================
-- function : StatusUp_...
-- descript : Status 상승 처리
--============================================================

function StatusUp_STR( amount )
   SetAddOrderToList_StatusChange_STR( amount )
end

function StatusUp_AGI( amount )
   SetAddOrderToList_StatusChange_AGI( amount )
end

function StatusUp_VIT( amount )
   SetAddOrderToList_StatusChange_VIT( amount )
end

function StatusUp_INT( amount )
   SetAddOrderToList_StatusChange_INT( amount )
end

function StatusUp_DEX( amount )
   SetAddOrderToList_StatusChange_DEX( amount )
end

function StatusUp_LUK( amount )
   SetAddOrderToList_StatusChange_LUK( amount )
end

--============================================================
-- function : IdentifyItem
-- descript : 감정되지 않은 모든 아이템을 감정
--============================================================

function IdentifyItems()
   SetAddOrderToList_ItemIdentify()
end

--============================================================
-- function : 전직용 buttonEventReceiver
--============================================================

--============================================================
-- 전직에 의한 베이스/잡 레벨 상승 설정
--============================================================
-- 슈퍼노비스 45/10
-- 노비스 10/10
-- 1차 99/50
-- 2차 99/50
-- 3차 150/50
--============================================================

--============================================================
-- descript : 전직 조건별 Base/Job 레벨 상승값 설정
--============================================================

function upgradeLevel_Novice()
   BaseLevelUp( 9 )
   JobLevelUp( 9 )
end

function upgradeLevel_1stChangeJob()
   BaseLevelUp( 90 )
   JobLevelUp( 50 )
end

function upgradeLevel_2ndChangeJob()
   JobLevelUp( 50 )
end

function upgradeLevel_2ndChangeJob_H()
   JobLevelUp( 70 )
end

function upgradeLevel_3rdChangeJob()
   BaseLevelUp( 70 )
   JobLevelUp( 70 )
end


--============================================================
-- descript : 각 직업별 스킬 레벨 상승값 설정
--============================================================

function upgradeSkill_Novice()
   UpgradeSkill( SKID.NV_BASIC, 9 )
   UpgradeSkill( SKID.NV_FIRSTAID, 0 )
   UpgradeSkill( SKID.NV_TRICKDEAD, 0 )   
end

function upgradeSkill_Swordman()
   UpgradeSkill( SKID.SM_SWORD, 5 )
   UpgradeSkill( SKID.SM_RECOVERY, 10 )
   UpgradeSkill( SKID.SM_BASH, 10)
   UpgradeSkill( SKID.SM_PROVOKE, 10 )
   UpgradeSkill( SKID.SM_AUTOBERSERK, 0 )
   UpgradeSkill( SKID.SM_MOVINGRECOVERY, 0 )
   UpgradeSkill( SKID.SM_TWOHAND, 1 )
   UpgradeSkill( SKID.SM_MAGNUM, 3 )
   UpgradeSkill( SKID.SM_ENDURE, 10 )
   UpgradeSkill( SKID.SM_FATALBLOW, 0 )
end

function upgradeSkill_Knight()
   UpgradeSkill( SKID.KN_TWOHANDQUICKEN, 0 )
   UpgradeSkill( SKID.KN_AUTOCOUNTER, 3 )
   UpgradeSkill( SKID.KN_RIDING, 1 )
   UpgradeSkill( SKID.KN_SPEARMASTERY, 10 )
   UpgradeSkill( SKID.KN_CHARGEATK, 0 )
   UpgradeSkill( SKID.KN_BOWLINGBASH, 0 )
   UpgradeSkill( SKID.KN_CAVALIERMASTERY, 5 )
   UpgradeSkill( SKID.KN_PIERCE, 10 )
   UpgradeSkill( SKID.KN_ONEHAND, 0 )
   UpgradeSkill( SKID.KN_SPEARBOOMERANG, 0 )
   UpgradeSkill( SKID.KN_SPEARSTAB, 10 )
   UpgradeSkill( SKID.KN_BRANDISHSPEAR, 10 )
end

function upgradeSkill_Crusader()
   UpgradeSkill( SKID.CR_TRUST, 10 )
   UpgradeSkill( SKID.CR_AUTOGUARD, 5 )
   UpgradeSkill( SKID.KN_SPEARMASTERY, 10 )
   UpgradeSkill( SKID.KN_RIDING, 1 )
   UpgradeSkill( SKID.CR_SHRINK, 0 )
   UpgradeSkill( SKID.AL_CURE, 1 )
   UpgradeSkill( SKID.CR_HOLYCROSS, 0 )
   UpgradeSkill( SKID.CR_SHIELDCHARGE, 3 )
   UpgradeSkill( SKID.CR_SPEARQUICKEN, 1 )
   UpgradeSkill( SKID.KN_CAVALIERMASTERY, 5 )
   UpgradeSkill( SKID.AL_DP, 3 )
   UpgradeSkill( SKID.CR_GRANDCROSS, 0 )
   UpgradeSkill( SKID.CR_SHIELDBOOMERANG, 5 )
   UpgradeSkill( SKID.AL_DEMONBANE, 5 )
   UpgradeSkill( SKID.CR_REFLECTSHIELD, 0 )
   UpgradeSkill( SKID.CR_DEFENDER, 0 )
   UpgradeSkill( SKID.AL_HEAL, 0 )
   UpgradeSkill( SKID.CR_DEVOTION, 0 )
   UpgradeSkill( SKID.CR_PROVIDENCE, 0 )
end

function upgradeSkill_MerChant()
   UpgradeSkill( SKID.MC_INCCARRY, 10 )
   UpgradeSkill( SKID.MC_MAMMONITE, 10 )
   UpgradeSkill( SKID.MC_IDENTIFY, 1 )
   UpgradeSkill( SKID.MC_LOUD, 0 )
   UpgradeSkill( SKID.MC_DISCOUNT, 10 )
   UpgradeSkill( SKID.MC_PUSHCART, 10 )
   UpgradeSkill( SKID.MC_CHANGECART, 0 )
   UpgradeSkill( SKID.MC_OVERCHARGE, 7 )
   UpgradeSkill( SKID.MC_VENDING, 1 )
   UpgradeSkill( SKID.MC_CARTREVOLUTION, 0 )
end

function upgradeSkill_BlackSmith()
   UpgradeSkill( SKID.BS_HILTBINDING, 1 )
   UpgradeSkill( SKID.BS_SKINTEMPER, 5 )
   UpgradeSkill( SKID.BS_HAMMERFALL, 5 )
   UpgradeSkill( SKID.BS_DAGGER, 3 )
   UpgradeSkill( SKID.BS_STEEL, 0 )
   UpgradeSkill( SKID.BS_ENCHANTEDSTONE, 0 )
   UpgradeSkill( SKID.BS_WEAPONRESEARCH, 10 )
   UpgradeSkill( SKID.BS_ADRENALINE, 5 )
   UpgradeSkill( SKID.BS_SPEAR, 3 )
   UpgradeSkill( SKID.BS_SWORD, 2 )
   UpgradeSkill( SKID.BS_FINDINGORE, 0 )
   UpgradeSkill( SKID.BS_ORIDEOCON, 0 )
   UpgradeSkill( SKID.BS_REPAIRWEAPON, 0 )
   UpgradeSkill( SKID.BS_WEAPONPERFECT, 5 )
   UpgradeSkill( SKID.BS_OVERTHRUST, 5 )
   UpgradeSkill( SKID.BS_TWOHANDSWORD, 0 )
   UpgradeSkill( SKID.BS_MACE, 0 )
   UpgradeSkill( SKID.BS_MAXIMIZE, 5 )
   UpgradeSkill( SKID.BS_AXE, 0 )
   UpgradeSkill( SKID.BS_ADRENALINE2, 0 )
   UpgradeSkill( SKID.BS_GREED, 0 )
   UpgradeSkill( SKID.BS_UNFAIRLYTRICK, 0 )
end

function upgradeSkill_Alchemist()
   UpgradeSkill( SKID.AM_LEARNINGPOTION, 10 )
   UpgradeSkill( SKID.AM_SPHEREMINE, 0 )
   UpgradeSkill( SKID.AM_AXEMASTERY, 10 )
   UpgradeSkill( SKID.AM_CP_HELM, 0 )
   UpgradeSkill( SKID.AM_BIOETHICS, 0 )
   UpgradeSkill( SKID.AM_TWILIGHT1, 0 )
   UpgradeSkill( SKID.AM_PHARMACY, 10 )
   UpgradeSkill( SKID.AM_POTIONPITCHER, 5 )
   UpgradeSkill( SKID.AM_CP_SHIELD, 0 )
   UpgradeSkill( SKID.AM_REST, 0 )
   UpgradeSkill( SKID.AM_BERSERKPITCHER, 0 )
   UpgradeSkill( SKID.AM_TWILIGHT2, 0 )
   UpgradeSkill( SKID.AM_DEMONSTRATION, 5 )
   UpgradeSkill( SKID.AM_CP_ARMOR, 0 )
   UpgradeSkill( SKID.AM_CALLHOMUN, 0 )
   UpgradeSkill( SKID.AM_TWILIGHT3, 0 )
   UpgradeSkill( SKID.AM_ACIDTERROR, 5 )
   UpgradeSkill( SKID.AM_CP_WEAPON, 0 )
   UpgradeSkill( SKID.AM_RESURRECTHOMUN, 0 )
   UpgradeSkill( SKID.AM_CANNIBALIZE, 4 )
end

function upgradeSkill_Acolyte()
   UpgradeSkill( SKID.AL_RUWACH, 1 )
   UpgradeSkill( SKID.AL_HEAL, 3 )
   UpgradeSkill( SKID.AL_HOLYWATER, 1 )
   UpgradeSkill( SKID.AL_DP, 10 )
   UpgradeSkill( SKID.AL_TELEPORT, 2 )
   UpgradeSkill( SKID.AL_CURE, 1 )
   UpgradeSkill( SKID.AL_INCAGI, 5 )
   UpgradeSkill( SKID.AL_BLESSING, 5 )
   UpgradeSkill( SKID.AL_WARP, 4 )
   UpgradeSkill( SKID.AL_PNEUMA, 1 )
   UpgradeSkill( SKID.AL_CRUCIS, 0 )
   UpgradeSkill( SKID.AL_DEMONBANE, 10 )
   UpgradeSkill( SKID.AL_HOLYLIGHT, 0 )
   UpgradeSkill( SKID.AL_ANGELUS, 5 )
   UpgradeSkill( SKID.AL_DECAGI, 1 )
end

function upgradeSkill_Priest()
   UpgradeSkill( SKID.PR_KYRIE, 5 )
   UpgradeSkill( SKID.PR_MAGNIFICAT, 3 )
   UpgradeSkill( SKID.PR_STRECOVERY, 1 )
   UpgradeSkill( SKID.MG_SRECOVERY, 5 )
   UpgradeSkill( SKID.PR_LEXDIVINA, 5 )
   UpgradeSkill( SKID.PR_IMPOSITIO, 3 )
   UpgradeSkill( SKID.PR_SANCTUARY, 3 )
   UpgradeSkill( SKID.PR_GLORIA, 2 )
   UpgradeSkill( SKID.PR_SLOWPOISON, 0 )
   UpgradeSkill( SKID.ALL_RESURRECTION, 4 )
   UpgradeSkill( SKID.PR_LEXAETERNA, 1 )
   UpgradeSkill( SKID.PR_SUFFRAGIUM, 3 )
   UpgradeSkill( SKID.PR_ASPERSIO, 4 )
   UpgradeSkill( SKID.PR_BENEDICTIO, 0 )
   UpgradeSkill( SKID.PR_MACEMASTERY, 0 )
   UpgradeSkill( SKID.PR_TURNUNDEAD, 0 )
   UpgradeSkill( SKID.MG_SAFETYWALL, 10 )
   UpgradeSkill( SKID.PR_MAGNUS, 0 )
   UpgradeSkill( SKID.PR_REDEMPTIO, 0 )
end

function upgradeSkill_Monk()
   UpgradeSkill( SKID.MO_IRONHAND, 10 )
   UpgradeSkill( SKID.MO_CALLSPIRITS, 10 )
   UpgradeSkill( SKID.MO_DODGE, 10 )
   UpgradeSkill( SKID.MO_TRIPLEATTACK, 10 )
   UpgradeSkill( SKID.MO_KITRANSLATION, 10 )
   UpgradeSkill( SKID.MO_ABSORBSPIRITS, 10 )
   UpgradeSkill( SKID.MO_INVESTIGATE, 10 )
   UpgradeSkill( SKID.MO_BLADESTOP, 10 )
   UpgradeSkill( SKID.MO_CHAINCOMBO, 10 )
   UpgradeSkill( SKID.MO_BALKYOUNG, 10 )
   UpgradeSkill( SKID.MO_EXPLOSIONSPIRITS, 10 )
   UpgradeSkill( SKID.MO_FINGEROFFENSIVE, 10 )
   UpgradeSkill( SKID.MO_SPIRITSRECOVERY, 10 )
   UpgradeSkill( SKID.MO_COMBOFINISH, 10 )
   UpgradeSkill( SKID.MO_EXTREMITYFIST, 10 )
   UpgradeSkill( SKID.MO_STEELBODY, 10 )
   UpgradeSkill( SKID.MO_BODYRELOCATION, 10 )
end

function upgradeSkill_Thief()
   UpgradeSkill( SKID.TF_DOUBLE, 10 )
   UpgradeSkill( SKID.TF_STEAL, 10 )
   UpgradeSkill( SKID.TF_POISON, 10 )
   UpgradeSkill( SKID.TF_SPRINKLESAND, 0 )
   UpgradeSkill( SKID.TF_THROWSTONE, 0 )
   UpgradeSkill( SKID.TF_MISS, 10 )
   UpgradeSkill( SKID.TF_HIDING, 8 )
   UpgradeSkill( SKID.TF_DETOXIFY, 1 )
   UpgradeSkill( SKID.TF_BACKSLIDING, 0 )
   UpgradeSkill( SKID.TF_PICKSTONE, 0 )
end

function upgradeSkill_Assassin()
   UpgradeSkill( SKID.AS_RIGHT, 5 )
   UpgradeSkill( SKID.AS_KATAR, 10 )
   UpgradeSkill( SKID.AS_CLOAKING, 10 )
   UpgradeSkill( SKID.AS_ENCHANTPOISON, 9 )
   UpgradeSkill( SKID.AS_VENOMKNIFE, 0 )
   UpgradeSkill( SKID.AS_LEFT, 5 )
   UpgradeSkill( SKID.AS_SONICBLOW, 10 )
   UpgradeSkill( SKID.AS_VENOMDUST, 0 )
   UpgradeSkill( SKID.AS_POISONREACT, 0 )
   UpgradeSkill( SKID.AS_SONICACCEL, 0 )
   UpgradeSkill( SKID.AS_GRIMTOOTH, 0 )
   UpgradeSkill( SKID.AS_SPLASHER, 0 )
end

function upgradeSkill_Rogue()
   UpgradeSkill( SKID.AC_VULTURE, 0 )
   UpgradeSkill( SKID.RG_TUNNELDRIVE, 3 )
   UpgradeSkill( SKID.RG_SNATCHER, 5 )
   UpgradeSkill( SKID.RG_STEALCOIN, 4 )
   UpgradeSkill( SKID.RG_STRIPHELM, 5 )
   UpgradeSkill( SKID.SM_SWORD, 0 )
   UpgradeSkill( SKID.RG_CLOSECONFINE, 0 )
   UpgradeSkill( SKID.AC_DOUBLE, 0 )
   UpgradeSkill( SKID.RG_STRIPSHIELD, 5 )
   UpgradeSkill( SKID.RG_GANGSTER, 0 )
   UpgradeSkill( SKID.HT_REMOVETRAP, 0 )
   UpgradeSkill( SKID.RG_BACKSTAP, 4 )
   UpgradeSkill( SKID.RG_STRIPARMOR, 3 )
   UpgradeSkill( SKID.RG_CLEANER, 0 )
   UpgradeSkill( SKID.RG_COMPULSION, 0 )
   UpgradeSkill( SKID.RG_RAID, 5 )
   UpgradeSkill( SKID.RG_STRIPWEAPON, 0 )
   UpgradeSkill( SKID.RG_FLAGGRAFFITI, 0 )
   UpgradeSkill( SKID.RG_INTIMIDATE, 5 )
   UpgradeSkill( SKID.RG_GRAFFITI, 0 )
   UpgradeSkill( SKID.RG_PLAGIARISM, 10 )   
end

function upgradeSkill_Magician()
   UpgradeSkill( SKID.MG_STONECURSE, 5 )
   UpgradeSkill( SKID.MG_COLDBOLT, 5 )
   UpgradeSkill( SKID.MG_LIGHTNINGBOLT, 4 )
   UpgradeSkill( SKID.MG_NAPALMBEAT, 7 )
   UpgradeSkill( SKID.MG_FIREBOLT, 4 )
   UpgradeSkill( SKID.MG_SIGHT, 1 )
   UpgradeSkill( SKID.MG_SRECOVERY, 5 )
   UpgradeSkill( SKID.MG_FROSTDIVER, 1 )
   UpgradeSkill( SKID.MG_THUNDERSTORM, 1 )
   UpgradeSkill( SKID.MG_SOULSTRIKE, 7 )
   UpgradeSkill( SKID.MG_FIREBALL, 5 )
   UpgradeSkill( SKID.MG_ENERGYCOAT, 0 )
   UpgradeSkill( SKID.MG_SAFETYWALL, 3 )
   UpgradeSkill( SKID.MG_FIREWALL, 1 )
end

function upgradeSkill_Wizard()
   UpgradeSkill( SKID.WZ_ESTIMATION, 1 )
   UpgradeSkill( SKID.WZ_ICEWALL, 5 )
   UpgradeSkill( SKID.WZ_JUPITEL, 10 )
   UpgradeSkill( SKID.WZ_EARTHSPIKE, 3 )
   UpgradeSkill( SKID.WZ_SIGHTRASHER, 2 )
   UpgradeSkill( SKID.WZ_FIREPILLAR, 2 )
   UpgradeSkill( SKID.WZ_SIGHTBLASTER, 0 )
   UpgradeSkill( SKID.WZ_FROSTNOVA, 5 )
   UpgradeSkill( SKID.WZ_VERMILION, 5 )
   UpgradeSkill( SKID.WZ_HEAVENDRIVE, 1 )
   UpgradeSkill( SKID.WZ_METEOR, 5 )
   UpgradeSkill( SKID.WZ_WATERBALL, 0 )
   UpgradeSkill( SKID.WZ_QUAGMIRE, 5 )
   UpgradeSkill( SKID.WZ_STORMGUST, 5 )
end

function upgradeSkill_Sage()
   UpgradeSkill( SKID.SA_ADVANCEDBOOK, 7 )
   UpgradeSkill( SKID.SA_ELEMENTWATER, 0 )
   UpgradeSkill( SKID.SA_ELEMENTWIND, 0 )
   UpgradeSkill( SKID.SA_ELEMENTGROUND, 0 )
   UpgradeSkill( SKID.SA_ELEMENTFIRE, 0 )
   UpgradeSkill( SKID.SA_CREATECON, 0 )
   UpgradeSkill( SKID.SA_DRAGONOLOGY, 0 )
   UpgradeSkill( SKID.SA_SEISMICWEAPON, 1 )
   UpgradeSkill( SKID.SA_CASTCANCEL, 5 )
   UpgradeSkill( SKID.SA_MAGICROD, 3 )
   UpgradeSkill( SKID.SA_FROSTWEAPON, 2 )
   UpgradeSkill( SKID.SA_LIGHTNINGLOADER, 2 )
   UpgradeSkill( SKID.SA_FLAMELAUNCHER, 2 )
   UpgradeSkill( SKID.SA_FREECAST, 5 )
   UpgradeSkill( SKID.SA_SPELLBREAKER, 3 )
   UpgradeSkill( SKID.SA_DELUGE, 3 )
   UpgradeSkill( SKID.SA_VIOLENTGALE, 3 )
   UpgradeSkill( SKID.SA_VOLCANO, 3 )
   UpgradeSkill( SKID.SA_AUTOSPELL, 1 )
   UpgradeSkill( SKID.SA_DISPELL, 4 )
   UpgradeSkill( SKID.SA_LANDPROTECTOR, 5 )
   UpgradeSkill( SKID.SA_ABRACADABRA, 0 )
end

function upgradeSkill_Archer()
   UpgradeSkill( SKID.AC_DOUBLE, 10 )
   UpgradeSkill( SKID.AC_OWL, 10 )
   UpgradeSkill( SKID.AC_CHARGEARROW, 0 )
   UpgradeSkill( SKID.AC_SHOWER, 9 )
   UpgradeSkill( SKID.AC_VULTURE, 10 )
   UpgradeSkill( SKID.AC_MAKINGARROW, 0 )
   UpgradeSkill( SKID.AC_CONCENTRATION, 10 )
end

function upgradeSkill_Hunter()
   UpgradeSkill( SKID.HT_BEASTBANE, 10 )
   UpgradeSkill( SKID.HT_SKIDTRAP, 5 )
   UpgradeSkill( SKID.HT_LANDMINE, 1 )
   UpgradeSkill( SKID.HT_POWER, 0 )
   UpgradeSkill( SKID.HT_FALCON, 1 )
   UpgradeSkill( SKID.HT_FLASHER, 2 )
   UpgradeSkill( SKID.HT_ANKLESNARE, 1 )
   UpgradeSkill( SKID.HT_REMOVETRAP, 1 )
   UpgradeSkill( SKID.HT_PHANTASMIC, 0 )
   UpgradeSkill( SKID.HT_BLITZBEAT, 5 )
   UpgradeSkill( SKID.HT_SANDMAN, 5 )
   UpgradeSkill( SKID.HT_FREEZINGTRAP, 1 )
   UpgradeSkill( SKID.HT_SHOCKWAVE, 1 )
   UpgradeSkill( SKID.HT_SPRINGTRAP, 1 )
   UpgradeSkill( SKID.HT_DETECTING, 0 )
   UpgradeSkill( SKID.HT_STEELCROW, 10 )
   UpgradeSkill( SKID.HT_BLASTMINE, 5 )
   UpgradeSkill( SKID.HT_TALKIEBOX, 0 )
   UpgradeSkill( SKID.HT_CLAYMORETRAP, 0 )
end

function upgradeSkill_Bard()
   UpgradeSkill( SKID.BD_ADAPTATION, 1 )
   UpgradeSkill( SKID.BA_MUSICALLESSON, 10 )
   UpgradeSkill( SKID.BA_DISSONANCE, 3 )
   UpgradeSkill( SKID.BA_PANGVOICE, 0 )
   UpgradeSkill( SKID.BD_ENCORE, 1 )
   UpgradeSkill( SKID.BA_MUSICALSTRIKE, 5 )
   UpgradeSkill( SKID.BA_WHISTLE, 10 )
   UpgradeSkill( SKID.BA_ASSASSINCROSS, 9 )
   UpgradeSkill( SKID.BA_POEMBRAGI, 10 )
   UpgradeSkill( SKID.BA_APPLEIDUN, 0 )
   UpgradeSkill( SKID.BA_FROSTJOKE, 0 )
   UpgradeSkill( SKID.BD_LULLABY, 0 )
   UpgradeSkill( SKID.BD_ROKISWEIL, 0 )
   UpgradeSkill( SKID.BD_SIEGFRIED, 0 )
   UpgradeSkill( SKID.BD_DRUMBATTLEFIELD, 0 )
   UpgradeSkill( SKID.BD_INTOABYSS, 0 )
   UpgradeSkill( SKID.BD_ETERNALCHAOS, 0 )
   UpgradeSkill( SKID.BD_RICHMANKIM, 0 )
   UpgradeSkill( SKID.BD_RINGNIBELUNGEN, 0 )
end

function upgradeSkill_Dancer()
   UpgradeSkill( SKID.BD_ADAPTATION, 1 )
   UpgradeSkill( SKID.DC_DANCINGLESSON, 10 )
   UpgradeSkill( SKID.DC_UGLYDANCE, 3 )
   UpgradeSkill( SKID.DC_WINKCHARM, 0 )
   UpgradeSkill( SKID.BD_ENCORE, 1 )
   UpgradeSkill( SKID.DC_THROWARROW, 5 )
   UpgradeSkill( SKID.DC_HUMMING, 10 )
   UpgradeSkill( SKID.DC_DONTFORGETME, 10 )
   UpgradeSkill( SKID.DC_FORTUNEKISS, 9 )
   UpgradeSkill( SKID.DC_SERVICEFORYOU, 0 )
   UpgradeSkill( SKID.DC_SCREAM, 0 )
   UpgradeSkill( SKID.BD_LULLABY, 0 )
   UpgradeSkill( SKID.BD_ROKISWEIL, 0 )
   UpgradeSkill( SKID.BD_SIEGFRIED, 0 )
   UpgradeSkill( SKID.BD_DRUMBATTLEFIELD, 0 )
   UpgradeSkill( SKID.BD_INTOABYSS, 0 )
   UpgradeSkill( SKID.BD_ETERNALCHAOS, 0 )
   UpgradeSkill( SKID.BD_RICHMANKIM, 0 )
   UpgradeSkill( SKID.BD_RINGNIBELUNGEN, 0 )
end

function upgradeSkill_RuneKnight()
   UpgradeSkill( SKID.RK_RUNEMASTERY, 10 )
   UpgradeSkill( SKID.RK_PHANTOMTHRUST, 0 )
   UpgradeSkill( SKID.RK_DRAGONTRAINING, 5 )
   UpgradeSkill( SKID.RK_ENCHANTBLADE, 5 )
   UpgradeSkill( SKID.RK_HUNDREDSPEAR, 0 )
   UpgradeSkill( SKID.RK_DRAGONHOWLING, 4 )
   UpgradeSkill( SKID.RK_DRAGONBREATH, 10 )
   UpgradeSkill( SKID.RK_DEATHBOUND, 5 )
   UpgradeSkill( SKID.RK_SONICWAVE, 2 )
   UpgradeSkill( SKID.RK_WINDCUTTER, 3 )
   UpgradeSkill( SKID.RK_IGNITIONBREAK, 5 )
end

function upgradeSkill_RoyalGuard()
   UpgradeSkill( SKID.LG_MOONSLASHER, 5 )
   UpgradeSkill( SKID.LG_BANISHINGPOINT, 10 )
   UpgradeSkill( SKID.LG_FORCEOFVANGUARD, 5 )
   UpgradeSkill( SKID.LG_TRAMPLE, 0 )
   UpgradeSkill( SKID.LG_PIETY, 5 )
   UpgradeSkill( SKID.LG_REFLECTDAMAGE, 0 )
   UpgradeSkill( SKID.LG_SHIELDPRESS, 0 )
   UpgradeSkill( SKID.LG_EXEEDBREAK, 5 )
   UpgradeSkill( SKID.LG_PINPOINTATTACK, 5 )
   UpgradeSkill( SKID.LG_RAGEBURST, 1 )
   UpgradeSkill( SKID.LG_PRESTIGE, 0 )
   UpgradeSkill( SKID.LG_RAYOFGENESIS, 0 )
   UpgradeSkill( SKID.LG_EARTHDRIVE, 0 )
   UpgradeSkill( SKID.LG_CANNONSPEAR, 5 )
   UpgradeSkill( SKID.LG_OVERBRAND, 5 )
   UpgradeSkill( SKID.LG_BANDING, 5 )
   UpgradeSkill( SKID.LG_SHIELDSPELL, 0 )
   UpgradeSkill( SKID.LG_HESPERUSLIT, 0 )
   UpgradeSkill( SKID.LG_INSPIRATION, 0 )
   UpgradeSkill( SKID.TK_STORMKICK, 0 )
   UpgradeSkill( SKID.TK_STORMKICK, 0 )

end

function upgradeSkill_LordKnight()
   UpgradeSkill( SKID.LK_BERSERK, 0 )
   UpgradeSkill( SKID.LK_TENSIONRELAX, 0 )
   UpgradeSkill( SKID.LK_PARRYING, 0 )
   UpgradeSkill( SKID.LK_AURABLADE, 0 )
   UpgradeSkill( SKID.LK_CONCENTRATION, 5 )
   UpgradeSkill( SKID.LK_HEADCRUSH, 5 )
   UpgradeSkill( SKID.LK_SPIRALPIERCE, 5 )
   UpgradeSkill( SKID.LK_JOINTBEAT, 5 )
end

function upgradeSkill_Paladin()
   UpgradeSkill( SKID.PA_PRESSURE, 5 )
   UpgradeSkill( SKID.PA_SHIELDCHAIN, 5 )
   UpgradeSkill( SKID.PA_GOSPEL, 10 )
   UpgradeSkill( SKID.PA_SACRIFICE, 0 )
end

function upgradeSkill_Mechanic()
   UpgradeSkill( SKID.NC_MADOLICENCE, 5 )
   UpgradeSkill( SKID.NC_TRAININGAXE, 10 )
   UpgradeSkill( SKID.NC_RESEARCHFE, 5 )
   UpgradeSkill( SKID.NC_REPAIR, 5 )
   UpgradeSkill( SKID.NC_BOOSTKNUCKLE, 5 )
   UpgradeSkill( SKID.NC_ACCELERATION, 3 )
   UpgradeSkill( SKID.NC_MAINFRAME, 4 )
   UpgradeSkill( SKID.NC_AXETORNADO, 5 )
   UpgradeSkill( SKID.NC_AXEBOOMERANG, 5 )
   UpgradeSkill( SKID.NC_SILVERSNIPER, 2 )
   UpgradeSkill( SKID.NC_PILEBUNKER, 0 )
   UpgradeSkill( SKID.NC_VULCANARM, 0 )
   UpgradeSkill( SKID.NC_HOVERING, 0 )
   UpgradeSkill( SKID.NC_SHAPESHIFT, 0 )
   UpgradeSkill( SKID.NC_SELFDESTRUCTION, 0 )
   UpgradeSkill( SKID.NC_POWERSWING, 0 )
   UpgradeSkill( SKID.NC_FLAMELAUNCHER, 0 )
   UpgradeSkill( SKID.NC_COLDSLOWER, 0 )
   UpgradeSkill( SKID.NC_F_SIDESLIDE, 0 )
   UpgradeSkill( SKID.NC_INFRAREDSCAN, 0 )
   UpgradeSkill( SKID.NC_EMERGENCYCOOL, 0 )
   UpgradeSkill( SKID.NC_DISJOINT, 0 )
   UpgradeSkill( SKID.NC_MAGICDECOY, 0 )
   UpgradeSkill( SKID.NC_ARMSCANNON, 0 )
   UpgradeSkill( SKID.NC_B_SIDESLIDE, 0 )
   UpgradeSkill( SKID.NC_ANALYZE, 0 )
   UpgradeSkill( SKID.NC_MAGNETICFIELD, 0 )
   UpgradeSkill( SKID.NC_NEUTRALBARRIER, 0 )
   UpgradeSkill( SKID.NC_STEALTHFIELD, 0 )
end

function upgradeSkill_Genetic()
   UpgradeSkill( SKID.GN_CHANGEMATERIAL, 1 )
   UpgradeSkill( SKID.GN_TRAINING_SWORD, 5 )
   UpgradeSkill( SKID.GN_S_PHARMACY, 10 )
   UpgradeSkill( SKID.GN_REMODELING_CART, 5 )
   UpgradeSkill( SKID.GN_SLINGITEM, 1 )
   UpgradeSkill( SKID.GN_MIX_COOKING, 2 )
   UpgradeSkill( SKID.GN_THORNS_TRAP, 5 )
   UpgradeSkill( SKID.GN_BLOOD_SUCKER, 5 )
   UpgradeSkill( SKID.GN_SPORE_EXPLOSION, 5 )
   UpgradeSkill( SKID.GN_CART_TORNADO, 0 )
   UpgradeSkill( SKID.GN_MAKEBOMB, 0 )
   UpgradeSkill( SKID.GN_WALLOFTHORN, 0 )
   UpgradeSkill( SKID.GN_HELLS_PLANT, 0 )
   UpgradeSkill( SKID.GN_DEMONIC_FIRE, 0 )
   UpgradeSkill( SKID.GN_CARTCANNON, 5 )
   UpgradeSkill( SKID.GN_CRAZYWEED, 0 )
   UpgradeSkill( SKID.GN_MANDRAGORA, 0 )
   UpgradeSkill( SKID.GN_FIRE_EXPANSION, 0 )
   UpgradeSkill( SKID.GN_CARTBOOST, 5 )
end

function upgradeSkill_WhiteSmith()
   UpgradeSkill( SKID.WS_CARTBOOST, 0 )
   UpgradeSkill( SKID.WS_CARTTERMINATION, 0 )
   UpgradeSkill( SKID.WS_MELTDOWN, 10 )
   UpgradeSkill( SKID.WS_OVERTHRUSTMAX, 0 )
   UpgradeSkill( SKID.WS_WEAPONREFINE, 10 )
end

function upgradeSkill_Creater()
   UpgradeSkill( SKID.CR_CULTIVATION, 0 )
   UpgradeSkill( SKID.CR_SLIMPITCHER, 10 )
   UpgradeSkill( SKID.CR_ACIDDEMONSTRATION, 10 )
   UpgradeSkill( SKID.CR_FULLPROTECTION, 0 )
end

function upgradeSkill_ArchBishop()
   UpgradeSkill( SKID.AB_JUDEX, 0 )
   UpgradeSkill( SKID.AB_CHEAL, 3 )
   UpgradeSkill( SKID.AB_CLEMENTIA, 3 )
   UpgradeSkill( SKID.AB_PRAEFATIO, 5 )
   UpgradeSkill( SKID.AB_DUPLELIGHT, 5 )
   UpgradeSkill( SKID.AB_LAUDAAGNUS, 2 )
   UpgradeSkill( SKID.AB_CANTO, 3 )
   UpgradeSkill( SKID.AB_RENOVATIO, 1 )
   UpgradeSkill( SKID.AB_ANCILLA, 1 )
   UpgradeSkill( SKID.AB_ORATIO, 5 )
   UpgradeSkill( SKID.AB_LAUDARAMUS, 2 )
   UpgradeSkill( SKID.AB_ADORAMUS, 0 )
   UpgradeSkill( SKID.AB_HIGHNESSHEAL, 5 )
   UpgradeSkill( SKID.AB_EXPIATIO, 1 )
   UpgradeSkill( SKID.AB_CLEARANCE, 5 )
   UpgradeSkill( SKID.AB_EPICLESIS, 1 )
   UpgradeSkill( SKID.AB_SILENTIUM, 2 )
   UpgradeSkill( SKID.AB_EUCHARISTICA, 0 )
   UpgradeSkill( SKID.AB_SECRAMENT, 5 )
end

function upgradeSkill_Sura()
   UpgradeSkill( SKID.SR_POWERVELOCITY, 10 )
   UpgradeSkill( SKID.SR_RIDEINLIGHTNING, 10 )
   UpgradeSkill( SKID.SR_DRAGONCOMBO, 10 )
   UpgradeSkill( SKID.SR_ASSIMILATEPOWER, 10 )
   UpgradeSkill( SKID.SR_SKYNETBLOW, 10 )
   UpgradeSkill( SKID.SR_FALLENEMPIRE, 10 )
   UpgradeSkill( SKID.SR_GENTLETOUCH_QUIET, 10 )
   UpgradeSkill( SKID.SR_GENTLETOUCH_CURE, 10 )
   UpgradeSkill( SKID.SR_HOWLINGOFLION, 10 )
   UpgradeSkill( SKID.SR_CRESCENTELBOW, 10 )
   UpgradeSkill( SKID.SR_TIGERCANNON, 10 )
   UpgradeSkill( SKID.SR_CURSEDCIRCLE, 10 )
   UpgradeSkill( SKID.SR_GENTLETOUCH_ENERGYGAIN, 10 )
   UpgradeSkill( SKID.SR_GENTLETOUCH_CHANGE, 10 )
   UpgradeSkill( SKID.SR_WINDMILL, 10 )
   UpgradeSkill( SKID.SR_EARTHSHAKER, 10 )
   UpgradeSkill( SKID.SR_GENTLETOUCH_REVITALIZE, 10 )
   UpgradeSkill( SKID.SR_LIGHTNINGWALK, 10 )
   UpgradeSkill( SKID.SR_RAMPAGEBLASTER, 10 )
   UpgradeSkill( SKID.SR_KNUCKLEARROW, 10 )
   UpgradeSkill( SKID.SR_RAISINGDRAGON, 10 )
   UpgradeSkill( SKID.SR_GATEOFHELL, 10 )
end

function upgradeSkill_HighPriest()
   UpgradeSkill( SKID.HP_ASSUMPTIO, 5 )
   UpgradeSkill( SKID.HP_BASILICA, 5 )
   UpgradeSkill( SKID.HP_MANARECHARGE, 0 )
   UpgradeSkill( SKID.HP_MEDITATIO, 10 )
end

function upgradeSkill_Champion()
   UpgradeSkill( SKID.CH_PALMSTRIKE, 10 )
   UpgradeSkill( SKID.CH_SOULCOLLECT, 10 )
   UpgradeSkill( SKID.CH_TIGERFIST, 10 )
   UpgradeSkill( SKID.CH_CHAINCRUSH, 10 )
end

function upgradeSkill_GuillotineCross()
   UpgradeSkill( SKID.GC_CROSSIMPACT, 5 )
   UpgradeSkill( SKID.GC_CLOAKINGEXCEED, 5 )
   UpgradeSkill( SKID.GC_ROLLINGCUTTER, 5 )
   UpgradeSkill( SKID.GC_WEAPONBLOCKING, 5 )
   UpgradeSkill( SKID.GC_VENOMIMPRESS, 5 )
   UpgradeSkill( SKID.GC_RESEARCHNEWPOISON, 10 )
   UpgradeSkill( SKID.GC_DARKILLUSION, 5 )
   UpgradeSkill( SKID.GC_CROSSRIPPERSLASHER, 5 )
   UpgradeSkill( SKID.GC_WEAPONCRUSH, 4 )
   UpgradeSkill( SKID.GC_COUNTERSLASH, 0 )
   UpgradeSkill( SKID.GC_CREATENEWPOISON, 0 )
   UpgradeSkill( SKID.GC_ANTIDOTE, 0 )
   UpgradeSkill( SKID.GC_PHANTOMMENACE, 0 )
   UpgradeSkill( SKID.GC_POISONINGWEAPON, 0 )
   UpgradeSkill( SKID.GC_HALLUCINATIONWALK, 0 )
   UpgradeSkill( SKID.GC_VENOMPRESSURE, 0 )
   UpgradeSkill( SKID.GC_POISONSMOKE, 0 )
end

function upgradeSkill_ShadowChaser()
   UpgradeSkill( SKID.SC_REPRODUCE, 10 )
   UpgradeSkill( SKID.SC_SHADOWFORM, 10 )
   UpgradeSkill( SKID.SC_FATALMENACE, 5 )
   UpgradeSkill( SKID.SC_BODYPAINT, 5 )
   UpgradeSkill( SKID.SC_TRIANGLESHOT, 0 )
   UpgradeSkill( SKID.SC_MANHOLE, 0 )
   UpgradeSkill( SKID.SC_STRIPACCESSARY, 5 )
   UpgradeSkill( SKID.SC_AUTOSHADOWSPELL, 10 )
   UpgradeSkill( SKID.SC_ENERVATION, 3 )
   UpgradeSkill( SKID.SC_GROOMY, 3 )
   UpgradeSkill( SKID.SC_IGNORANCE, 3 )
   UpgradeSkill( SKID.SC_CHAOSPANIC, 0 )
   UpgradeSkill( SKID.SC_DIMENSIONDOOR, 0 )
   UpgradeSkill( SKID.SC_DEADLYINFECT, 0 )
   UpgradeSkill( SKID.SC_LAZINESS, 0 )
   UpgradeSkill( SKID.SC_WEAKNESS, 0 )
   UpgradeSkill( SKID.SC_FEINTBOMB, 0 )
   UpgradeSkill( SKID.SC_BLOODYLUST, 0 )
   UpgradeSkill( SKID.SC_UNLUCKY, 0 )
   UpgradeSkill( SKID.SC_INVISIBILITY, 0 )
   UpgradeSkill( SKID.SC_MAELSTROM, 0 )
end

function upgradeSkill_AssassinCross()
   UpgradeSkill( SKID.ASC_BREAKER, 10 )
   UpgradeSkill( SKID.ASC_CDP, 0 )
   UpgradeSkill( SKID.ASC_EDP, 0 )
   UpgradeSkill( SKID.ASC_KATAR, 0 )
   UpgradeSkill( SKID.ASC_METEORASSAULT, 10 )
end

function upgradeSkill_Stalker()
   UpgradeSkill( SKID.ST_CHASEWALK, 5 )
   UpgradeSkill( SKID.RG_STRIPARMOR, 2 )
   UpgradeSkill( SKID.RG_STRIPWEAPON, 5 )
   UpgradeSkill( SKID.ST_FULLSTRIP, 2 )
   UpgradeSkill( SKID.ST_REJECTSWORD, 5 )
   UpgradeSkill( SKID.ST_PRESERVE, 1 )
end

function upgradeSkill_Warlock()
   UpgradeSkill(SKID.WL_MARSHOFABYSS, 5 )
   UpgradeSkill(SKID.WL_RADIUS, 3 )
   UpgradeSkill(SKID.WL_RELEASE, 2 )
   UpgradeSkill(SKID.WL_SUMMONFB, 5 )
   UpgradeSkill(SKID.WL_SUMMONWB, 5 )
   UpgradeSkill(SKID.WL_SUMMONBL, 5 )
   UpgradeSkill(SKID.WL_SUMMONSTONE, 5 )
   UpgradeSkill(SKID.WL_FREEZE_SP, 0 )
   UpgradeSkill(SKID.WL_DRAINLIFE, 5 )
   UpgradeSkill(SKID.WL_READING_SB, 1 )
   UpgradeSkill(SKID.WL_CRIMSONROCK, 5 )
   UpgradeSkill(SKID.WL_FROSTMISTY, 5 )
   UpgradeSkill(SKID.WL_CHAINLIGHTNING, 4 )
   UpgradeSkill(SKID.WL_SIENNAEXECRATE, 0 )
   UpgradeSkill(SKID.WL_SOULEXPANSION, 0 )
   UpgradeSkill(SKID.WL_STASIS, 0 )
   UpgradeSkill(SKID.WL_HELLINFERNO, 0 )
   UpgradeSkill(SKID.WL_JACKFROST, 0 )
   UpgradeSkill(SKID.WL_EARTHSTRAIN, 0 )
   UpgradeSkill(SKID.WL_WHITEIMPRISON, 0 )
   UpgradeSkill(SKID.WL_COMET, 0 )
   UpgradeSkill(SKID.WL_RECOGNIZEDSPELL, 0 )
   UpgradeSkill(SKID.WL_TETRAVORTEX, 0 )
end

function upgradeSkill_Sorcerer()
   UpgradeSkill( SKID.SO_VACUUM_EXTREME, 0 )
   UpgradeSkill( SKID.SO_STRIKING, 5 )
   UpgradeSkill( SKID.SO_ELECTRICWALK, 5 )
   UpgradeSkill( SKID.SO_EL_ANALYSIS, 2 )
   UpgradeSkill( SKID.SO_CLOUD_KILL, 0 )
   UpgradeSkill( SKID.SO_WARMER, 5  )
   UpgradeSkill( SKID.SO_EARTHGRAVE, 0 )
   UpgradeSkill( SKID.SO_SPELLFIST, 0 )
   UpgradeSkill( SKID.SO_DIAMONDDUST, 5 )
   UpgradeSkill( SKID.SO_VARETYR_SPEAR, 0 )
   UpgradeSkill( SKID.SO_EL_CONTROL, 4 )
   UpgradeSkill( SKID.SO_POISON_BUSTER, 0 )
   UpgradeSkill( SKID.SO_FIREWALK, 5 )
   UpgradeSkill( SKID.SO_ARRULLO, 5 )
   UpgradeSkill( SKID.SO_PSYCHIC_WAVE, 5 )
   UpgradeSkill( SKID.SO_SUMMON_AQUA, 3 )
   UpgradeSkill( SKID.SO_SUMMON_VENTUS, 0 )
   UpgradeSkill( SKID.SO_EL_SYMPATHY, 0 )
   UpgradeSkill( SKID.SO_EL_ACTION, 0 )
   UpgradeSkill( SKID.SO_SUMMON_AGNI, 0 )
   UpgradeSkill( SKID.SO_SUMMON_TERA, 0 )
   UpgradeSkill( SKID.SO_WATER_INSIGNIA, 0 )
   UpgradeSkill( SKID.SO_WIND_INSIGNIA, 0 )
   UpgradeSkill( SKID.SO_EL_CURE, 0 )
   UpgradeSkill( SKID.SO_FIRE_INSIGNIA, 10 )
   UpgradeSkill( SKID.SO_EARTH_INSIGNIA, 10 )
end

function upgradeSkill_HighWizard()
   UpgradeSkill( SKID.HW_GANBANTEIN, 1 )
   UpgradeSkill( SKID.HW_MAGICCRASHER, 1 )
   UpgradeSkill( SKID.HW_SOULDRAIN, 5 )
   UpgradeSkill( SKID.HW_NAPALMVULCAN, 5 )
   UpgradeSkill( SKID.HW_MAGICPOWER, 8 )
   UpgradeSkill( SKID.HW_GRAVITATION, 1 )
end

function upgradeSkill_Professor()
   UpgradeSkill( SKID.PF_SPIDERWEB, 0 )
   UpgradeSkill( SKID.PF_SOULCHANGE, 1 )
   UpgradeSkill( SKID.PF_FOGWALL, 1 )
   UpgradeSkill( SKID.PF_HPCONVERSION, 5 )
   UpgradeSkill( SKID.PF_DOUBLECASTING, 5 )
   UpgradeSkill( SKID.PF_MEMORIZE, 1 )
   UpgradeSkill( SKID.PF_SOULBURN, 5 )
   UpgradeSkill( SKID.PF_MINDBREAKER, 2 )
end

function upgradeSkill_Ranger()
   UpgradeSkill( SKID.RA_AIMEDBOLT, 10 )
   UpgradeSkill( SKID.RA_RESEARCHTRAP, 10 )
   UpgradeSkill( SKID.RA_RANGERMAIN, 10 )
   UpgradeSkill( SKID.RA_ELECTRICSHOCKER, 10 )
   UpgradeSkill( SKID.RA_WUGMASTERY, 10 )
   UpgradeSkill( SKID.RA_ARROWSTORM, 10 )
   UpgradeSkill( SKID.RA_CLUSTERBOMB, 10 )
   UpgradeSkill( SKID.RA_DETONATOR, 10 )
   UpgradeSkill( SKID.RA_CAMOUFLAGE, 10 )
   UpgradeSkill( SKID.RA_TOOTHOFWUG, 10 )
   UpgradeSkill( SKID.RA_WUGRIDER, 10 )
   UpgradeSkill( SKID.RA_FEARBREEZE, 10 )
   UpgradeSkill( SKID.RA_MAGENTATRAP, 10 )
   UpgradeSkill( SKID.RA_FIRINGTRAP, 10 )
   UpgradeSkill( SKID.RA_ICEBOUNDTRAP, 10 )
   UpgradeSkill( SKID.RA_SENSITIVEKEEN, 10 )
   UpgradeSkill( SKID.RA_WUGSTRIKE, 10 )
   UpgradeSkill( SKID.RA_WUGDASH, 10 )
   UpgradeSkill( SKID.RA_COBALTTRAP, 10 )
   UpgradeSkill( SKID.RA_WUGBITE, 10 )
   UpgradeSkill( SKID.RA_MAIZETRAP, 10 )
   UpgradeSkill( SKID.RA_VERDURETRAP, 10 )
end

function upgradeSkill_Minstrel()
   UpgradeSkill( SKID.WM_SEVERE_RAINSTORM, 5 )
   UpgradeSkill( SKID.WM_REVERBERATION, 5 )
   UpgradeSkill( SKID.WM_LESSON, 10 )
   UpgradeSkill( SKID.WM_DOMINION_IMPULSE, 5 )
   UpgradeSkill( SKID.WM_SIRCLEOFNATURE, 5 )
   UpgradeSkill( SKID.WM_LULLABY_DEEPSLEEP, 5 )
   UpgradeSkill( SKID.WM_POEMOFNETHERWORLD, 5 )
   UpgradeSkill( SKID.WM_METALICSOUND, 5 )
   UpgradeSkill( SKID.WM_DEADHILLHERE, 4 )
   UpgradeSkill( SKID.WM_VOICEOFSIREN, 10 )
   UpgradeSkill( SKID.WM_RANDOMIZESPELL, 10 )
   UpgradeSkill( SKID.WM_GREAT_ECHO, 10 )
   UpgradeSkill( SKID.MI_HARMONIZE, 10 )
   UpgradeSkill( SKID.MI_RUSH_WINDMILL, 10 )
   UpgradeSkill( SKID.MI_ECHOSONG, 10 )
   UpgradeSkill( SKID.WM_GLOOMYDAY, 10 )
   UpgradeSkill( SKID.WM_DANCE_WITH_WUG, 10 )
   UpgradeSkill( SKID.WM_SONG_OF_MANA, 10 )
   UpgradeSkill( SKID.WM_LERADS_DEW, 10 )
   UpgradeSkill( SKID.WM_SATURDAY_NIGHT_FEVER, 10 )
   UpgradeSkill( SKID.WM_MELODYOFSINK, 10 )
   UpgradeSkill( SKID.WM_BEYOND_OF_WARCRY, 10 )
   UpgradeSkill( SKID.WM_SOUND_OF_DESTRUCTION, 10 )
   UpgradeSkill( SKID.WM_UNLIMITED_HUMMING_VOICE, 10 )
end

function upgradeSkill_Wanderer()
   UpgradeSkill( SKID.WM_SEVERE_RAINSTORM, 5 )
   UpgradeSkill( SKID.WM_REVERBERATION, 5 )
   UpgradeSkill( SKID.WM_LESSON, 10 )
   UpgradeSkill( SKID.WM_DOMINION_IMPULSE, 5 )
   UpgradeSkill( SKID.WM_SIRCLEOFNATURE, 5 )
   UpgradeSkill( SKID.WM_LULLABY_DEEPSLEEP, 5 )
   UpgradeSkill( SKID.WM_POEMOFNETHERWORLD, 5 )
   UpgradeSkill( SKID.WM_METALICSOUND, 5 )
   UpgradeSkill( SKID.WM_DEADHILLHERE, 4 )
   UpgradeSkill( SKID.WM_VOICEOFSIREN, 10 )
   UpgradeSkill( SKID.WM_RANDOMIZESPELL, 10 )
   UpgradeSkill( SKID.WM_GREAT_ECHO, 10 )
   UpgradeSkill( SKID.WA_SWING_DANCE, 10 )
   UpgradeSkill( SKID.WA_SYMPHONY_OF_LOVER, 10 )
   UpgradeSkill( SKID.WA_MOONLIT_SERENADE, 10 )
   UpgradeSkill( SKID.WM_GLOOMYDAY, 10 )
   UpgradeSkill( SKID.WM_DANCE_WITH_WUG, 10 )
   UpgradeSkill( SKID.WM_SONG_OF_MANA, 10 )
   UpgradeSkill( SKID.WM_LERADS_DEW, 10 )
   UpgradeSkill( SKID.WM_SATURDAY_NIGHT_FEVER, 10 )
   UpgradeSkill( SKID.WM_MELODYOFSINK, 10 )
   UpgradeSkill( SKID.WM_BEYOND_OF_WARCRY, 10 )
   UpgradeSkill( SKID.WM_SOUND_OF_DESTRUCTION, 10 )
   UpgradeSkill( SKID.WM_UNLIMITED_HUMMING_VOICE, 10 )
end

function upgradeSkill_Sniper()
   UpgradeSkill( SKID.SN_FALCONASSAULT, 5 )
   UpgradeSkill( SKID.SN_SHARPSHOOTING, 5 )
   UpgradeSkill( SKID.SN_SIGHT, 10 )
   UpgradeSkill( SKID.SN_WINDWALK, 0 )
end

function upgradeSkill_Crown()
   UpgradeSkill( SKID.CG_ARROWVULCAN, 10 )
   UpgradeSkill( SKID.CG_MOONLIT, 5 )
   UpgradeSkill( SKID.CG_MARIONETTE, 1 )
   UpgradeSkill( SKID.CG_HERMODE, 0 )
   UpgradeSkill( SKID.CG_LONGINGFREEDOM, 0 )
   UpgradeSkill( SKID.CG_TAROTCARD, 4 )
end

function upgradeSkill_Gipsy()
   UpgradeSkill( SKID.CG_ARROWVULCAN, 10 )
   UpgradeSkill( SKID.CG_MOONLIT, 5 )
   UpgradeSkill( SKID.CG_MARIONETTE, 1 )
   UpgradeSkill( SKID.CG_HERMODE, 0 )
   UpgradeSkill( SKID.CG_LONGINGFREEDOM, 0 )
   UpgradeSkill( SKID.CG_TAROTCARD, 4 )

end

function upgradeSkill_SuperNovice()
   UpgradeSkill( SKID.SM_SWORD, 0 )
   UpgradeSkill( SKID.SM_BASH, 0 )
   UpgradeSkill( SKID.SM_PROVOKE, 0 )
   UpgradeSkill( SKID.TF_DOUBLE, 10 )
   UpgradeSkill( SKID.TF_STEAL, 0 )
   UpgradeSkill( SKID.TF_POISON, 0 )
   UpgradeSkill( SKID.SM_RECOVERY, 0 )
   UpgradeSkill( SKID.SM_MAGNUM, 10 )
   UpgradeSkill( SKID.SM_ENDURE, 0 )
   UpgradeSkill( SKID.TF_MISS, 10 )
   UpgradeSkill( SKID.TF_HIDING, 0 )
   UpgradeSkill( SKID.TF_DETOXIFY, 0 )
   UpgradeSkill( SKID.MG_STONECURSE, 0 )
   UpgradeSkill( SKID.MG_COLDBOLT, 0 )
   UpgradeSkill( SKID.MG_LIGHTNINGBOLT, 0 )
   UpgradeSkill( SKID.MG_NAPALMBEAT, 0 )
   UpgradeSkill( SKID.MG_FIREBOLT, 0 )
   UpgradeSkill( SKID.MG_SIGHT, 0 )
   UpgradeSkill( SKID.MG_SRECOVERY, 0 )
   UpgradeSkill( SKID.MG_FROSTDIVER, 0 )
   UpgradeSkill( SKID.MG_THUNDERSTORM, 0 )
   UpgradeSkill( SKID.MG_SOULSTRIKE, 0 )
   UpgradeSkill( SKID.MG_FIREBALL, 0 )
   UpgradeSkill( SKID.AL_RUWACH, 1 )
   UpgradeSkill( SKID.AL_HEAL, 10 )
   UpgradeSkill( SKID.AL_HOLYWATER, 0 )
   UpgradeSkill( SKID.AL_DP, 10 )
   UpgradeSkill( SKID.MG_SAFETYWALL, 0 )
   UpgradeSkill( SKID.MG_FIREWALL, 0 )
   UpgradeSkill( SKID.AC_OWL, 0 )
   UpgradeSkill( SKID.AL_TELEPORT, 2 )
   UpgradeSkill( SKID.AL_CURE, 0 )
   UpgradeSkill( SKID.AL_INCAGI, 10 )
   UpgradeSkill( SKID.AL_BLESSING, 10 )
   UpgradeSkill( SKID.AL_DEMONBANE, 10 )
   UpgradeSkill( SKID.AL_ANGELUS, 0 )
   UpgradeSkill( SKID.AC_VULTURE, 0 )
   UpgradeSkill( SKID.AL_WARP, 4 )
   UpgradeSkill( SKID.MC_INCCARRY, 10 )
   UpgradeSkill( SKID.AL_DECAGI, 0 )
   UpgradeSkill( SKID.MC_IDENTIFY, 0 )
   UpgradeSkill( SKID.AL_CRUCIS, 0 )
   UpgradeSkill( SKID.MC_MAMMONITE, 0 )
   UpgradeSkill( SKID.AC_CONCENTRATION, 0 )
   UpgradeSkill( SKID.AL_PNEUMA, 1 )
   UpgradeSkill( SKID.MC_DISCOUNT, 0 )
   UpgradeSkill( SKID.MC_OVERCHARGE, 0 )
   UpgradeSkill( SKID.MC_PUSHCART, 10 )
   UpgradeSkill( SKID.MC_VENDING, 0 )
end

function upgradeSkill_Ninja()
   UpgradeSkill( SKID.NJ_TOBIDOUGU, 10 )
   UpgradeSkill( SKID.NJ_TATAMIGAESHI, 0 )
   UpgradeSkill( SKID.NJ_NINPOU, 10 )
   UpgradeSkill( SKID.NJ_SYURIKEN, 10 )
   UpgradeSkill( SKID.NJ_SHADOWJUMP, 0 )
   UpgradeSkill( SKID.NJ_NEN, 5 )
   UpgradeSkill( SKID.NJ_KOUENKA, 10 )
   UpgradeSkill( SKID.NJ_HYOUSENSOU, 0 )
   UpgradeSkill( SKID.NJ_HUUJIN, 0 )
   UpgradeSkill( SKID.NJ_KUNAI, 5 )
   UpgradeSkill( SKID.NJ_KASUMIKIRI, 0 )
   UpgradeSkill( SKID.NJ_UTSUSEMI, 0 )
   UpgradeSkill( SKID.NJ_KAENSIN, 4 )
   UpgradeSkill( SKID.NJ_SUITON, 0 )
   UpgradeSkill( SKID.NJ_RAIGEKISAI, 0 )
   UpgradeSkill( SKID.NJ_HUUMA, 5 )
   UpgradeSkill( SKID.NJ_KIRIKAGE, 0 )
   UpgradeSkill( SKID.NJ_BAKUENRYU, 0 )
   UpgradeSkill( SKID.NJ_HYOUSYOURAKU, 0 )
   UpgradeSkill( SKID.NJ_KAMAITACHI, 0 )
   UpgradeSkill( SKID.NJ_ZENYNAGE, 10 )
   UpgradeSkill( SKID.NJ_BUNSINJYUTSU, 0 )
   UpgradeSkill( SKID.NJ_ISSEN, 0 )
end

function upgradeSkill_GunSlinger()
   UpgradeSkill( SKID.GS_GLITTERING, 0 )
   UpgradeSkill( SKID.GS_MAGICALBULLET, 0 )
   UpgradeSkill( SKID.GS_SINGLEACTION, 10 )
   UpgradeSkill( SKID.GS_SNAKEEYE, 10 )
   UpgradeSkill( SKID.GS_FLING, 0 )
   UpgradeSkill( SKID.GS_CRACKER, 0 )
   UpgradeSkill( SKID.GS_CHAINACTION, 10 )
   UpgradeSkill( SKID.GS_TRACKING, 10 )
   UpgradeSkill( SKID.GS_DUST, 10 )
   UpgradeSkill( SKID.GS_INCREASING, 0 )
   UpgradeSkill( SKID.GS_TRIPLEACTION, 0 )
   UpgradeSkill( SKID.GS_DISARM, 0 )
   UpgradeSkill( SKID.GS_RAPIDSHOWER, 0 )
   UpgradeSkill( SKID.GS_PIERCINGSHOT, 0 )
   UpgradeSkill( SKID.GS_FULLBUSTER, 10 )
   UpgradeSkill( SKID.GS_ADJUSTMENT, 0 )
   UpgradeSkill( SKID.GS_DESPERADO, 0 )
   UpgradeSkill( SKID.GS_BULLSEYE, 0 )
   UpgradeSkill( SKID.GS_SPREADATTACK, 9 )
   UpgradeSkill( SKID.GS_GATLINGFEVER, 0 )
   UpgradeSkill( SKID.GS_GROUNDDRIFT, 0 )
   UpgradeSkill( SKID.GS_MADNESSCANCEL, 0 )
end

function upgradeSkill_Taekwon()
   UpgradeSkill( SKID.TK_RUN, 10 )
   UpgradeSkill( SKID.TK_STORMKICK, 1 )
   UpgradeSkill( SKID.TK_DOWNKICK, 0 )
   UpgradeSkill( SKID.TK_TURNKICK, 0 )
   UpgradeSkill( SKID.TK_COUNTER, 0 )
   UpgradeSkill( SKID.TK_JUMPKICK, 0 )
   UpgradeSkill( SKID.TK_HIGHJUMP, 5 )
   UpgradeSkill( SKID.TK_READYSTORM, 1 )
   UpgradeSkill( SKID.TK_READYDOWN, 0 )
   UpgradeSkill( SKID.TK_READYTURN, 0 )
   UpgradeSkill( SKID.TK_READYCOUNTER, 0 )
   UpgradeSkill( SKID.TK_DODGE, 0 )
   UpgradeSkill( SKID.TK_HPTIME, 10 )
   UpgradeSkill( SKID.TK_SPTIME, 10 )
   UpgradeSkill( SKID.TK_POWER, 5 )
   UpgradeSkill( SKID.TK_SEVENWIND, 7 )
   UpgradeSkill( SKID.TK_MISSION, 0 )
end

function upgradeSkill_Star()
   UpgradeSkill( SKID.SG_FEEL, 3 )
   UpgradeSkill( SKID.SG_HATE, 3 )
   UpgradeSkill( SKID.SG_DEVIL, 0 )
   UpgradeSkill( SKID.SG_KNOWLEDGE, 10 )
   UpgradeSkill( SKID.SG_SUN_WARM, 3 )
   UpgradeSkill( SKID.SG_SUN_COMFORT, 4 )
   UpgradeSkill( SKID.SG_SUN_ANGER, 0 )
   UpgradeSkill( SKID.SG_SUN_BLESS, 5 )
   UpgradeSkill( SKID.SG_FRIEND, 0 )
   UpgradeSkill( SKID.SG_FUSION, 0 )
   UpgradeSkill( SKID.SG_MOON_WARM, 3 )
   UpgradeSkill( SKID.SG_MOON_COMFORT, 4 )
   UpgradeSkill( SKID.SG_MOON_ANGER, 0 )
   UpgradeSkill( SKID.SG_MOON_BLESS, 5 )
   UpgradeSkill( SKID.SG_STAR_WARM, 3 )
   UpgradeSkill( SKID.SG_STAR_COMFORT, 4 )
   UpgradeSkill( SKID.SG_STAR_ANGER, 0 )
   UpgradeSkill( SKID.SG_STAR_BLESS, 2 )
end

function upgradeSkill_Linker()
   UpgradeSkill( SKID.SL_ALCHEMIST, 5 )
   UpgradeSkill( SKID.SL_STAR, 5 )
   UpgradeSkill( SKID.SL_ASSASIN, 5 )
   UpgradeSkill( SKID.SL_CRUSADER, 5 )
   UpgradeSkill( SKID.SL_BARDDANCER, 5 )
   UpgradeSkill( SKID.SL_SUPERNOVICE, 5 )
   UpgradeSkill( SKID.SL_BLACKSMITH, 5 )
   UpgradeSkill( SKID.SL_SOULLINKER, 4 )
   UpgradeSkill( SKID.SL_ROGUE, 0 )
   UpgradeSkill( SKID.SL_KNIGHT, 0 )
   UpgradeSkill( SKID.SL_HUNTER, 0 )
   UpgradeSkill( SKID.SL_HIGH, 0 )
   UpgradeSkill( SKID.SL_MONK, 5 )
   UpgradeSkill( SKID.SL_KAUPE, 0 )
   UpgradeSkill( SKID.SL_SKE, 0 )
   UpgradeSkill( SKID.SL_SAGE, 5 )
   UpgradeSkill( SKID.SL_KAINA, 0 )
   UpgradeSkill( SKID.SL_PRIEST, 0 )
   UpgradeSkill( SKID.SL_SKA, 0 )
   UpgradeSkill( SKID.SL_WIZARD, 0 )
   UpgradeSkill( SKID.SL_KAITE, 0 )
   UpgradeSkill( SKID.SL_KAAHI, 0 )
   UpgradeSkill( SKID.SL_KAIZEL, 0 )
   UpgradeSkill( SKID.SL_SWOO, 0 )
   UpgradeSkill( SKID.SL_STIN, 0 )
   UpgradeSkill( SKID.SL_STUN, 0 )
   UpgradeSkill( SKID.SL_SMA, 0 )
end


--============================================================
-- descript : 각 직업별 전직시 동작 설정
--============================================================

function buttonEventReceiver_makeNovice()
   ChangeJob( "NOVICE_H" )
   ChangeJob( "NOVICE" )
   upgradeLevel_Novice()
   upgradeSkill_Novice()
end

function buttonEventReceiver_makeNovice_H()
   ChangeJob( "NOVICE_H" )
   upgradeLevel_Novice()
   upgradeSkill_Novice()
end

-- 1. 검사 계열
function buttonEventReceiver_makeSwordman()
   buttonEventReceiver_makeNovice()
   ChangeJob( "SWORDMAN" )
   upgradeLevel_1stChangeJob()
   upgradeSkill_Swordman()
end

function buttonEventReceiver_makeKnight()
   buttonEventReceiver_makeSwordman()
   ChangeJob( "KNIGHT" )
   upgradeLevel_2ndChangeJob()
   upgradeSkill_Knight()
end

function buttonEventReceiver_makeCrusader()
   buttonEventReceiver_makeSwordman()
   ChangeJob( "CRUSADER" )
   upgradeLevel_2ndChangeJob()
   upgradeSkill_Crusader()
end

function buttonEventReceiver_makeRuneKnight()
   buttonEventReceiver_makeKnight()
   ChangeJob( "RUNE_KNIGHT" )
   upgradeLevel_3rdChangeJob()
   upgradeSkill_RuneKnight()
   upgradeSkill_Knight()
   upgradeSkill_Swordman()
end

function buttonEventReceiver_makeRuneKnight_H()
   buttonEventReceiver_makeLordKnight()
   ChangeJob( "RUNE_KNIGHT_H" )
   upgradeLevel_3rdChangeJob()
   upgradeSkill_Swordman()   
   upgradeSkill_Knight()
   upgradeSkill_RuneKnight()
end

function buttonEventReceiver_makeRoyalGuard()
   buttonEventReceiver_makeCrusader()
   ChangeJob( "ROYAL_GUARD" )
   upgradeLevel_3rdChangeJob()
   upgradeSkill_Swordman()
   upgradeSkill_Crusader()
   upgradeSkill_RoyalGuard()
end

function buttonEventReceiver_makeRoyalGuard_H()
   buttonEventReceiver_makePaladin()
   ChangeJob( "ROYAL_GUARD_H" )
   upgradeLevel_3rdChangeJob()
   upgradeSkill_Swordman()
   upgradeSkill_Crusader()
   upgradeSkill_RoyalGuard()
end

function buttonEventReceiver_makeSwordman_Ha() --> (전승나이트)
   buttonEventReceiver_makeKnight()
   buttonEventReceiver_makeNovice_H()
   ChangeJob( "SWORDMAN_H" )
   upgradeLevel_1stChangeJob()
   upgradeSkill_Swordman()
end

function buttonEventReceiver_makeSwordman_Hb() --> (전승크루세이더)
   buttonEventReceiver_makeCrusader()
   buttonEventReceiver_makeNovice_H()
   ChangeJob( "SWORDMAN_H" )
   upgradeLevel_1stChangeJob()
   upgradeSkill_Swordman()
end

function buttonEventReceiver_makeLordKnight()
   buttonEventReceiver_makeSwordman_Ha()
   ChangeJob( "KNIGHT_H" )
   upgradeLevel_2ndChangeJob_H()
   upgradeSkill_Swordman()
   upgradeSkill_Knight()
   upgradeSkill_LordKnight()
end

function buttonEventReceiver_makePaladin()
   buttonEventReceiver_makeSwordman_Hb()
   ChangeJob( "CRUSADER_H" )
   upgradeLevel_2ndChangeJob_H()
   upgradeSkill_Swordman()
   upgradeSkill_Crusader()
   upgradeSkill_Paladin()
end

function buttonEventReceiver_makeSWORDMAN_B() -- 1차 베이비
   buttonEventReceiver_makeNovice_H()
   ChangeJob( "SWORDMAN_B" )
   upgradeLevel_1stChangeJob()
   upgradeSkill_Swordman()
end

function buttonEventReceiver_makeKNIGHT_B() -- 2차 베이비
   buttonEventReceiver_makeNovice_H()
   ChangeJob( "KNIGHT_B" )
   upgradeLevel_1stChangeJob()
   upgradeSkill_Swordman()
   upgradeSkill_Knight()
end

function buttonEventReceiver_makeRUNEKNIGHT_B() -- 3차 베이비
   buttonEventReceiver_makeKNIGHT_B()
   ChangeJob( "RUNE_KNIGHT_B" )
   upgradeLevel_3rdChangeJob()
   upgradeSkill_Swordman()
   upgradeSkill_Knight()
   upgradeSkill_RuneKnight()
end

function buttonEventReceiver_makeCRUSADER_B() -- 2차 베이비
   buttonEventReceiver_makeNovice_H()
   ChangeJob( "CRUSADER_B" )
   upgradeLevel_1stChangeJob()
   upgradeSkill_Swordman()
   upgradeSkill_Crusader()
end

function buttonEventReceiver_makeROYAL_GUARD_B() -- 3차 베이비
   buttonEventReceiver_makeCRUSADER_B()
   ChangeJob( "ROYAL_GUARD_B" )
   upgradeLevel_3rdChangeJob()
   upgradeSkill_Swordman()
   upgradeSkill_Crusader()
   upgradeSkill_RoyalGuard()
end

-- 2. 상인 계열
function buttonEventReceiver_makeMerChant()
   buttonEventReceiver_makeNovice()
   ChangeJob( "MERCHANT" )
   upgradeLevel_1stChangeJob()
   upgradeSkill_MerChant()
end

function buttonEventReceiver_makeBlackSmith()
   buttonEventReceiver_makeMerChant()
   ChangeJob( "BLACKSMITH" )
   upgradeLevel_2ndChangeJob()
   upgradeSkill_BlackSmith()
end

function buttonEventReceiver_makeAlchemist()
   buttonEventReceiver_makeMerChant()
   ChangeJob( "ALCHEMIST" )
   upgradeLevel_2ndChangeJob()
   upgradeSkill_Alchemist()
end

function buttonEventReceiver_makeMechanic()
   buttonEventReceiver_makeBlackSmith()
   ChangeJob( "MECHANIC" )
   upgradeLevel_3rdChangeJob()
   upgradeSkill_Mechanic()
end

function buttonEventReceiver_makeMechanic_H()
   buttonEventReceiver_makeWhiteSmith()
   ChangeJob( "MECHANIC_H" )
   upgradeLevel_3rdChangeJob()
   upgradeSkill_Mechanic()
end

function buttonEventReceiver_makeGenetic()
   buttonEventReceiver_makeAlchemist()
   ChangeJob( "GENETIC" )
   upgradeLevel_3rdChangeJob()
   upgradeSkill_Genetic()
end

function buttonEventReceiver_makeGenetic_H()
   buttonEventReceiver_makeCreater()
   ChangeJob( "GENETIC_H" )
   upgradeLevel_3rdChangeJob()
   upgradeSkill_Genetic()
end

function buttonEventReceiver_makeMerChant_Ha() --> (전승블랙스미스)
   buttonEventReceiver_makeBlackSmith()
   buttonEventReceiver_makeNovice_H()
   ChangeJob( "MERCHANT_H" )
   upgradeLevel_1stChangeJob()
   upgradeSkill_MerChant()
end

function buttonEventReceiver_makeMerChant_Hb() --> (전승알케미스트)
   buttonEventReceiver_makeAlchemist()
   buttonEventReceiver_makeNovice_H()
   ChangeJob( "MERCHANT_H" )
   upgradeLevel_1stChangeJob()
   upgradeSkill_MerChant()
end

function buttonEventReceiver_makeWhiteSmith()
   buttonEventReceiver_makeMerChant_Ha()
   ChangeJob( "BLACKSMITH_H" )
   upgradeLevel_2ndChangeJob_H()
   upgradeSkill_MerChant()
   upgradeSkill_BlackSmith()
   upgradeSkill_WhiteSmith()
end

function buttonEventReceiver_makeCreater()
   buttonEventReceiver_makeMerChant_Hb()
   ChangeJob( "ALCHEMIST_H" )
   upgradeLevel_2ndChangeJob_H()
   upgradeSkill_MerChant()
   upgradeSkill_Alchemist()
   upgradeSkill_Creater()
end

function buttonEventReceiver_makeMERCHANT_B() -- 1차 베이비
   buttonEventReceiver_makeNovice_H()
   ChangeJob( "MERCHANT_B" )
   upgradeLevel_1stChangeJob()
   upgradeSkill_MerChant()
end

function buttonEventReceiver_makeBLACKSMITH_B() -- 2차 베이비
   buttonEventReceiver_makeNovice_H()
   ChangeJob( "BLACKSMITH_B" )
   upgradeLevel_1stChangeJob()
   upgradeSkill_MerChant()
   upgradeSkill_BlackSmith()
end

function buttonEventReceiver_makeMECHANIC_B() -- 3차 베이비
   buttonEventReceiver_makeBLACKSMITH_B()
   ChangeJob( "MECHANIC_B" )
   upgradeLevel_3rdChangeJob()
   upgradeSkill_MerChant()
   upgradeSkill_BlackSmith()
   upgradeSkill_Mechanic()
end

function buttonEventReceiver_makeALCHEMIST_B() -- 2차 베이비
   buttonEventReceiver_makeNovice_H()
   ChangeJob( "ALCHEMIST_B" )
   upgradeLevel_1stChangeJob()
   upgradeSkill_MerChant()
   upgradeSkill_Alchemist()
end

function buttonEventReceiver_makeGENETIC_B() -- 3차 베이비
   buttonEventReceiver_makeALCHEMIST_B()
   ChangeJob( "GENETIC_B" )
   upgradeLevel_3rdChangeJob()
   upgradeSkill_MerChant()
   upgradeSkill_Alchemist()
   upgradeSkill_Genetic()
end

-- 3. 복사 계열
function buttonEventReceiver_makeAcolyte()
   buttonEventReceiver_makeNovice()
   ChangeJob( "ACOLYTE" )
   upgradeLevel_1stChangeJob()
   upgradeSkill_Acolyte()
end

function buttonEventReceiver_makePriest()
   buttonEventReceiver_makeAcolyte()   
   ChangeJob( "PRIEST" )
   upgradeLevel_2ndChangeJob()
   upgradeSkill_Priest()
end

function buttonEventReceiver_makeMonk()
   buttonEventReceiver_makeAcolyte()
   ChangeJob( "MONK" )
   upgradeLevel_2ndChangeJob()
   upgradeSkill_Acolyte()
   upgradeSkill_Monk()
end

function buttonEventReceiver_makeArchBishop()
   buttonEventReceiver_makePriest()
   ChangeJob( "ARCHBISHOP" )
   upgradeLevel_3rdChangeJob()
   upgradeSkill_ArchBishop()
   upgradeSkill_Priest()
end

function buttonEventReceiver_makeArchBishop_H()
   buttonEventReceiver_makeHighPriest()
   ChangeJob( "ARCHBISHOP_H" )
   upgradeLevel_3rdChangeJob()
   upgradeSkill_ArchBishop()
   upgradeSkill_Priest()
end

function buttonEventReceiver_makeSura()
   buttonEventReceiver_makeMonk()
   ChangeJob( "SURA" )
   upgradeLevel_3rdChangeJob()
   upgradeSkill_Sura()
   upgradeSkill_Monk() 
end

function buttonEventReceiver_makeSura_H()
   buttonEventReceiver_makeChampion()
   ChangeJob( "SURA_H" )
   upgradeLevel_3rdChangeJob()
   upgradeSkill_Sura()
   upgradeSkill_Monk()
end

function buttonEventReceiver_makeAcolyte_Ha() --> (전승프리스트)
   buttonEventReceiver_makePriest()
   buttonEventReceiver_makeNovice_H()
   ChangeJob( "ACOLYTE_H" )
   upgradeLevel_1stChangeJob()
   upgradeSkill_Acolyte()
end

function buttonEventReceiver_makeAcolyte_Hb() --> (전승몽크)
   buttonEventReceiver_makeMonk()
   buttonEventReceiver_makeNovice_H()
   ChangeJob( "ACOLYTE_H" )
   upgradeLevel_1stChangeJob()
   upgradeSkill_Acolyte()
end

function buttonEventReceiver_makeHighPriest()
   buttonEventReceiver_makeAcolyte_Ha()
   ChangeJob( "PRIEST_H" )
   upgradeLevel_2ndChangeJob_H()
   upgradeSkill_Acolyte()
   upgradeSkill_Priest()
   upgradeSkill_HighPriest()
end

function buttonEventReceiver_makeChampion()
   buttonEventReceiver_makeAcolyte_Hb()
   ChangeJob( "MONK_H" )
   upgradeLevel_2ndChangeJob_H()
   upgradeSkill_Acolyte()
   upgradeSkill_Monk()
   upgradeSkill_Champion()
end

function buttonEventReceiver_makeACOLYTE_B() -- 1차 베이비
   buttonEventReceiver_makeNovice_H()
   ChangeJob( "ACOLYTE_B" )
   upgradeLevel_1stChangeJob()
   upgradeSkill_Acolyte()
end

function buttonEventReceiver_makePRIEST_B() -- 2차 베이비
   buttonEventReceiver_makeNovice_H()
   ChangeJob( "PRIEST_B" )
   upgradeLevel_1stChangeJob()
   upgradeSkill_Acolyte()
   upgradeSkill_Priest()
end

function buttonEventReceiver_makeARCHBISHOP_B() -- 3차 베이비
   buttonEventReceiver_makePRIEST_B()
   ChangeJob( "ARCHBISHOP_B" )
   upgradeLevel_3rdChangeJob()
   upgradeSkill_Acolyte()
   upgradeSkill_Priest()
   upgradeSkill_ArchBishop()
end

function buttonEventReceiver_makeMONK_B() -- 2차 베이비
   buttonEventReceiver_makeNovice_H()
   ChangeJob( "MONK_B" )
   upgradeLevel_1stChangeJob()
   upgradeSkill_Acolyte()
   upgradeSkill_Monk()
end

function buttonEventReceiver_makeSURA_B() -- 3차 베이비
   buttonEventReceiver_makeMONK_B()
   ChangeJob( "SURA_B" )
   upgradeLevel_3rdChangeJob()
   upgradeSkill_Acolyte()
   upgradeSkill_Monk()
   upgradeSkill_Sura()
end

-- 4. 도둑 계열
function buttonEventReceiver_makeThief()
   buttonEventReceiver_makeNovice()
   ChangeJob( "THIEF" )
   upgradeLevel_1stChangeJob()
   upgradeSkill_Thief()
end

function buttonEventReceiver_makeAssassin()
   buttonEventReceiver_makeThief()
   ChangeJob( "ASSASSIN" )
   upgradeLevel_2ndChangeJob()
   upgradeSkill_Assassin()
end

function buttonEventReceiver_makeRogue()
   buttonEventReceiver_makeThief()
   ChangeJob( "ROGUE" )
   upgradeLevel_2ndChangeJob()
   upgradeSkill_Rogue()
end

function buttonEventReceiver_makeGuillotineCross()
   buttonEventReceiver_makeAssassin()
   ChangeJob( "GUILLOTINE_CROSS" )
   upgradeLevel_3rdChangeJob()
   upgradeSkill_GuillotineCross()
   upgradeSkill_Assassin()
end

function buttonEventReceiver_makeGuillotineCross_H()
   buttonEventReceiver_makeAssassinCross()
   ChangeJob( "GUILLOTINE_CROSS_H" )
   upgradeLevel_3rdChangeJob()
   upgradeSkill_GuillotineCross()
   upgradeSkill_Assassin()
end

function buttonEventReceiver_makeShadowChaser()
   buttonEventReceiver_makeRogue()
   ChangeJob( "SHADOW_CHASER" )
   upgradeLevel_3rdChangeJob()
   upgradeSkill_ShadowChaser()
   upgradeSkill_Rogue()
end

function buttonEventReceiver_makeShadowChaser_H()
   buttonEventReceiver_makeStalker()
   ChangeJob( "SHADOW_CHASER_H" )
   upgradeLevel_3rdChangeJob()
   upgradeSkill_ShadowChaser()
   upgradeSkill_Rogue()
end

function buttonEventReceiver_makeThief_Ha() --> (전승어세신)
   buttonEventReceiver_makeAssassin()
   buttonEventReceiver_makeNovice_H()
   ChangeJob( "THIEF_H" )
   upgradeLevel_1stChangeJob()
   upgradeSkill_Thief()
end

function buttonEventReceiver_makeThief_Hb() --> (전승로그)
   buttonEventReceiver_makeRogue()
   buttonEventReceiver_makeNovice_H()
   ChangeJob( "THIEF_H" )
   upgradeLevel_1stChangeJob()
   upgradeSkill_Thief()
end


function buttonEventReceiver_makeAssassinCross()
  buttonEventReceiver_makeThief_Ha()
   ChangeJob( "ASSASSIN_H" )
   upgradeLevel_2ndChangeJob_H()
   upgradeSkill_Thief()
   upgradeSkill_Assassin()
   upgradeSkill_AssassinCross()
end

function buttonEventReceiver_makeStalker()
   buttonEventReceiver_makeThief_Hb()
   ChangeJob( "ROGUE_H" )
   upgradeLevel_2ndChangeJob_H()
   upgradeSkill_Thief()
   upgradeSkill_Rogue()
   upgradeSkill_Stalker()
end

function buttonEventReceiver_makeTHIEF_B() -- 1차 베이비
   buttonEventReceiver_makeNovice_H()
   ChangeJob( "THIEF_B" )
   upgradeLevel_1stChangeJob()
   upgradeSkill_Thief()
end

function buttonEventReceiver_makeASSASSIN_B() -- 2차 베이비
   buttonEventReceiver_makeNovice_H()
   ChangeJob( "ASSASSIN_B" )
   upgradeLevel_1stChangeJob()
   upgradeSkill_Thief()
   upgradeSkill_Assassin()
end

function buttonEventReceiver_makeGUILLOTINECROSS_B() -- 3차 베이비
   buttonEventReceiver_makeASSASSIN_B()
   ChangeJob( "GUILLOTINE_CROSS_B" )
   upgradeLevel_3rdChangeJob()
   upgradeSkill_Thief()
   upgradeSkill_Assassin()
   upgradeSkill_GuillotineCross()
end

function buttonEventReceiver_makeROGUE_B() -- 2차 베이비
   buttonEventReceiver_makeNovice_H()
   ChangeJob( "ROGUE_B" )
   upgradeLevel_1stChangeJob()
   upgradeSkill_Thief()
   upgradeSkill_Rogue()
end

function buttonEventReceiver_makeSHADOWCHASER_B() -- 3차 베이비
   buttonEventReceiver_makeROGUE_B()
   ChangeJob( "SHADOW_CHASER_B" )
   upgradeLevel_3rdChangeJob()
   upgradeSkill_Thief()
   upgradeSkill_Rogue()
   upgradeSkill_ShadowChaser()
end

-- 5. 마법사 계열
function buttonEventReceiver_makeMagician()
   buttonEventReceiver_makeNovice()
   ChangeJob( "MAGICIAN" )
   upgradeLevel_1stChangeJob()
   upgradeSkill_Magician()
end

function buttonEventReceiver_makeWizard()
   buttonEventReceiver_makeMagician()
   ChangeJob( "WIZARD" )
   upgradeLevel_2ndChangeJob()
   upgradeSkill_Wizard()
   upgradeSkill_Magician()
end

function buttonEventReceiver_makeSage()
   buttonEventReceiver_makeMagician()
   ChangeJob( "SAGE" )
   upgradeLevel_2ndChangeJob()
   upgradeSkill_Sage()
end

function buttonEventReceiver_makeWarlock()
   buttonEventReceiver_makeWizard()
   ChangeJob( "WARLOCK" )
   upgradeLevel_3rdChangeJob()
   upgradeSkill_Wizard()
   upgradeSkill_Warlock()
end

function buttonEventReceiver_makeWarlock_H()
   buttonEventReceiver_makeHighWizard()
   ChangeJob( "WARLOCK_H" )
   upgradeLevel_3rdChangeJob()
   upgradeSkill_Wizard()
   upgradeSkill_Warlock()
end

function buttonEventReceiver_makeSorcerer()
   buttonEventReceiver_makeSage()
   ChangeJob( "SORCERER" )
   upgradeLevel_3rdChangeJob()
   upgradeSkill_Sorcerer()
   upgradeSkill_Sage()
end

function buttonEventReceiver_makeSorcerer_H()
   buttonEventReceiver_makeProfessor()
   ChangeJob( "SORCERER_H" )
   upgradeLevel_3rdChangeJob()
   upgradeSkill_Sorcerer()
   upgradeSkill_Sage()
end

function buttonEventReceiver_makeMagician_Ha() --> (전승위저드)
   buttonEventReceiver_makeWizard()
   buttonEventReceiver_makeNovice_H()
   ChangeJob( "MAGICIAN_H" )
   upgradeLevel_1stChangeJob()
   upgradeSkill_Magician()
end

function buttonEventReceiver_makeMagician_Hb() --> (전승세이지)
   buttonEventReceiver_makeSage()
   buttonEventReceiver_makeNovice_H()
   ChangeJob( "MAGICIAN_H" )
   upgradeLevel_1stChangeJob()
   upgradeSkill_Magician()
end

function buttonEventReceiver_makeHighWizard()
   buttonEventReceiver_makeMagician_Ha()
   ChangeJob( "WIZARD_H" )
   upgradeLevel_2ndChangeJob_H()
   upgradeSkill_Magician()
   upgradeSkill_Wizard()
   upgradeSkill_HighWizard()
end

function buttonEventReceiver_makeProfessor()
   buttonEventReceiver_makeMagician_Hb()
   ChangeJob( "SAGE_H" )
   upgradeLevel_2ndChangeJob_H()
   upgradeSkill_Magician()
   upgradeSkill_Sage()
   upgradeSkill_Professor()
end

function buttonEventReceiver_makeMAGICIAN_B() -- 1차 베이비
   buttonEventReceiver_makeNovice_H()
   ChangeJob( "MAGICIAN_B" )
   upgradeLevel_1stChangeJob()
   upgradeSkill_Magician()
end

function buttonEventReceiver_makeWIZARD_B() -- 2차 베이비
   buttonEventReceiver_makeNovice_H()
   ChangeJob( "WIZARD_B" )
   upgradeLevel_1stChangeJob()
   upgradeSkill_Magician()
   upgradeSkill_Wizard()
end

function buttonEventReceiver_makeWARLOCK_B() -- 3차 베이비
   buttonEventReceiver_makeWIZARD_B()
   ChangeJob( "WARLOCK_B" )
   upgradeLevel_3rdChangeJob()
   upgradeSkill_Magician()
   upgradeSkill_Wizard()
   upgradeSkill_Warlock()
end

function buttonEventReceiver_makeSAGE_B() -- 2차 베이비
   buttonEventReceiver_makeNovice_H()
   ChangeJob( "SAGE_B" )
   upgradeLevel_1stChangeJob()
   upgradeSkill_Magician()
   upgradeSkill_Sage()
end

function buttonEventReceiver_makeSORCERER_B() -- 3차 베이비
   buttonEventReceiver_makeSAGE_B()
   ChangeJob( "SORCERER_B" )
   upgradeLevel_3rdChangeJob()
   upgradeSkill_Magician()
   upgradeSkill_Sage()
   upgradeSkill_Sorcerer()
end

-- 6. 궁수 계열
function buttonEventReceiver_makeArcher()
   buttonEventReceiver_makeNovice()
   ChangeJob( "ARCHER" )
   upgradeLevel_1stChangeJob()
   upgradeSkill_Archer()
end

function buttonEventReceiver_makeHunter()
   buttonEventReceiver_makeArcher()
   ChangeJob( "HUNTER" )
   upgradeLevel_2ndChangeJob()
   upgradeSkill_Hunter()
end

function buttonEventReceiver_makeBard()
   buttonEventReceiver_makeArcher()
   ChangeJob( "BARD" )
   upgradeLevel_2ndChangeJob()
   upgradeSkill_Bard()
end

function buttonEventReceiver_makeDancer()
   buttonEventReceiver_makeArcher()
   ChangeJob( "DANCER" )
   upgradeLevel_2ndChangeJob()
   upgradeSkill_Dancer()
end

function buttonEventReceiver_makeRanger()
   buttonEventReceiver_makeHunter()
   ChangeJob( "RANGER" )
   upgradeLevel_3rdChangeJob()
   upgradeSkill_Ranger()
end

function buttonEventReceiver_makeRanger_H()
   buttonEventReceiver_makeSniper()
   ChangeJob( "RANGER_H" )
   upgradeLevel_3rdChangeJob()
   upgradeSkill_Ranger()
end

function buttonEventReceiver_makeMinstrel()
   buttonEventReceiver_makeBard()
   ChangeJob( "MINSTREL" )
   upgradeLevel_3rdChangeJob()
   upgradeSkill_Minstrel()
end

function buttonEventReceiver_makeMinstrel_H()
   buttonEventReceiver_makeCrown()
   ChangeJob( "MINSTREL_H" )
   upgradeLevel_3rdChangeJob()
   upgradeSkill_Minstrel()
end

function buttonEventReceiver_makeWanderer()
   buttonEventReceiver_makeDancer()
   ChangeJob( "WANDERER" )
   upgradeLevel_3rdChangeJob()
   upgradeSkill_Wanderer()
end

function buttonEventReceiver_makeWanderer_H()
   buttonEventReceiver_makeGipsy()
   ChangeJob( "WANDERER_H" )
   upgradeLevel_3rdChangeJob()
   upgradeSkill_Wanderer()
end

function buttonEventReceiver_makeArcher_Ha() --> (전승헌터)
   buttonEventReceiver_makeHunter()
   buttonEventReceiver_makeNovice_H()
   ChangeJob( "ARCHER_H" )
   upgradeLevel_1stChangeJob()
   upgradeSkill_Archer()
end

function buttonEventReceiver_makeArcher_Hb() --> (전승바드)
   buttonEventReceiver_makeBard()
   buttonEventReceiver_makeNovice_H()
   ChangeJob( "ARCHER_H" )
   upgradeLevel_1stChangeJob()
   upgradeSkill_Archer()
end

function buttonEventReceiver_makeArcher_Hc() --> (전승댄서)
   buttonEventReceiver_makeDancer()
   buttonEventReceiver_makeNovice_H()
   ChangeJob( "ARCHER_H" )
   upgradeLevel_1stChangeJob()
   upgradeSkill_Archer()
end

function buttonEventReceiver_makeSniper()
   buttonEventReceiver_makeArcher_Ha()
   ChangeJob( "HUNTER_H" )
   upgradeLevel_2ndChangeJob_H()
   upgradeSkill_Archer()
   upgradeSkill_Hunter()
   upgradeSkill_Sniper()
end

function buttonEventReceiver_makeCrown()
   buttonEventReceiver_makeArcher_Hb()
   ChangeJob( "BARD_H" )
   upgradeLevel_2ndChangeJob_H()
   upgradeSkill_Archer()
   upgradeSkill_Bard()
   upgradeSkill_Crown()
end

function buttonEventReceiver_makeGipsy()
   buttonEventReceiver_makeArcher_Hc()
   ChangeJob( "DANCER_H" )
   upgradeLevel_2ndChangeJob()
   upgradeSkill_Archer()
   upgradeSkill_Dancer()
   upgradeSkill_Gipsy()
end

function buttonEventReceiver_makeARCHER_B() -- 1차 베이비
   buttonEventReceiver_makeNovice_H()
   ChangeJob( "ARCHER_B" )
   upgradeLevel_1stChangeJob()
   upgradeSkill_Archer()
end

function buttonEventReceiver_makeHUNTER_B() -- 2차 베이비
   buttonEventReceiver_makeNovice_H()
   ChangeJob( "HUNTER_B" )
   upgradeLevel_1stChangeJob()
   upgradeSkill_Archer()
   upgradeSkill_Hunter()
end

function buttonEventReceiver_makeRANGER_B() -- 3차 베이비
   buttonEventReceiver_makeHUNTER_B()
   ChangeJob( "RANGER_B" )
   upgradeLevel_3rdChangeJob()
   upgradeSkill_Archer()
   upgradeSkill_Hunter()
   upgradeSkill_Ranger()
end

function buttonEventReceiver_makeBARD_B() -- 2차 베이비
   buttonEventReceiver_makeNovice_H()
   ChangeJob( "BARD_B" )
   upgradeLevel_1stChangeJob()
   upgradeSkill_Archer()
   upgradeSkill_Bard()
end

function buttonEventReceiver_makeMINSTREL_B() -- 3차 베이비
   buttonEventReceiver_makeBARD_B()
   ChangeJob( "MINSTREL_B" )
   upgradeLevel_3rdChangeJob()
   upgradeSkill_Archer()
   upgradeSkill_Bard()
   upgradeSkill_Minstrel()
end

function buttonEventReceiver_makeDANCER_B() -- 2차 베이비
   buttonEventReceiver_makeNovice_H()
   ChangeJob( "DANCER_B" )
   upgradeLevel_1stChangeJob()
   upgradeSkill_Archer()
   upgradeSkill_Dancer()
end

function buttonEventReceiver_makeWANDERER_B() -- 3차 베이비
   buttonEventReceiver_makeDANCER_B()
   ChangeJob( "WANDERER_B" )
   upgradeLevel_3rdChangeJob()
   upgradeSkill_Archer()
   upgradeSkill_Dancer()
   upgradeSkill_Wanderer()
end

-- 7. 확장 계열
function buttonEventReceiver_makeSuperNovice()
   ChangeJob( "NOVICE_H" )
   upgradeLevel_Novice()
   upgradeSkill_Novice()
   ChangeJob( "SUPERNOVICE" )
   upgradeLevel_1stChangeJob()
   JobLevelUp( 19 )
   upgradeSkill_SuperNovice()
end

function buttonEventReceiver_makeNinja()
   buttonEventReceiver_makeNovice()
   ChangeJob( "NINJA" )
   upgradeLevel_1stChangeJob()
   upgradeSkill_Ninja()
end

function buttonEventReceiver_makeGunSlinger()
   buttonEventReceiver_makeNovice()
   ChangeJob( "GUNSLINGER" )
   upgradeLevel_1stChangeJob()
   upgradeSkill_GunSlinger()
end

function buttonEventReceiver_makeTaekwon()
   buttonEventReceiver_makeNovice()
   ChangeJob( "TAEKWON" )
   upgradeLevel_1stChangeJob()
   upgradeSkill_Taekwon()
   
end

function buttonEventReceiver_makeStar()
   buttonEventReceiver_makeTaekwon()
   ChangeJob( "STAR" )
   upgradeLevel_2ndChangeJob()
   upgradeSkill_Star()
end

function buttonEventReceiver_makeLinker()
   buttonEventReceiver_makeTaekwon()
   ChangeJob( "LINKER" )
   upgradeLevel_2ndChangeJob()
   upgradeSkill_Linker()
end

--============================================================								
 -- function : DebugingInterface_ChangeJob								
 -- descript : 전직 메뉴								
--============================================================								
								
function DebugingInterface_ChangeJob()								
	AddString ( "-- [ 1st Change Job ] --" )							
	AddMenu ( "Swordman",     buttonEventReceiver_makeSwordman   )							
	AddMenu ( "Swordman_H",   buttonEventReceiver_makeSwordman_H )							
	AddMenu ( "Swordman_B",   buttonEventReceiver_makeSWORDMAN_B )							
	AddMenu ( "Magician",   buttonEventReceiver_makeMagician   )							
	AddMenu ( "Magician_H", buttonEventReceiver_makeMagician_H )							
	AddMenu ( "Magician_B", buttonEventReceiver_makeMAGICIAN_B )							
	AddMenu ( "Merchant",     buttonEventReceiver_makeMerChant   )							
	AddMenu ( "Merchant_H",   buttonEventReceiver_makeMerChant_H )							
	AddMenu ( "Merchant_B",   buttonEventReceiver_makeMERCHANT_B )							
	AddMenu ( "Archer",     buttonEventReceiver_makeArcher     )							
	AddMenu ( "Archer_H",   buttonEventReceiver_makeArcher_H   )							
	AddMenu ( "Archer_B",   buttonEventReceiver_makeARCHER_B   )							
	AddMenu ( "Acolyte",     buttonEventReceiver_makeAcolyte    )							
	AddMenu ( "Acolyte_H",   buttonEventReceiver_makeAcolyte_H  )							
	AddMenu ( "Acolyte_B",   buttonEventReceiver_makeACOLYTE_B  )							
	AddMenu ( "Thief",     buttonEventReceiver_makeThief      )							
	AddMenu ( "Thief_H",   buttonEventReceiver_makeThief_H    )							
	AddMenu ( "Thief_B",   buttonEventReceiver_makeTHIEF_B    )							
								
	AddString ( "-- [ 2-1st Change Job ] --" )							
	AddMenu ( "Knight",       buttonEventReceiver_makeKnight       )							
	AddMenu ( "Knight_B",     buttonEventReceiver_makeKNIGHT_B     )							
	AddMenu ( "Wizard",       buttonEventReceiver_makeWizard       )							
	AddMenu ( "Wizard_B",     buttonEventReceiver_makeWIZARD_B     )							
	AddMenu ( "Blacksmith",   buttonEventReceiver_makeBlackSmith   )							
	AddMenu ( "Blacksmith_B", buttonEventReceiver_makeBLACKSMITH_B )							
	AddMenu ( "Hunter",         buttonEventReceiver_makeHunter       )							
	AddMenu ( "Hunter_B",       buttonEventReceiver_makeHUNTER_B     )							
	AddMenu ( "Priest",     buttonEventReceiver_makePriest       )							
	AddMenu ( "Priest_B",   buttonEventReceiver_makePRIEST_B     )							
	AddMenu ( "Assassin",       buttonEventReceiver_makeAssassin     )							
	AddMenu ( "Assassin_B",     buttonEventReceiver_makeASSASSIN_B   )							
   								
	AddString ( "-- [ 2-2nd Change Job ] --" )							
	AddMenu ( "Crusader",   buttonEventReceiver_makeCrusader    )							
	AddMenu ( "Crusader_B", buttonEventReceiver_makeCRUSADER_B  )							
	AddMenu ( "Sage",       buttonEventReceiver_makeSage        )							
	AddMenu ( "Sage_B",     buttonEventReceiver_makeSAGE_B      )							
	AddMenu ( "Alchemist",   buttonEventReceiver_makeAlchemist   )							
	AddMenu ( "Alchemist_B", buttonEventReceiver_makeALCHEMIST_B )							
	AddMenu ( "Bard",         buttonEventReceiver_makeBard        ) 							
	AddMenu ( "Bard_B",       buttonEventReceiver_makeBARD_B      ) 							
	AddMenu ( "Dancer",         buttonEventReceiver_makeDancer      )							
	AddMenu ( "Dancer_B",       buttonEventReceiver_makeDANCER_B    )							
	AddMenu ( "Monk",         buttonEventReceiver_makeMonk        )							
	AddMenu ( "Monk_B",       buttonEventReceiver_makeMONK_B      )							
	AddMenu ( "Rouge",         buttonEventReceiver_makeRogue       )							
	AddMenu ( "Rouge_B",       buttonEventReceiver_makeROGUE_B     )							
   								
	AddString ( "-- [ 3-1st Change Job ] --" )							
	AddMenu ( "RuneKnight",       buttonEventReceiver_makeRuneKnight        )							
	AddMenu ( "RuneKnight_H",     buttonEventReceiver_makeRuneKnight_H      )							
	AddMenu ( "RuneKnight_B",     buttonEventReceiver_makeRUNEKNIGHT_B      )							
	AddMenu ( "Warlock",           buttonEventReceiver_makeWarlock           )							
	AddMenu ( "Warlock_H",         buttonEventReceiver_makeWarlock_H         )							
	AddMenu ( "Warlock_B",         buttonEventReceiver_makeWARLOCK_B         )							
	AddMenu ( "Mechanic",         buttonEventReceiver_makeMechanic          )							
	AddMenu ( "Mechanic_H",       buttonEventReceiver_makeMechanic_H        )							
	AddMenu ( "Mechanic_B",       buttonEventReceiver_makeMECHANIC_B        )							
	AddMenu ( "Archbishop",       buttonEventReceiver_makeArchBishop        )							
	AddMenu ( "Archbishop_H",     buttonEventReceiver_makeArchBishop_H      )							
	AddMenu ( "Archbishop_B",     buttonEventReceiver_makeARCHBISHOP_B      )							
	AddMenu ( "GuillotineCross",   buttonEventReceiver_makeGuillotineCross   )							
	AddMenu ( "GuillotineCross_H", buttonEventReceiver_makeGuillotineCross_H )							
	AddMenu ( "GuillotineCross_B", buttonEventReceiver_makeGUILLOTINECROSS_B )							
	AddMenu ( "Ranger",         buttonEventReceiver_makeRanger            )							
	AddMenu ( "Ranger_H",       buttonEventReceiver_makeRanger_H          )							
	AddMenu ( "Ranger_B",       buttonEventReceiver_makeRANGER_B          )							
   								
	AddString ( "-- [ 3-2nd Change Job ] --" )							
	AddMenu ( "RoyalGuard",        buttonEventReceiver_makeRoyalGuard     )							
	AddMenu ( "RoyalGuard_H",      buttonEventReceiver_makeRoyalGuard_H   )							
	AddMenu ( "RoyalGuard_B",      buttonEventReceiver_makeROYAL_GUARD_B  )							
	AddMenu ( "Shadow Chaser",   buttonEventReceiver_makeShadowChaser   )							
	AddMenu ( "Shadow Chaser_H", buttonEventReceiver_makeShadowChaser_H )							
	AddMenu ( "Shadow Chaser_B", buttonEventReceiver_makeSHADOWCHASER_B )							
	AddMenu ( "Sura",            buttonEventReceiver_makeSura           )							
	AddMenu ( "Sura_H",          buttonEventReceiver_makeSura_H         )							
	AddMenu ( "Sura_B",          buttonEventReceiver_makeSURA_B         )							
	AddMenu ( "Minstrel",        buttonEventReceiver_makeMinstrel       )							
	AddMenu ( "Minstrel_H",      buttonEventReceiver_makeMinstrel_H     )							
	AddMenu ( "Minstrel_B",      buttonEventReceiver_makeMINSTREL_B     )							
	AddMenu ( "Wanderer",          buttonEventReceiver_makeWanderer       )							
	AddMenu ( "Wanderer_H",        buttonEventReceiver_makeWanderer_H     )							
	AddMenu ( "Wanderer_B",        buttonEventReceiver_makeWANDERER_B     )							
	AddMenu ( "Genetic",          buttonEventReceiver_makeGenetic        )							
	AddMenu ( "Genetic_H",        buttonEventReceiver_makeGenetic_H      )							
	AddMenu ( "Genetic_B",        buttonEventReceiver_makeGENETIC_B      )							
	AddMenu ( "Sorcerer",          buttonEventReceiver_makeSorcerer       )							
	AddMenu ( "Sorcerer_H",        buttonEventReceiver_makeSorcerer_H     )							
	AddMenu ( "Sorcerer_B",        buttonEventReceiver_makeSORCERER_B     )							
   								
	AddString ( "-- [ 2-1st Change High Job ] --" )							
	AddMenu ( "LordKnight",   buttonEventReceiver_makeLordKnight    )							
	AddMenu ( "HighWizard",   buttonEventReceiver_makeHighWizard    )							
	AddMenu ( "WhiteSmith", buttonEventReceiver_makeWhiteSmith    )							
	AddMenu ( "Sniper",     buttonEventReceiver_makeSniper        )							
	AddMenu ( "HighPriest", buttonEventReceiver_makeHighPriest    )							
	AddMenu ( "AssassinCross", buttonEventReceiver_makeAssassinCross )							
   								
	AddString ( "-- [ 2-2nd Change High Job ] --" )							
	AddMenu ( "Paladin",     buttonEventReceiver_makePaladin   )							
	AddMenu ( "Professor ",  buttonEventReceiver_makeProfessor )							
	AddMenu ( "Creater", buttonEventReceiver_makeCreater   )							
	AddMenu ( "Crown",     buttonEventReceiver_makeCrown     )							
	AddMenu ( "Gipsy",       buttonEventReceiver_makeGipsy     )							
	AddMenu ( "Champion",     buttonEventReceiver_makeChampion  )  							
	AddMenu ( "Stalker",     buttonEventReceiver_makeStalker   )							
   								
	AddString ( "-- [ extension 1st Change Job ] --" )							
	AddMenu ( "Novice",        buttonEventReceiver_makeNovice      )							
	AddMenu ( "Novice_H",      buttonEventReceiver_makeNovice_H    )							
	AddMenu ( "SuperNovice ",   buttonEventReceiver_makeSuperNovice )							
	AddMenu ( "Taekwon", buttonEventReceiver_makeTaekwon     )							
	AddMenu ( "Ninja",          buttonEventReceiver_makeNinja       )							
	AddMenu ( "GunSlinger",      buttonEventReceiver_makeGunSlinger  )							
   								
	AddString ( "-- [ extension 2nd Change Job ] --" )							
	AddMenu ( "Star",      buttonEventReceiver_makeStar   )							
	AddMenu ( "Linker ", buttonEventReceiver_makeLinker )							
   								
   -- 사용 제한 설정								
	SetWorkingCondition( "Bard",		SEX_MALE ) -- 남자 캐릭만 사용 가능하도록 설정					
	SetWorkingCondition( "Bard_B",		SEX_MALE )					
	SetWorkingCondition( "Minstrel",	SEX_MALE )						
	SetWorkingCondition( "Minstrel_H",	SEX_MALE )						
	SetWorkingCondition( "Minstrel_B",	SEX_MALE )						
	SetWorkingCondition( "Crown",		SEX_MALE )					
								
	SetWorkingCondition( "Dancer",		SEX_FEMALE ) -- 여자 캐릭만 사용 가능하도록 설정					
	SetWorkingCondition( "Dancer_B",		SEX_FEMALE )					
	SetWorkingCondition( "Wanderer",		SEX_FEMALE )					
	SetWorkingCondition( "Wanderer_H",	SEX_FEMALE )						
	SetWorkingCondition( "Wanderer_B",	SEX_FEMALE )						
	SetWorkingCondition( "Gipsy",		SEX_FEMALE )					
end


--============================================================
-- function : RegisterExcItemNameTable
-- descript : DB 명과 command 명이 다른 아이템 목록 등록
--============================================================

function RegisterExcItemNameTable()
	for k, v in pairs( excItemNameTable ) do
		SetAddExceptionItemName( k, v.name, v.type )
	end
end


--============================================================
-- function : ReadDebugWndTabInfo
-- descript : 디버깅 인터페이스 윈도우의 탭 정보 설정
--============================================================

function ReadDebugWndTabInfo()
	SetDebugWndTabInfo( DebugWndInfo.ShowWnd, 
			    DebugWndInfo.AddedTabCount, 
			    DebugWndInfo.ScrollOffset, 
			    DebugWndInfo.CurTabNum,
			    DebugWndInfo.WidthSize,
			    DebugWndInfo.HeightSize
			    )
	
	for i = 0, DebugWndInfo.AddedTabCount do
		SetDebugWndTabName( _G[string.format ( "%s_%d", "DebugWndTabName", i )] )
	end
end