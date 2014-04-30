--[[
===================================================================
[예시]
StateIconList[EFST_IDs.EFST_INC_AGI] =
{
	haveTimeLimit = 1,
	posTimeLimitStr = 3,
	descript =
	{
		{"민첩성 증가", 255, 255, 0 },
		{"이동 및 공격속도 증가", },
		{"%s", COLOR_TIME },
	}
}

1. EFST_IDs.EFST_INC_AGI : BuffIDs 에 정의된 ID값

[선택입력값]
1. haveTimeLimit : 만료 시간이 존재 하는가? Yes : 1, No : 0 (기본값 : 0)
2. posTimeLimitStr : descript에서의 시간 값 입력 위치 : 시간 정보를 Refresh 시켜주기 위함
3. descript : 각 라인 별 버프 설명 정보 및 색깔 정보 (색 정보 : 0~255 RGB 값)

<아이콘 출력 확인 방법>
사내 클라이언트에서 /EFST [EFSTID], /EFST [EFST일련번호] 를 입력하면
출력되는 아이콘의 경우 아이콘이 출력된다. (이를 통해 작업상황 확인 가능)
EFSTID, EFST일련번호는 EFSTIDs.lua 파일에서 확인 가능하다.

<컬러 코드 매크로 추가 - 20100520>
컬러 코드를 괄호로 묶어 변수에 대입할 수 있다. 기존 컬러 코드 위치에 변수를 입력하면 같은 기능을 한다.
**컬러 코드를 직접 사용하고 싶은 경우 컬러 코드를 '괄호'로 묶어야 한다.
->{"오버트러스트 맥스 (Overthrust Max)", COLOR_TITLE_BUFF },
->{"오버트러스트 맥스 (Overthrust Max)", { 155, 202, 155 } },
===================================================================
--]]

-- 컬러 코드 매크로 모음 시작
COLOR_TITLE_BUFF = { 155, 202, 155 }	-- 버프류 = 녹색 계열
COLOR_TITLE_DEBUFF = { 250, 100, 100 }	-- 디버프류 = 적색 계열
COLOR_TITLE_TOGGLE = { 190, 190, 250 }	-- 토글류 = 청색 계열
COLOR_SYSTEM = { 255, 255, 0 }	-- 시스템 = 노란색 계열
COLOR_TIME = { 255, 176, 98 }			-- 지속시간 = 주황색 계열
-- 컬러 코드 매크로 모음 끝

-- 본문 시작
StateIconList = {}
StateIconList[EFST_IDs.EFST_PROVOKE] =
{
	haveTimeLimit = 1,
	posTimeLimitStr = 2,
	descript =
	{
		{"Provoke", COLOR_TITLE_BUFF},
		{"%s", COLOR_TIME},
		{"Decrease DEF"},
		{"Increase ATK"}
	}
}

StateIconList[EFST_IDs.EFST_ENDURE] =
{
	haveTimeLimit = 1,
	posTimeLimitStr = 2,
	descript =
	{
		{"Endure", COLOR_TITLE_BUFF},
		{"%s", COLOR_TIME},
		{"Enable to attack and move while receiving damage"},
		{"Canceled after caster is hit certain times"}
	}
}

StateIconList[EFST_IDs.EFST_TWOHANDQUICKEN] =
{
	haveTimeLimit = 1,
	posTimeLimitStr = 2,
	descript =
	{
		{"Two Hand Quicken", COLOR_TITLE_BUFF},
		{"%s", COLOR_TIME},
		{"Increase ASPD"},
		{"when using two handed sword"}
	}
}

StateIconList[EFST_IDs.EFST_CONCENTRATION] =
{
	haveTimeLimit = 1,
	posTimeLimitStr = 2,
	descript =
	{
		{"Improve Concentration", COLOR_TITLE_BUFF},
		{"%s", COLOR_TIME},
		{"Increase DEX, AGI"},
		{"Can detect hidden enemies"}
	}
}

StateIconList[EFST_IDs.EFST_HIDING] =
{
	haveTimeLimit = 1,
	posTimeLimitStr = 2,
	descript =
	{
		{"Hiding", COLOR_TITLE_BUFF},
		{"%s", COLOR_TIME},
		{"Hide under the ground to avoid enemy attack"},
		{"Can be detected enemy's detecting skill"}
	}
}

StateIconList[EFST_IDs.EFST_CLOAKING] =
{
	haveTimeLimit = 1,
	posTimeLimitStr = 2,
	descript =
	{
		{"Cloaking", COLOR_TITLE_BUFF},
		{"%s", COLOR_TIME},
		{"Can't be seen by others"}
	}
}

StateIconList[EFST_IDs.EFST_ENCHANTPOISON] =
{
	haveTimeLimit = 1,
	posTimeLimitStr = 2,
	descript =
	{
		{"Enchant Poison", COLOR_TITLE_BUFF},
		{"%s", COLOR_TIME},
		{"Enchant Poison property on the equipped weapon"}
	}
}

StateIconList[EFST_IDs.EFST_POISONREACT] =
{
	haveTimeLimit = 1,
	posTimeLimitStr = 2,
	descript =
	{
		{"Poison React", COLOR_TITLE_BUFF},
		{"%s", COLOR_TIME},
		{"Automatically cast Poisonous attack to the enemy"},
		{"Cast Envenom skill to the enemy"},
		{"when the caster is damaged by normal attack"}
	}
}

StateIconList[EFST_IDs.EFST_QUAGMIRE] =
{
	haveTimeLimit = 1,
	posTimeLimitStr = 2,
	descript =
	{
		{"Quagmire", COLOR_TITLE_DEBUFF},
		{"%s", COLOR_TIME},
		{"Decrease Movement Speed"},
		{"Decrease AGI, DEX"}
	}
}

StateIconList[EFST_IDs.EFST_ANGELUS] =
{
	haveTimeLimit = 1,
	posTimeLimitStr = 2,
	descript =
	{
		{"Angelus", COLOR_TITLE_BUFF},
		{"%s", COLOR_TIME},
		{"Increase DEF"}
	}
}

StateIconList[EFST_IDs.EFST_BLESSING] =
{
	haveTimeLimit = 1,
	posTimeLimitStr = 2,
	descript =
	{
		{"Blessing", COLOR_TITLE_BUFF},
		{"%s", COLOR_TIME},
		{"Increase DEX, INT, STR"},
		{"Recover Curse, Stone Curse status instantly"}
	}
}

StateIconList[EFST_IDs.EFST_CRUCIS] =
{
	haveTimeLimit = 1,
	posTimeLimitStr = 2,
	descript =
	{
		{"Signum Crucis", COLOR_TITLE_BUFF},
		{"%s", COLOR_TIME},
		{"Decrease DEF of Undead and Ghost monsters"}
	}
}

StateIconList[EFST_IDs.EFST_INC_AGI] =
{
	haveTimeLimit = 1,
	posTimeLimitStr = 2,
	descript =
	{
		{"Increase AGI", COLOR_TITLE_BUFF},
		{"%s", COLOR_TIME},
		{"Increase Movement Speed"},
		{"Increase ASPD"}
	}
}

StateIconList[EFST_IDs.EFST_DEC_AGI] =
{
	haveTimeLimit = 1,
	posTimeLimitStr = 2,
	descript =
	{
		{"Decrease AGI", COLOR_TITLE_DEBUFF},
		{"%s", COLOR_TIME},
		{"Decrease movement speed"},
		{"Decrease ASPD"}
	}
}

StateIconList[EFST_IDs.EFST_SLOWPOISON] =
{
	haveTimeLimit = 1,
	posTimeLimitStr = 2,
	descript =
	{
		{"Slow Poison", COLOR_TITLE_BUFF},
		{"%s", COLOR_TIME},
		{"Temporarily stop the poison spread"}
	}
}

StateIconList[EFST_IDs.EFST_IMPOSITIO] =
{
	haveTimeLimit = 1,
	posTimeLimitStr = 2,
	descript =
	{
		{"Impositio Manus", COLOR_TITLE_BUFF},
		{"%s", COLOR_TIME},
		{"Increase ATK of the weapon"}
	}
}

StateIconList[EFST_IDs.EFST_SUFFRAGIUM] =
{
	haveTimeLimit = 1,
	posTimeLimitStr = 2,
	descript =
	{
		{"Suffragium", COLOR_TITLE_BUFF},
		{"%s", COLOR_TIME},
		{"Decrease casting speed"}
	}
}

StateIconList[EFST_IDs.EFST_ASPERSIO] =
{
	haveTimeLimit = 1,
	posTimeLimitStr = 2,
	descript =
	{
		{"Aspersio", COLOR_TITLE_BUFF},
		{"%s", COLOR_TIME},
		{"Give Holy property to the weapon"}
	}
}

StateIconList[EFST_IDs.EFST_BENEDICTIO] =
{
	haveTimeLimit = 1,
	posTimeLimitStr = 1,
	descript =
	{
		{"%s", COLOR_TIME},
		{"Give Holy property to Armor"}
	}
}

StateIconList[EFST_IDs.EFST_KYRIE] =
{
	haveTimeLimit = 1,
	posTimeLimitStr = 2,
	descript =
	{
		{"Kyrie Eleison", COLOR_TITLE_BUFF},
		{"%s", COLOR_TIME},
		{"The barrier defends the caster from attacking for certain times"}
	}
}

StateIconList[EFST_IDs.EFST_MAGNIFICAT] =
{
	haveTimeLimit = 1,
	posTimeLimitStr = 2,
	descript =
	{
		{"Magnificat", COLOR_TITLE_BUFF},
		{"%s", COLOR_TIME},
		{"Increase SP recovery speed"}
	}
}

StateIconList[EFST_IDs.EFST_GLORIA] =
{
	haveTimeLimit = 1,
	posTimeLimitStr = 2,
	descript =
	{
		{"Gloria", COLOR_TITLE_BUFF},
		{"%s", COLOR_TIME},
		{"Increase LUK"}
	}
}

StateIconList[EFST_IDs.EFST_LEXAETERNA] =
{
	haveTimeLimit = 1,
	posTimeLimitStr = 2,
	descript =
	{
		{"Lex Aeterna", COLOR_TITLE_DEBUFF},
		{"%s", COLOR_TIME},
		{"The enemy receives the damage twice"}
	}
}

StateIconList[EFST_IDs.EFST_ADRENALINE] =
{
	haveTimeLimit = 1,
	posTimeLimitStr = 2,
	descript =
	{
		{"Adrenaline Rush", COLOR_TITLE_BUFF},
		{"%s", COLOR_TIME},
		{"Increase ASPD of"},
		{"Axe and Blunt class weapon"}
	}
}

StateIconList[EFST_IDs.EFST_WEAPONPERFECT] =
{
	haveTimeLimit = 1,
	posTimeLimitStr = 2,
	descript =
	{
		{"Weapon Perfection", COLOR_TITLE_BUFF},
		{"%s", COLOR_TIME},
		{"Give 100% damage to"},
		{"small, medium, large monsters"}
	}
}

StateIconList[EFST_IDs.EFST_OVERTHRUST] =
{
	haveTimeLimit = 1,
	posTimeLimitStr = 2,
	descript =
	{
		{"Power Thrust", COLOR_TITLE_BUFF},
		{"%s", COLOR_TIME},
		{"Increase weapon ATK"},
		{"Increase the possibility for the weapon to be destroyed"}
	}
}

StateIconList[EFST_IDs.EFST_MAXIMIZE] =
{
	haveTimeLimit = 1,
	posTimeLimitStr = 2,
	descript =
	{
		{"Maximize Power", COLOR_TITLE_BUFF},
		{"%s", COLOR_TIME},
		{"Maximize the power of the weapon"},
		{"Consume SP continuously"}
	}
}

StateIconList[EFST_IDs.EFST_RIDING] =
{
	descript =
	{
		{"Riding Vehicle", COLOR_TITLE_TOGGLE}
	}
}

StateIconList[EFST_IDs.EFST_FALCON] =
{
	descript =
	{
		{"Falconry Mastery", COLOR_TITLE_TOGGLE},
		{"Renting Falcon"}
	}
}

StateIconList[EFST_IDs.EFST_TRICKDEAD] =
{
	descript =
	{
		{"Play Dead", COLOR_TITLE_TOGGLE},
		{"Playing dead"}
	}
}

StateIconList[EFST_IDs.EFST_SHOUT] =
{
	haveTimeLimit = 1,
	posTimeLimitStr = 2,
	descript =
	{
		{"Shout", COLOR_TITLE_BUFF},
		{"%s", COLOR_TIME},
		{"Increase STR"}
	}
}

StateIconList[EFST_IDs.EFST_ENERGYCOAT] =
{
	haveTimeLimit = 1,
	posTimeLimitStr = 2,
	descript =
	{
		{"Energy Coat", COLOR_TITLE_BUFF},
		{"%s", COLOR_TIME},
		{"Reduce the damage from enemy"},
		{"according to remaining SP"}
	}
}

StateIconList[EFST_IDs.EFST_BROKENARMOR] =
{
	descript =
	{
		{"Broken Armor", COLOR_TITLE_DEBUFF}
	}
}

StateIconList[EFST_IDs.EFST_BROKENWEAPON] =
{
	descript =
	{
		{"Broken Weapon", COLOR_TITLE_DEBUFF}
	}
}

StateIconList[EFST_IDs.EFST_ILLUSION] =
{
	haveTimeLimit = 1,
	posTimeLimitStr = 2,
	descript =
	{
		{"Dark Illusion", COLOR_TITLE_DEBUFF},
		{"%s", COLOR_TIME},
		{"Sight distorted"},
		{"Error in damage sign"},
		{"Casting pause"}
	}
}

StateIconList[EFST_IDs.EFST_WEIGHTOVER50] =
{
	descript =
	{
		{"Weight over 50%", COLOR_TITLE_DEBUFF},
		{"Cannot recover HP, SP automatically"}
	}
}

StateIconList[EFST_IDs.EFST_WEIGHTOVER90] =
{
	descript =
	{
		{"Weight Over 90%", COLOR_TITLE_DEBUFF},
		{"Cannot recover HP, SP automatically"},
		{"Cannot attack and use skills"}
	}
}

StateIconList[EFST_IDs.EFST_ATTHASTE_POTION1] =
{
	haveTimeLimit = 1,
	posTimeLimitStr = 2,
	descript =
	{
		{"Concentration Potion", COLOR_TITLE_BUFF},
		{"%s", COLOR_TIME},
		{"Increase ASPD"}
	}
}

StateIconList[EFST_IDs.EFST_ATTHASTE_POTION2] =
{
	haveTimeLimit = 1,
	posTimeLimitStr = 2,
	descript =
	{
		{"Awakening Potion", COLOR_TITLE_BUFF},
		{"%s", COLOR_TIME},
		{"Increase ASPD"}
	}
}

StateIconList[EFST_IDs.EFST_ATTHASTE_POTION3] =
{
	haveTimeLimit = 1,
	posTimeLimitStr = 1,
	descript =
	{
		{"%s", COLOR_TIME},
		{"Increase ASPD"}
	}
}

-- missing: EFST_ATTHASTE_INFINITY

StateIconList[EFST_IDs.EFST_MOVHASTE_POTION] =
{
	haveTimeLimit = 1,
	posTimeLimitStr = 1,
	descript =
	{
		{"%s", COLOR_TIME},
		{"Increase Movement Speed"}
	}
}

StateIconList[EFST_IDs.EFST_MOVHASTE_INFINITY] =
{
	descript =
	{
		{"Increase Movement Speed"}
	}
}

-- missing: EFST_AUTOCOUNTER

-- missing: EFST_SPLASHER

-- missing: EFST_ANKLESNARE

-- missing: EFST_POSTDELAY

-- missing: EFST_NOACTION

-- missing: EFST_IMPOSSIBLEPICKUP

-- missing: EFST_BARRIER

StateIconList[EFST_IDs.EFST_NOEQUIPWEAPON] =
{
	haveTimeLimit = 1,
	posTimeLimitStr = 2,
	descript =
	{
		{"Divest Weapon", COLOR_TITLE_DEBUFF},
		{"%s", COLOR_TIME},
		{"Can't equip weapon"}
	}
}

StateIconList[EFST_IDs.EFST_NOEQUIPSHIELD] =
{
	haveTimeLimit = 1,
	posTimeLimitStr = 2,
	descript =
	{
		{"Divest Shield", COLOR_TITLE_DEBUFF},
		{"%s", COLOR_TIME},
		{"Cannot equip shield"}
	}
}

StateIconList[EFST_IDs.EFST_NOEQUIPARMOR] =
{
	haveTimeLimit = 1,
	posTimeLimitStr = 2,
	descript =
	{
		{"Divest Armor", COLOR_TITLE_DEBUFF},
		{"%s", COLOR_TIME},
		{"Cannot equip armor"}
	}
}

StateIconList[EFST_IDs.EFST_NOEQUIPHELM] =
{
	haveTimeLimit = 1,
	posTimeLimitStr = 2,
	descript =
	{
		{"Divest Helm", COLOR_TITLE_DEBUFF},
		{"%s", COLOR_TIME},
		{"Cannot equip Helm"}
	}
}

StateIconList[EFST_IDs.EFST_PROTECTWEAPON] =
{
	haveTimeLimit = 1,
	posTimeLimitStr = 2,
	descript =
	{
		{"Alchemical Weapon", COLOR_TITLE_BUFF},
		{"%s", COLOR_TIME},
		{"Protect a weapon from being destroyed"}
	}
}

StateIconList[EFST_IDs.EFST_PROTECTSHIELD] =
{
	haveTimeLimit = 1,
	posTimeLimitStr = 2,
	descript =
	{
		{"Chemical Shield", COLOR_TITLE_BUFF},
		{"%s", COLOR_TIME},
		{"Protect a shield from being destroyed"}
	}
}

StateIconList[EFST_IDs.EFST_PROTECTARMOR] =
{
	haveTimeLimit = 1,
	posTimeLimitStr = 2,
	descript =
	{
		{"Chemical Armor", COLOR_TITLE_BUFF},
		{"%s", COLOR_TIME},
		{"Protect armor from being destroyed"}
	}
}

StateIconList[EFST_IDs.EFST_PROTECTHELM] =
{
	haveTimeLimit = 1,
	posTimeLimitStr = 2,
	descript =
	{
		{"Biochemical Helm", COLOR_TITLE_BUFF},
		{"%s", COLOR_TIME},
		{"Protect helm from being destroyed"}
	}
}

StateIconList[EFST_IDs.EFST_AUTOGUARD] =
{
	haveTimeLimit = 1,
	posTimeLimitStr = 2,
	descript =
	{
		{"Guard", COLOR_TITLE_BUFF},
		{"%s", COLOR_TIME},
		{"Have chance to defend melee, long-distance attacks"}
	}
}

StateIconList[EFST_IDs.EFST_REFLECTSHIELD] =
{
	haveTimeLimit = 1,
	posTimeLimitStr = 2,
	descript =
	{
		{"Shield Reflect", COLOR_TITLE_BUFF},
		{"%s", COLOR_TIME},
		{"Reflect certain amount of damage to the enemy"},
		{"which the caster got from the mili-physical attack"}
	}
}

-- missing: EFST_DEVOTION

StateIconList[EFST_IDs.EFST_PROVIDENCE] =
{
	haveTimeLimit = 1,
	posTimeLimitStr = 2,
	descript =
	{
		{"Resistant Souls", COLOR_TITLE_BUFF},
		{"%s", COLOR_TIME},
		{"Increase resistance against"},
		{"Demon and Holy property monsters"}
	}
}

StateIconList[EFST_IDs.EFST_DEFENDER] =
{
	haveTimeLimit = 1,
	posTimeLimitStr = 2,
	descript =
	{
		{"Defending Aura", COLOR_TITLE_BUFF},
		{"%s", COLOR_TIME},
		{"Decrease long-distance physical damage"},
		{"Decrease Movement Speed, ASPD"}
	}
}

-- missing: EFST_MAGICROD

StateIconList[EFST_IDs.EFST_WEAPONPROPERTY] =
{
	haveTimeLimit = 1,
	posTimeLimitStr = 2,
	descript =
	{
		{"Aspersio", COLOR_TITLE_BUFF},
		{"%s", COLOR_TIME},
		{"Give Holy property to the weapon"}
	}
}

StateIconList[EFST_IDs.EFST_AUTOSPELL] =
{
	haveTimeLimit = 1,
	posTimeLimitStr = 2,
	descript =
	{
		{"Hindsight", COLOR_TITLE_BUFF},
		{"%s", COLOR_TIME},
		{"Have chance to auto-cast"},
		{"the selected skill when attacking"},
		{"SP consumption is 2/3 of normal comsumption"},
		{"Can't activate skill when SP is short"}
	}
}

-- missing: EFST_SPECIALZONE

-- missing: EFST_MASK

StateIconList[EFST_IDs.EFST_SPEARQUICKEN] =
{
	haveTimeLimit = 1,
	posTimeLimitStr = 2,
	descript =
	{
		{"Spear Quicken", COLOR_TITLE_BUFF},
		{"%s", COLOR_TIME},
		{"When using Spear,"},
		{"Increase ASPD"},
		{"Increase Critical rate"},
		{"Increase Flee"}
	}
}

-- missing: EFST_BDPLAYING

-- missing: EFST_WHISTLE

-- missing: EFST_ASSASSINCROSS

-- missing: EFST_POEMBRAGI

-- missing: EFST_APPLEIDUN

-- missing: EFST_HUMMING

-- missing: EFST_DONTFORGETME

-- missing: EFST_FORTUNEKISS

-- missing: EFST_SERVICEFORYOU

-- missing: EFST_RICHMANKIM

-- missing: EFST_ETERNALCHAOS

-- missing: EFST_DRUMBATTLEFIELD

-- missing: EFST_RINGNIBELUNGEN

-- missing: EFST_ROKISWEIL

-- missing: EFST_INTOABYSS

-- missing: EFST_SIEGFRIED

-- missing: EFST_BLADESTOP

StateIconList[EFST_IDs.EFST_EXPLOSIONSPIRITS] =
{
	haveTimeLimit = 1,
	posTimeLimitStr = 2,
	descript =
	{
		{"Critical Explosion", COLOR_TITLE_BUFF},
		{"%s", COLOR_TIME},
		{"Increase critical strike"}
	}
}

StateIconList[EFST_IDs.EFST_STEELBODY] =
{
	haveTimeLimit = 1,
	posTimeLimitStr = 2,
	descript =
	{
		{"Mental Strength", COLOR_TITLE_BUFF},
		{"%s", COLOR_TIME},
		{"Fixed to higher DEF and MDEF"},
		{"Decrease speed of both movement and ATK"},
		{"Unable to use skill"}
	}
}

StateIconList[EFST_IDs.EFST_EXTREMITYFIST] =
{
	descript =
	{
		{"EXTREMITYFIST", COLOR_TITLE_DEBUFF},
		{"%s", COLOR_TIME},
		{"SP is unable to recover"}
	}
}

-- missing: EFST_COMBOATTACK

StateIconList[EFST_IDs.EFST_PROPERTYFIRE] =
{
	haveTimeLimit = 1,
	posTimeLimitStr = 2,
	descript =
	{
		{"Flame Launcher", COLOR_TITLE_BUFF},
		{"%s", COLOR_TIME},
		{"Give fire property to the weapon"}
	}
}

StateIconList[EFST_IDs.EFST_PROPERTYWATER] =
{
	haveTimeLimit = 1,
	posTimeLimitStr = 2,
	descript =
	{
		{"Give Tsunami", COLOR_TITLE_BUFF},
		{"%s", COLOR_TIME},
		{"Give Water property to the weapons"}
	}
}

StateIconList[EFST_IDs.EFST_PROPERTYWIND] =
{
	haveTimeLimit = 1,
	posTimeLimitStr = 2,
	descript =
	{
		{"Lightning Loader", COLOR_TITLE_BUFF},
		{"%s", COLOR_TIME},
		{"Give Wind property to the weapon"}
	}
}

StateIconList[EFST_IDs.EFST_PROPERTYGROUND] =
{
	haveTimeLimit = 1,
	posTimeLimitStr = 2,
	descript =
	{
		{"Give Quake", COLOR_TITLE_BUFF},
		{"%s", COLOR_TIME},
		{"Enchant Earth property to the weapon"}
	}
}

-- missing: EFST_MAGICATTACK

-- missing: EFST_STOP

-- missing: EFST_WEAPONBRAKER

StateIconList[EFST_IDs.EFST_PROPERTYUNDEAD] =
{
	haveTimeLimit = 1,
	posTimeLimitStr = 1,
	descript =
	{
		{"%s", COLOR_TIME},
		{"Give Undead property"}
	}
}

-- missing: EFST_POWERUP

-- missing: EFST_AGIUP

-- missing: EFST_SIEGEMODE

-- missing: EFST_INVISIBLE

-- missing: EFST_STATUSONE

-- missing: EFST_AURABLADE

StateIconList[EFST_IDs.EFST_PARRYING] =
{
	haveTimeLimit = 1,
	posTimeLimitStr = 2,
	descript =
	{
		{"Parry", COLOR_TITLE_BUFF},
		{"%s", COLOR_TIME},
		{"Have chance to defend enemy's attack by a sword"}
	}
}

-- missing: EFST_LKCONCENTRATION

StateIconList[EFST_IDs.EFST_TENSIONRELAX] =
{
	haveTimeLimit = 1,
	posTimeLimitStr = 2,
	descript =
	{
		{"Relax", COLOR_TITLE_BUFF},
		{"%s", COLOR_TIME},
		{"Increase HP recovery speed"}
	}
}

-- missing: EFST_BERSERK

-- missing: EFST_SACRIFICE

-- missing: EFST_GOSPEL

StateIconList[EFST_IDs.EFST_ASSUMPTIO] =
{
	haveTimeLimit = 1,
	posTimeLimitStr = 2,
	descript =
	{
		{"Assumptio", COLOR_TITLE_BUFF},
		{"%s", COLOR_TIME},
		{"Increase DEF"}
	}
}

-- missing: EFST_BASILICA

StateIconList[EFST_IDs.EFST_GROUNDMAGIC] =
{
	haveTimeLimit = 1,
	posTimeLimitStr = 1,
	descript =
	{
		{"%s", COLOR_TIME},
		{"Apply the ground magic effects"}
	}
}

-- missing: EFST_MAGICPOWER

StateIconList[EFST_IDs.EFST_EDP] =
{
	haveTimeLimit = 1,
	posTimeLimitStr = 2,
	descript =
	{
		{"Enchant Deadly Poison", COLOR_TITLE_BUFF},
		{"%s", COLOR_TIME},
		{"Have chance to poison the enemy deadly"},
		{"Additional damage is not available to Boss monster"}
	}
}

StateIconList[EFST_IDs.EFST_TRUESIGHT] =
{
	haveTimeLimit = 1,
	posTimeLimitStr = 2,
	descript =
	{
		{"True Sight", COLOR_TITLE_BUFF},
		{"%s", COLOR_TIME},
		{"Increase all Status"},
		{"Increase Accuracy, Damage, Critical rate"}
	}
}

StateIconList[EFST_IDs.EFST_WINDWALK] =
{
	haveTimeLimit = 1,
	posTimeLimitStr = 2,
	descript =
	{
		{"Wind Walker", COLOR_TITLE_BUFF},
		{"%s", COLOR_TIME},
		{"Increase movement speed, Flee"}
	}
}

StateIconList[EFST_IDs.EFST_MELTDOWN] =
{
	haveTimeLimit = 1,
	posTimeLimitStr = 2,
	descript =
	{
		{"Shattering Strike", COLOR_TITLE_BUFF},
		{"%s", COLOR_TIME},
		{"The chance of destroying"},
		{"an equipped weapon or armor of other players."},
		{"Decrease ATK power or Defense"},
		{"when used on monsters"}
	}
}

StateIconList[EFST_IDs.EFST_CARTBOOST] =
{
	haveTimeLimit = 1,
	posTimeLimitStr = 2,
	descript =
	{
		{"Cart Boost", COLOR_TITLE_BUFF},
		{"%s", COLOR_TIME},
		{"Increase movement speed when using a cart"}
	}
}

-- missing: EFST_CHASEWALK

StateIconList[EFST_IDs.EFST_SWORDREJECT] =
{
	descript =
	{
		{"Counter_Instinct", COLOR_TITLE_BUFF},
		{"Reduce damage from Swords by half"},
		{"(all kind of monster attack by half)"},
		{"in a certain rate."},
		{"Deflect other half damage to the enemy"}
	}
}

StateIconList[EFST_IDs.EFST_MARIONETTE_MASTER] =
{
	haveTimeLimit = 1,
	posTimeLimitStr = 2,
	descript =
	{
		{"Marionette Control", COLOR_TITLE_BUFF},
		{"%s", COLOR_TIME},
		{"Pass the status to"},
		{"the targeted player"}
	}
}

StateIconList[EFST_IDs.EFST_MARIONETTE] =
{
	haveTimeLimit = 1,
	posTimeLimitStr = 2,
	descript =
	{
		{"Marionette Control", COLOR_TITLE_BUFF},
		{"%s", COLOR_TIME},
		{"Received a bonus Stats"},
		{"from the caster"}
	}
}

-- missing: EFST_MOON

StateIconList[EFST_IDs.EFST_BLOODING] =
{
	haveTimeLimit = 1,
	posTimeLimitStr = 2,
	descript =
	{
		{"Bleeding", COLOR_TITLE_BUFF},
		{"%s", COLOR_TIME},
		{"Cannot recover HP, SP"},
		{"Lose certain amount of HP in every 10 sec"}
	}
}

StateIconList[EFST_IDs.EFST_JOINTBEAT] =
{
	haveTimeLimit = 1,
	posTimeLimitStr = 2,
	descript =
	{
		{"Vital Strike", COLOR_TITLE_BUFF},
		{"%s", COLOR_TIME},
		{"Give enemy abnormal status"},
		{"by beating the joints"}
	}
}

-- missing: EFST_MINDBREAKER

-- missing: EFST_MEMORIZE

-- missing: EFST_FOGWALL

-- missing: EFST_SPIDERWEB

StateIconList[EFST_IDs.EFST_PROTECTEXP] =
{
	haveTimeLimit = 1,
	posTimeLimitStr = 2,
	descript =
	{
		{"Mom, Dad, I love you!", COLOR_TITLE_BUFF},
		{"%s", COLOR_TIME},
		{"Never lose EXP when the caster is dead"}
	}
}

-- missing: EFST_SUB_WEAPONPROPERTY

StateIconList[EFST_IDs.EFST_AUTOBERSERK] =
{
	descript =
	{
		{"Berserk", COLOR_TITLE_BUFF},
		{"Makes one furious when the amount of remaining HP is under 25% of full HP"}
	}
}

-- missing: EFST_RUN

-- missing: EFST_TING

StateIconList[EFST_IDs.EFST_STORMKICK_ON] =
{
	descript =
	{
		{"Tornado Kick", COLOR_TITLE_BUFF},
		{"When hit the target"},
		{"have chance to be in Tornado Stance"}
	}
}

-- missing: EFST_STORMKICK_READY

StateIconList[EFST_IDs.EFST_DOWNKICK_ON] =
{
	descript =
	{
		{"Heel Drop Stance", COLOR_TITLE_BUFF},
		{"Have chance of entering"},
		{"Heel Drop Stance when the caster successfully hits a target"}
	}
}

-- missing: EFST_DOWNKICK_READY

StateIconList[EFST_IDs.EFST_TURNKICK_ON] =
{
	descript =
	{
		{"Roundhouse Stance", COLOR_TITLE_BUFF},
		{"Have chance of automatically entering"},
		{"Roundhouse Stance when the caster successfully hits a target"}
	}
}

-- missing: EFST_TURNKICK_READY

StateIconList[EFST_IDs.EFST_COUNTER_ON] =
{
	descript =
	{
		{"Counter Kick Stance", COLOR_TITLE_BUFF},
		{"When the caster successfully hits a target"},
		{"have chance of entering Counter Kick Stance"}
	}
}

-- missing: EFST_COUNTER_READY

StateIconList[EFST_IDs.EFST_DODGE_ON] =
{
	descript =
	{
		{"Tumbling", COLOR_TITLE_BUFF},
		{"Ready Stance for Flying Kick"},
		{"Have chance to block long ranged"},
		{"physical attacks or magical attacks"},
		{"When caster is in Spurt"},
		{"also can block mili-attacks"}
	}
}

-- missing: EFST_DODGE_READY

StateIconList[EFST_IDs.EFST_STRUP] =
{
	haveTimeLimit = 1,
	posTimeLimitStr = 2,
	descript =
	{
		{"Sprint", COLOR_TITLE_BUFF},
		{"%s", COLOR_TIME},
		{"Increase STR"},
		{"When not equipped any weapon"},
		{"increase ATK according to Sprint level"}
	}
}

StateIconList[EFST_IDs.EFST_PROPERTYDARK] =
{
	haveTimeLimit = 1,
	posTimeLimitStr = 1,
	descript =
	{
		{"%s", COLOR_TIME},
		{"Give dark property to the target"}
	}
}

StateIconList[EFST_IDs.EFST_ADRENALINE2] =
{
	haveTimeLimit = 1,
	posTimeLimitStr = 2,
	descript =
	{
		{"Advanced Adrenaline Rush", COLOR_TITLE_BUFF},
		{"%s", COLOR_TIME},
		{"Increase ASPD of all weapons except bow"}
	}
}

StateIconList[EFST_IDs.EFST_PROPERTYTELEKINESIS] =
{
	haveTimeLimit = 1,
	posTimeLimitStr = 1,
	descript =
	{
		{"%s", COLOR_TIME},
		{"Inflict Ghost property to the enemy"}
	}
}

-- missing: EFST_SOULLINK

StateIconList[EFST_IDs.EFST_PLUSATTACKPOWER] =
{
	haveTimeLimit = 1,
	posTimeLimitStr = 1,
	descript =
	{
		{"%s", COLOR_TIME},
		{"Increase ATK"}
	}
}

StateIconList[EFST_IDs.EFST_PLUSMAGICPOWER] =
{
	haveTimeLimit = 1,
	posTimeLimitStr = 1,
	descript =
	{
		{"%s", COLOR_TIME},
		{"Increase MATK"}
	}
}

-- missing: EFST_DEVIL1

-- missing: EFST_KAITE

-- missing: EFST_SWOO

-- missing: EFST_STAR2

StateIconList[EFST_IDs.EFST_KAIZEL] =
{
	haveTimeLimit = 1,
	posTimeLimitStr = 2,
	descript =
	{
		{"Kaizel", COLOR_TITLE_BUFF},
		{"%s", COLOR_TIME},
		{"DEX doesn't affect player's casting time"},
		{"Instantly revive a dead character that will be in Kyrie Eleison status for 2 seconds"}
	}
}

StateIconList[EFST_IDs.EFST_KAAHI] =
{
	haveTimeLimit = 1,
	posTimeLimitStr = 2,
	descript =
	{
		{"Kaahi", COLOR_TITLE_BUFF},
		{"%s", COLOR_TIME},
		{"Recover HP by consuming SP when receiving attacks"},
		{"excluding skill attacksSP"}
	}
}

StateIconList[EFST_IDs.EFST_KAUPE] =
{
	haveTimeLimit = 1,
	posTimeLimitStr = 2,
	descript =
	{
		{"Kaupe", COLOR_TITLE_BUFF},
		{"%s", COLOR_TIME},
		{"Have chance to avoid enemy's attack"}
	}
}

-- missing: EFST_SMA_READY

-- missing: EFST_SKE

StateIconList[EFST_IDs.EFST_ONEHANDQUICKEN] =
{
	haveTimeLimit = 1,
	posTimeLimitStr = 2,
	descript =
	{
		{"One Hand Quicken", COLOR_TITLE_BUFF},
		{"%s", COLOR_TIME},
		{"Increase ASPD when using one hand sword"}
	}
}

-- missing: EFST_FRIEND

-- missing: EFST_FRIENDUP

-- missing: EFST_SG_WARM

-- missing: EFST_SG_SUN_WARM

-- missing: EFST_SG_MOON_WARM

-- missing: EFST_SG_STAR_WARM

-- missing: EFST_EMOTION

StateIconList[EFST_IDs.EFST_SUN_COMFORT] =
{
	haveTimeLimit = 1,
	posTimeLimitStr = 2,
	descript =
	{
		{"Solar Protection", COLOR_TITLE_BUFF},
		{"%s", COLOR_TIME},
		{"Increase DEF"}
	}
}

StateIconList[EFST_IDs.EFST_MOON_COMFORT] =
{
	haveTimeLimit = 1,
	posTimeLimitStr = 2,
	descript =
	{
		{"Lunar Protection", COLOR_TITLE_BUFF},
		{"%s", COLOR_TIME},
		{"Increase Flee"}
	}
}

StateIconList[EFST_IDs.EFST_STAR_COMFORT] =
{
	haveTimeLimit = 1,
	posTimeLimitStr = 2,
	descript =
	{
		{"Star Comfort", COLOR_TITLE_BUFF},
		{"%s", COLOR_TIME},
		{"Increase ASPD"}
	}
}

-- missing: EFST_EXPUP

-- missing: EFST_GDSKILL_BATTLEORDER

-- missing: EFST_GDSKILL_REGENERATION

-- missing: EFST_GDSKILL_POSTDELAY

-- missing: EFST_RESISTHANDICAP

-- missing: EFST_MAXHPPERCENT

-- missing: EFST_MAXSPPERCENT

-- missing: EFST_DEFENCE

-- missing: EFST_SLOWDOWN

StateIconList[EFST_IDs.EFST_PRESERVE] =
{
	haveTimeLimit = 1,
	posTimeLimitStr = 2,
	descript =
	{
		{"Preserve", COLOR_TITLE_BUFF},
		{"%s", COLOR_TIME},
		{"Cannot plagiarize the skill"}
	}
}

StateIconList[EFST_IDs.EFST_CHASEWALK2] =
{
	haveTimeLimit = 1,
	posTimeLimitStr = 1,
	descript =
	{
		{"%s", COLOR_TIME},
		{"Increase STR"}
	}
}

-- missing: EFST_NOT_EXTREMITYFIST

-- missing: EFST_CLAIRVOYANCE

-- missing: EFST_MOVESLOW_POTION

StateIconList[EFST_IDs.EFST_DOUBLECASTING] =
{
	haveTimeLimit = 1,
	posTimeLimitStr = 2,
	descript =
	{
		{"Double Bolt", COLOR_TITLE_BUFF},
		{"%s", COLOR_TIME},
		{"Chance to repeat any Bolt skill"},
		{"that is already casted"}
	}
}

-- missing: EFST_GRAVITATION

StateIconList[EFST_IDs.EFST_OVERTHRUSTMAX] =
{
	haveTimeLimit = 1,
	posTimeLimitStr = 2,
	descript =
	{
		{"Maximum Power Thrust", COLOR_TITLE_BUFF},
		{"%s", COLOR_TIME},
		{"Increase weapon ATK"},
		{"Increase the possibility for the weapon to be destroyed"}
	}
}

-- missing: EFST_LONGING

-- missing: EFST_HERMODE

StateIconList[EFST_IDs.EFST_TAROTCARD] =
{
	haveTimeLimit = 1,
	posTimeLimitStr = 2,
	descript =
	{
		{"Tarot Card of Fate", COLOR_TITLE_BUFF},
		{"%s", COLOR_TIME},
		{"Randomly chosen effect from one out of 14 tarot cards"}
	}
}

-- missing: EFST_HLIF_AVOID

-- missing: EFST_HFLI_FLEET

-- missing: EFST_HFLI_SPEED

-- missing: EFST_HLIF_CHANGE

-- missing: EFST_HAMI_BLOODLUST

StateIconList[EFST_IDs.EFST_CR_SHRINK] =
{
	haveTimeLimit = 1,
	posTimeLimitStr = 2,
	descript =
	{
		{"Shrink", COLOR_TITLE_BUFF},
		{"%s", COLOR_TIME},
		{"Have chance to push the enemy"},
		{"when used with Guard skill"}
	}
}

StateIconList[EFST_IDs.EFST_WZ_SIGHTBLASTER] =
{
	haveTimeLimit = 1,
	posTimeLimitStr = 2,
	descript =
	{
		{"Sight Blaster", COLOR_TITLE_BUFF},
		{"%s", COLOR_TIME},
		{"Push away the enemy giving the damage"},
		{"equal to the caster's MATK"}
	}
}

-- missing: EFST_DC_WINKCHARM

StateIconList[EFST_IDs.EFST_RG_CCONFINE_M] =
{
	haveTimeLimit = 1,
	posTimeLimitStr = 2,
	descript =
	{
		{"Close Confine", COLOR_TITLE_BUFF},
		{"%s", COLOR_TIME},
		{"Immobilize the caster and 1 enemy"},
		{"Increase Flee"},
		{"Cannot use to Boss monster"}
	}
}

StateIconList[EFST_IDs.EFST_RG_CCONFINE_S] =
{
	haveTimeLimit = 1,
	posTimeLimitStr = 2,
	descript =
	{
		{"Close Confine", COLOR_TITLE_BUFF},
		{"%s", COLOR_TIME},
		{"Immobilize the caster and 1 enemy"},
		{"Increase Flee"},
		{"Cannot use to Boss monster"}
	}
}

-- missing: EFST_DISABLEMOVE

StateIconList[EFST_IDs.EFST_GS_MADNESSCANCEL] =
{
	haveTimeLimit = 1,
	posTimeLimitStr = 2,
	descript =
	{
		{"Last Stand", COLOR_TITLE_BUFF},
		{"%s", COLOR_TIME},
		{"Increase ATK"},
		{"Increase ASPD"},
		{"Immobilized"}
	}
}

StateIconList[EFST_IDs.EFST_GS_GATLINGFEVER] =
{
	haveTimeLimit = 1,
	posTimeLimitStr = 2,
	descript =
	{
		{"Gatling Fever", COLOR_TITLE_BUFF},
		{"%s", COLOR_TIME},
		{"Increase ASPD, Damage"},
		{"Decrease Flee, Movement Speed"}
	}
}

StateIconList[EFST_IDs.EFST_EARTHSCROLL] =
{
	haveTimeLimit = 1,
	posTimeLimitStr = 2,
	descript =
	{
		{"Happy Break", COLOR_TITLE_BUFF},
		{"%s", COLOR_TIME},
		{"When using Earth Spike spell scroll"},
		{"Consume certain amount of SP"},
		{"Have low chance of consume spell scroll"}
	}
}

StateIconList[EFST_IDs.EFST_NJ_UTSUSEMI] =
{
	haveTimeLimit = 1,
	posTimeLimitStr = 2,
	descript =
	{
		{"Cicada Skin Shed", COLOR_TITLE_BUFF},
		{"%s", COLOR_TIME},
		{"Avoid enemy attacks for certain times"},
		{"Move to the opposite side of attacker"}
	}
}

StateIconList[EFST_IDs.EFST_NJ_BUNSINJYUTSU] =
{
	haveTimeLimit = 1,
	posTimeLimitStr = 2,
	descript =
	{
		{"Mirror Image", COLOR_TITLE_BUFF},
		{"%s", COLOR_TIME},
		{"Avoid long and short range physical attacks"},
		{"Impossible to defend MATK"}
	}
}

StateIconList[EFST_IDs.EFST_NJ_NEN] =
{
	haveTimeLimit = 1,
	posTimeLimitStr = 2,
	descript =
	{
		{"Ninja Aura", COLOR_TITLE_BUFF},
		{"%s", COLOR_TIME},
		{"Increase INT, STR"}
	}
}

StateIconList[EFST_IDs.EFST_GS_ADJUSTMENT] =
{
	haveTimeLimit = 1,
	posTimeLimitStr = 2,
	descript =
	{
		{"Gunslinger's_Panic", COLOR_TITLE_BUFF},
		{"%s", COLOR_TIME},
		{"Decrease Acuuracy"},
		{"Increase Flee"},
		{"Decrease damage from long-distance physical attack"}
	}
}

StateIconList[EFST_IDs.EFST_GS_ACCURACY] =
{
	haveTimeLimit = 1,
	posTimeLimitStr = 2,
	descript =
	{
		{"Increase Accuracy", COLOR_TITLE_BUFF},
		{"%s", COLOR_TIME},
		{"Increase Accuracy"},
		{"Increase DEX"},
		{"Increase AGI"}
	}
}

-- missing: EFST_NJ_SUITON

-- missing: EFST_PET

-- missing: EFST_MENTAL

-- missing: EFST_EXPMEMORY

-- missing: EFST_PERFORMANCE

-- missing: EFST_GAIN

StateIconList[EFST_IDs.EFST_GRIFFON] =
{
	descript =
	{
		{"Riding Gryphon", COLOR_TITLE_BUFF}
	}
}

-- missing: EFST_DRIFT

-- missing: EFST_WALLSHIFT

-- missing: EFST_REINCARNATION

-- missing: EFST_PATTACK

-- missing: EFST_PSPEED

-- missing: EFST_PDEFENSE

-- missing: EFST_PCRITICAL

-- missing: EFST_RANKING

-- missing: EFST_PTRIPLE

-- missing: EFST_DENERGY

-- missing: EFST_WAVE1

-- missing: EFST_WAVE2

-- missing: EFST_WAVE3

-- missing: EFST_WAVE4

-- missing: EFST_DAURA

-- missing: EFST_DFREEZER

-- missing: EFST_DPUNISH

-- missing: EFST_DBARRIER

-- missing: EFST_DWARNING

-- missing: EFST_MOUSEWHEEL

-- missing: EFST_DGAUGE

-- missing: EFST_DACCEL

-- missing: EFST_DBLOCK

StateIconList[EFST_IDs.EFST_FOOD_STR] =
{
	haveTimeLimit = 1,
	posTimeLimitStr = 1,
	descript =
	{
		{"%s", COLOR_TIME},
		{"Increase STR"}
	}
}

StateIconList[EFST_IDs.EFST_FOOD_AGI] =
{
	haveTimeLimit = 1,
	posTimeLimitStr = 1,
	descript =
	{
		{"%s", COLOR_TIME},
		{"Increase AGI"}
	}
}

StateIconList[EFST_IDs.EFST_FOOD_VIT] =
{
	haveTimeLimit = 1,
	posTimeLimitStr = 1,
	descript =
	{
		{"%s", COLOR_TIME},
		{"Increase VIT"}
	}
}

StateIconList[EFST_IDs.EFST_FOOD_DEX] =
{
	haveTimeLimit = 1,
	posTimeLimitStr = 1,
	descript =
	{
		{"%s", COLOR_TIME},
		{"Increase DEX"}
	}
}

StateIconList[EFST_IDs.EFST_FOOD_INT] =
{
	haveTimeLimit = 1,
	posTimeLimitStr = 1,
	descript =
	{
		{"%s", COLOR_TIME},
		{"Increase INT"}
	}
}

StateIconList[EFST_IDs.EFST_FOOD_LUK] =
{
	haveTimeLimit = 1,
	posTimeLimitStr = 1,
	descript =
	{
		{"%s", COLOR_TIME},
		{"Increase LUK"}
	}
}

StateIconList[EFST_IDs.EFST_FOOD_BASICAVOIDANCE] =
{
	haveTimeLimit = 1,
	posTimeLimitStr = 1,
	descript =
	{
		{"%s", COLOR_TIME},
		{"Increase Flee"}
	}
}

StateIconList[EFST_IDs.EFST_FOOD_BASICHIT] =
{
	haveTimeLimit = 1,
	posTimeLimitStr = 1,
	descript =
	{
		{"%s", COLOR_TIME},
		{"Increase Accuracy"}
	}
}

StateIconList[EFST_IDs.EFST_FOOD_CRITICALSUCCESSVALUE] =
{
	haveTimeLimit = 1,
	posTimeLimitStr = 1,
	descript =
	{
		{"%s", COLOR_TIME},
		{"Increase Critical rate"}
	}
}

StateIconList[EFST_IDs.EFST_CASH_PLUSEXP] =
{
	haveTimeLimit = 1,
	posTimeLimitStr = 1,
	descript =
	{
		{"%s", COLOR_TIME},
		{"Increase amount of EXP acquired"}
	}
}

StateIconList[EFST_IDs.EFST_CASH_DEATHPENALTY] =
{
	haveTimeLimit = 1,
	posTimeLimitStr = 1,
	descript =
	{
		{"%s", COLOR_TIME},
		{"Don't lose EXP when the caster is dead"}
	}
}

StateIconList[EFST_IDs.EFST_CASH_RECEIVEITEM] =
{
	haveTimeLimit = 1,
	posTimeLimitStr = 1,
	descript =
	{
		{"%s", COLOR_TIME},
		{"Increase item drop rate two times higher"},
		{"from the monsters"}
	}
}

-- missing: EFST_CASH_BOSS_ALARM

-- missing: EFST_DA_ENERGY

-- missing: EFST_DA_FIRSTSLOT

-- missing: EFST_DA_HEADDEF

-- missing: EFST_DA_SPACE

-- missing: EFST_DA_TRANSFORM

-- missing: EFST_DA_ITEMREBUILD

-- missing: EFST_DA_ILLUSION

-- missing: EFST_DA_DARKPOWER

-- missing: EFST_DA_EARPLUG

-- missing: EFST_DA_CONTRACT

-- missing: EFST_DA_BLACK

-- missing: EFST_DA_MAGICCART

-- missing: EFST_CRYSTAL

-- missing: EFST_DA_REBUILD

-- missing: EFST_DA_EDARKNESS

-- missing: EFST_DA_EGUARDIAN

-- missing: EFST_DA_TIMEOUT

StateIconList[EFST_IDs.EFST_FOOD_STR_CASH] =
{
	haveTimeLimit = 1,
	posTimeLimitStr = 1,
	descript =
	{
		{"%s", COLOR_TIME},
		{"Increase STR"}
	}
}

StateIconList[EFST_IDs.EFST_FOOD_AGI_CASH] =
{
	haveTimeLimit = 1,
	posTimeLimitStr = 1,
	descript =
	{
		{"%s", COLOR_TIME},
		{"Increase AGI"}
	}
}

StateIconList[EFST_IDs.EFST_FOOD_VIT_CASH] =
{
	haveTimeLimit = 1,
	posTimeLimitStr = 1,
	descript =
	{
		{"%s", COLOR_TIME},
		{"Increase VIT"}
	}
}

StateIconList[EFST_IDs.EFST_FOOD_DEX_CASH] =
{
	haveTimeLimit = 1,
	posTimeLimitStr = 1,
	descript =
	{
		{"%s", COLOR_TIME},
		{"Increase DEX"}
	}
}

StateIconList[EFST_IDs.EFST_FOOD_INT_CASH] =
{
	haveTimeLimit = 1,
	posTimeLimitStr = 1,
	descript =
	{
		{"%s", COLOR_TIME},
		{"Increase INT"}
	}
}

StateIconList[EFST_IDs.EFST_FOOD_LUK_CASH] =
{
	haveTimeLimit = 1,
	posTimeLimitStr = 1,
	descript =
	{
		{"%s", COLOR_TIME},
		{"Increase LUK"}
	}
}

-- missing: EFST_MER_FLEE

-- missing: EFST_MER_ATK

-- missing: EFST_MER_HP

-- missing: EFST_MER_SP

-- missing: EFST_MER_HIT

StateIconList[EFST_IDs.EFST_SLOWCAST] =
{
	haveTimeLimit = 1,
	posTimeLimitStr = 2,
	descript =
	{
		{"Slow Cast", COLOR_TITLE_DEBUFF},
		{"%s", COLOR_TIME},
		{"Increase the casting time"}
	}
}

-- missing: EFST_MAGICMIRROR

-- missing: EFST_STONESKIN

-- missing: EFST_ANTIMAGIC

StateIconList[EFST_IDs.EFST_CRITICALWOUND] =
{
	haveTimeLimit = 1,
	posTimeLimitStr = 2,
	descript =
	{
		{"Critical Wound", COLOR_TITLE_DEBUFF},
		{"%s", COLOR_TIME},
		{"Decrease the effect of healing skills"}
	}
}

-- missing: EFST_NPC_DEFENDER

-- missing: EFST_NOACTION_WAIT

StateIconList[EFST_IDs.EFST_MOVHASTE_HORSE] =
{
	haveTimeLimit = 1,
	posTimeLimitStr = 1,
	descript =
	{
		{"%s", COLOR_TIME},
		{"Increase ASPD"}
	}
}

StateIconList[EFST_IDs.EFST_PROTECT_DEF] =
{
	haveTimeLimit = 1,
	posTimeLimitStr = 2,
	descript =
	{
		{"Physical Defense Potion", COLOR_TITLE_BUFF},
		{"%s", COLOR_TIME},
		{"Increase resistance against physical ATK"}
	}
}

StateIconList[EFST_IDs.EFST_PROTECT_MDEF] =
{
	haveTimeLimit = 1,
	posTimeLimitStr = 2,
	descript =
	{
		{"MDEF Potion", COLOR_TITLE_BUFF},
		{"%s", COLOR_TIME},
		{"Increase resistance against MATK"}
	}
}

StateIconList[EFST_IDs.EFST_HEALPLUS] =
{
	haveTimeLimit = 1,
	posTimeLimitStr = 2,
	descript =
	{
		{"Regeneration Potion", COLOR_TITLE_BUFF},
		{"%s", COLOR_TIME},
		{"Increase the effect of"},
		{"healing skills and some healing items"}
	}
}

StateIconList[EFST_IDs.EFST_S_LIFEPOTION] =
{
	haveTimeLimit = 1,
	posTimeLimitStr = 2,
	descript =
	{
		{"Small Life Potion", COLOR_TITLE_BUFF},
		{"%s", COLOR_TIME},
		{"Recover certain amount of HP in every 5 sec"},
		{"Doesn't have effect in Berserk condition"}
	}
}

StateIconList[EFST_IDs.EFST_L_LIFEPOTION] =
{
	haveTimeLimit = 1,
	posTimeLimitStr = 2,
	descript =
	{
		{"Medium Life Potion", COLOR_TITLE_BUFF},
		{"%s", COLOR_TIME},
		{"Recover certain amount of HP in every 4 sec"},
		{"No effect when Berserk status"}
	}
}

StateIconList[EFST_IDs.EFST_CRITICALPERCENT] =
{
	haveTimeLimit = 1,
	posTimeLimitStr = 2,
	descript =
	{
		{"Abrasive", COLOR_TITLE_BUFF},
		{"%s", COLOR_TIME},
		{"Increase Critical chance"}
	}
}

StateIconList[EFST_IDs.EFST_PLUSAVOIDVALUE] =
{
	haveTimeLimit = 1,
	posTimeLimitStr = 2,
	descript =
	{
		{"Welcome Glass", COLOR_TITLE_BUFF},
		{"%s", COLOR_TIME},
		{"Increase Full Flee"}
	}
}

StateIconList[EFST_IDs.EFST_ATKER_ASPD] =
{
	haveTimeLimit = 1,
	posTimeLimitStr = 2,
	descript =
	{
		{"HP Pill", COLOR_TITLE_BUFF},
		{"%s", COLOR_TIME},
		{"Increase MHP"},
		{"Increase HP recovery"}
	}
}

StateIconList[EFST_IDs.EFST_TARGET_ASPD] =
{
	haveTimeLimit = 1,
	posTimeLimitStr = 1,
	descript =
	{
		{"%s", COLOR_TIME},
		{"Increase MSP, Decrease SP consumption"}
	}
}

StateIconList[EFST_IDs.EFST_ATKER_MOVESPEED] =
{
	haveTimeLimit = 1,
	posTimeLimitStr = 2,
	descript =
	{
		{"SP Pill", COLOR_TITLE_BUFF},
		{"%s", COLOR_TIME},
		{"Increase MSP"},
		{"Increase SP recovery"}
	}
}

StateIconList[EFST_IDs.EFST_ATKER_BLOOD] =
{
	haveTimeLimit = 1,
	posTimeLimitStr = 2,
	descript =
	{
		{"SP Consumption Decrease Potion", COLOR_TITLE_BUFF},
		{"%s", COLOR_TIME},
		{"Decrease SP consumption when using skills"}
	}
}

StateIconList[EFST_IDs.EFST_TARGET_BLOOD] =
{
	haveTimeLimit = 1,
	posTimeLimitStr = 2,
	descript =
	{
		{"Abnormal Status Resistance Potion", COLOR_TITLE_BUFF},
		{"%s", COLOR_TIME},
		{"Increase resistance against the status below"},
		{"Stun, Freezing, Stone Curse, Sleep, Silence"},
		{"Darkness, Curse, Poison, Bleeding, Confusion"}
	}
}

StateIconList[EFST_IDs.EFST_ARMOR_PROPERTY] =
{
	haveTimeLimit = 1,
	posTimeLimitStr = 2,
	descript =
	{
		{"Change Property Scroll", COLOR_TITLE_BUFF},
		{"%s", COLOR_TIME},
		{"Change Property"}
	}
}

-- missing: EFST_REUSE_LIMIT_A

StateIconList[EFST_IDs.EFST_HELLPOWER] =
{
	haveTimeLimit = 1,
	posTimeLimitStr = 2,
	descript =
	{
		{"Hell Power", COLOR_TITLE_BUFF},
		{"%s", COLOR_TIME},
		{"Cannot revive"},
		{"Cannot use Sacrifice"},
		{"Cannot use Token of Siegfried"}
	}
}

-- missing: EFST_STEAMPACK

-- missing: EFST_REUSE_LIMIT_B

-- missing: EFST_REUSE_LIMIT_C

-- missing: EFST_REUSE_LIMIT_D

-- missing: EFST_REUSE_LIMIT_E

-- missing: EFST_REUSE_LIMIT_F

-- missing: EFST_INVINCIBLE

StateIconList[EFST_IDs.EFST_CASH_PLUSONLYJOBEXP] =
{
	haveTimeLimit = 1,
	posTimeLimitStr = 1,
	descript =
	{
		{"%s", COLOR_TIME},
		{"Get 1.5x Job EXP when hunting monsters"}
	}
}

StateIconList[EFST_IDs.EFST_PARTYFLEE] =
{
	haveTimeLimit = 1,
	posTimeLimitStr = 1,
	descript =
	{
		{"%s", COLOR_TIME},
		{"Increase Flee"}
	}
}

StateIconList[EFST_IDs.EFST_ANGEL_PROTECT] =
{
	haveTimeLimit = 1,
	posTimeLimitStr = 2,
	descript =
	{
		{"Thank You So Much", COLOR_TITLE_BUFF},
		{"%s", COLOR_TIME},
		{"Increase HP, SP recovery speed"}
	}
}

-- missing: EFST_ENDURE_MDEF

StateIconList[EFST_IDs.EFST_ENCHANTBLADE] =
{
	haveTimeLimit = 1,
	posTimeLimitStr = 2,
	descript =
	{
		{"Enchant Blade", COLOR_TITLE_BUFF},
		{"%s", COLOR_TIME},
		{"Add MATK to mili physical ATK"}
	}
}

-- missing: EFST_DEATHBOUND

StateIconList[EFST_IDs.EFST_REFRESH] =
{
	haveTimeLimit = 1,
	posTimeLimitStr = 2,
	descript =
	{
		{"Refresh", COLOR_TITLE_BUFF},
		{"%s", COLOR_TIME},
		{"Recover all kinds of abnormal status and debuffs"},
		{"Never get abnormal status and debuffs"},
		{"Recover certain amount of HP"}
	}
}

StateIconList[EFST_IDs.EFST_GIANTGROWTH] =
{
	haveTimeLimit = 1,
	posTimeLimitStr = 2,
	descript =
	{
		{"Giant Cross", COLOR_TITLE_BUFF},
		{"%s", COLOR_TIME},
		{"Increase STR"},
		{"When melee attacking"},
		{"have chance to give gigantic damage"},
		{"have chance to destroy the caster's weapon"}
	}
}

StateIconList[EFST_IDs.EFST_STONEHARDSKIN] =
{
	haveTimeLimit = 1,
	posTimeLimitStr = 2,
	descript =
	{
		{"Stonehard Skin", COLOR_TITLE_BUFF},
		{"%s", COLOR_TIME},
		{"Create defense barrier after consuming certain amount of HP"},
		{"When other player mili physical attacks to the caster"},
		{"have chance to destroy the enemy's weapon"},
		{"have chance to decrease ATK of the monster"}
	}
}

StateIconList[EFST_IDs.EFST_VITALITYACTIVATION] =
{
	haveTimeLimit = 1,
	posTimeLimitStr = 2,
	descript =
	{
		{"Vitality Activation", COLOR_TITLE_BUFF},
		{"%s", COLOR_TIME},
		{"Increase the effect of"},
		{"HP recovery skill and healing item"},
		{"Cannot auto-recover SP"},
		{"Decrease the effect of SP recovery potion"}
	}
}

StateIconList[EFST_IDs.EFST_FIGHTINGSPIRIT] =
{
	haveTimeLimit = 1,
	posTimeLimitStr = 2,
	descript =
	{
		{"Fighting Spirit", COLOR_TITLE_BUFF},
		{"%s", COLOR_TIME},
		{"Increase ATK"},
		{"Increase ASPD of caster"}
	}
}

StateIconList[EFST_IDs.EFST_ABUNDANCE] =
{
	haveTimeLimit = 1,
	posTimeLimitStr = 2,
	descript =
	{
		{"Abundance", COLOR_TITLE_BUFF},
		{"%s", COLOR_TIME},
		{"Recover certain amount of SP in every 10 sec"}
	}
}

-- missing: EFST_REUSE_MILLENNIUMSHIELD

-- missing: EFST_REUSE_CRUSHSTRIKE

-- missing: EFST_REUSE_REFRESH

-- missing: EFST_REUSE_STORMBLAST

-- missing: EFST_VENOMIMPRESS

-- missing: EFST_EPICLESIS

-- missing: EFST_ORATIO

-- missing: EFST_LAUDAAGNUS

-- missing: EFST_LAUDARAMUS

StateIconList[EFST_IDs.EFST_CLOAKINGEXCEED] =
{
	descript =
	{
		{"Cloaking Exceed", COLOR_TITLE_BUFF},
		{"Can't be detected by Insect and Demon monsters"},
		{"Not released till hit by certain numbers of damage"},
		{"Increase Movement Speed"}
	}
}

StateIconList[EFST_IDs.EFST_HALLUCINATIONWALK] =
{
	haveTimeLimit = 1,
	posTimeLimitStr = 2,
	descript =
	{
		{"Hallucination Walk", COLOR_TITLE_BUFF},
		{"%s", COLOR_TIME},
		{"Increase Flee"},
		{"Have chance to avoid MATK"}
	}
}

-- missing: EFST_HALLUCINATIONWALK_POSTDELAY

StateIconList[EFST_IDs.EFST_RENOVATIO] =
{
	haveTimeLimit = 1,
	posTimeLimitStr = 2,
	descript =
	{
		{"Renovatio", COLOR_TITLE_BUFF},
		{"%s", COLOR_TIME},
		{"Recover certain amount of HP in every 5 sec"},
		{"Give certain damage to Undead monsters"},
		{"according to the level of caster"}
	}
}

StateIconList[EFST_IDs.EFST_WEAPONBLOCKING] =
{
	haveTimeLimit = 1,
	posTimeLimitStr = 2,
	descript =
	{
		{"Weapon Blocking", COLOR_TITLE_BUFF},
		{"%s", COLOR_TIME},
		{"Have chance to fully avoid damage"},
		{"of mili physical attack"}
	}
}

-- missing: EFST_WEAPONBLOCKING_POSTDELAY

-- missing: EFST_ROLLINGCUTTER

-- missing: EFST_EXPIATIO

StateIconList[EFST_IDs.EFST_POISONINGWEAPON] =
{
	haveTimeLimit = 1,
	posTimeLimitStr = 2,
	descript =
	{
		{"Poisonous Weapon", COLOR_TITLE_BUFF},
		{"%s", COLOR_TIME},
		{"Make the enemy poisoned by poisonous weapon"}
	}
}

StateIconList[EFST_IDs.EFST_TOXIN] =
{
	haveTimeLimit = 1,
	posTimeLimitStr = 2,
	descript =
	{
		{"Toxin", COLOR_TITLE_BUFF},
		{"%s", COLOR_TIME},
		{"Bothers casting and skill motion for 10 sec"},
		{"Ignore Phen Card options"},
		{"Lose certain amount of SP in every 10 sec"}
	}
}

StateIconList[EFST_IDs.EFST_PARALYSE] =
{
	haveTimeLimit = 1,
	posTimeLimitStr = 2,
	descript =
	{
		{"Paralyze", COLOR_TITLE_BUFF},
		{"%s", COLOR_TIME},
		{"Decrease ASPD"},
		{"Decrease Flee"},
		{"Decrease Movement Speed"}
	}
}

StateIconList[EFST_IDs.EFST_VENOMBLEED] =
{
	haveTimeLimit = 1,
	posTimeLimitStr = 2,
	descript =
	{
		{"Venom Bleed", COLOR_TITLE_DEBUFF},
		{"%s", COLOR_TIME},
		{"Decrease MHP"}
	}
}

StateIconList[EFST_IDs.EFST_MAGICMUSHROOM] =
{
	haveTimeLimit = 1,
	posTimeLimitStr = 2,
	descript =
	{
		{"Magic Mushroom", COLOR_TITLE_BUFF},
		{"%s", COLOR_TIME},
		{"Smile emoticon"},
		{"Cast random skill in every 4 sec"},
		{"Lose certain amount of HP in every 4 sec"}
	}
}

StateIconList[EFST_IDs.EFST_DEATHHURT] =
{
	haveTimeLimit = 1,
	posTimeLimitStr = 2,
	descript =
	{
		{"Death Wound", COLOR_TITLE_DEBUFF},
		{"%s", COLOR_TIME},
		{"Decrease the effect when receiving Heal skills"}
	}
}

StateIconList[EFST_IDs.EFST_PYREXIA] =
{
	haveTimeLimit = 1,
	posTimeLimitStr = 2,
	descript =
	{
		{"Pyrexia", COLOR_TITLE_BUFF},
		{"%s", COLOR_TIME},
		{"Darkness, Confusion status"}
	}
}

StateIconList[EFST_IDs.EFST_OBLIVIONCURSE] =
{
	haveTimeLimit = 1,
	posTimeLimitStr = 2,
	descript =
	{
		{"Oblivious Curse", COLOR_TITLE_DEBUFF},
		{"%s", COLOR_TIME},
		{"Oblivion status"}
	}
}

StateIconList[EFST_IDs.EFST_LEECHESEND] =
{
	haveTimeLimit = 1,
	posTimeLimitStr = 2,
	descript =
	{
		{"Sticking Leech", COLOR_TITLE_BUFF},
		{"%s", COLOR_TIME},
		{"Consume HP in every sec"}
	}
}

-- missing: EFST_DUPLELIGHT

StateIconList[EFST_IDs.EFST_FROSTMISTY] =
{
	haveTimeLimit = 1,
	posTimeLimitStr = 2,
	descript =
	{
		{"Frost Musty", COLOR_TITLE_DEBUFF},
		{"%s", COLOR_TIME},
		{"Decrease DEF, Movement Speed, ASPD"},
		{"Increase fixed casting time"}
	}
}

StateIconList[EFST_IDs.EFST_FEARBREEZE] =
{
	haveTimeLimit = 1,
	posTimeLimitStr = 2,
	descript =
	{
		{"Fear Breeze", COLOR_TITLE_BUFF},
		{"%s", COLOR_TIME},
		{"Have chance to attack once more"},
		{"When attacking with a bow"}
	}
}

-- missing: EFST_ELECTRICSHOCKER

StateIconList[EFST_IDs.EFST_MARSHOFABYSS] =
{
	haveTimeLimit = 1,
	posTimeLimitStr = 2,
	descript =
	{
		{"Marsh Of Abyss", COLOR_TITLE_DEBUFF},
		{"%s", COLOR_TIME},
		{"Decrease Movement Speed"},
		{"Decrease DEF, Flee"}
	}
}

StateIconList[EFST_IDs.EFST_RECOGNIZEDSPELL] =
{
	haveTimeLimit = 1,
	posTimeLimitStr = 2,
	descript =
	{
		{"Recognized Spell", COLOR_TITLE_BUFF},
		{"%s", COLOR_TIME},
		{"Attack with the maximum MATK"},
		{"Increase SP consumption"}
	}
}

-- missing: EFST_STASIS

StateIconList[EFST_IDs.EFST_WUGRIDER] =
{
	haveTimeLimit = 1,
	posTimeLimitStr = 2,
	descript =
	{
		{"Warg Rider", COLOR_TITLE_BUFF},
		{"%s", COLOR_TIME},
		{"Can't use a bow"},
		{"Can use only Warg skills"}
	}
}

-- missing: EFST_WUGDASH

-- missing: EFST_WUGBITE

-- missing: EFST_CAMOUFLAGE

StateIconList[EFST_IDs.EFST_ACCELERATION] =
{
	haveTimeLimit = 1,
	posTimeLimitStr = 2,
	descript =
	{
		{"Acceleration", COLOR_TITLE_BUFF},
		{"%s", COLOR_TIME},
		{"Increase Movement Speed of Madogear"}
	}
}

StateIconList[EFST_IDs.EFST_HOVERING] =
{
	haveTimeLimit = 1,
	posTimeLimitStr = 2,
	descript =
	{
		{"Hover", COLOR_TITLE_BUFF},
		{"%s", COLOR_TIME},
		{"Resistant against trap and other specific land-magics"}
	}
}

-- missing: EFST_SUMMON1

-- missing: EFST_SUMMON2

-- missing: EFST_SUMMON3

-- missing: EFST_SUMMON4

-- missing: EFST_SUMMON5

StateIconList[EFST_IDs.EFST_MVPCARD_TAOGUNKA] =
{
	haveTimeLimit = 1,
	posTimeLimitStr = 2,
	descript =
	{
		{"Tao Gunka Scroll", COLOR_TITLE_BUFF},
		{"%s", COLOR_TIME},
		{"MHP Increase"},
		{"DEF/MDEF Decrease"}
	}
}

StateIconList[EFST_IDs.EFST_MVPCARD_MISTRESS] =
{
	haveTimeLimit = 1,
	posTimeLimitStr = 2,
	descript =
	{
		{"Mistress Scroll", COLOR_TITLE_BUFF},
		{"%s", COLOR_TIME},
		{"Allows the use of magic without using Gemstone"},
		{"SP Consumption Increase"}
	}
}

StateIconList[EFST_IDs.EFST_MVPCARD_ORCHERO] =
{
	haveTimeLimit = 1,
	posTimeLimitStr = 2,
	descript =
	{
		{"Orc Hero Scroll", COLOR_TITLE_BUFF},
		{"%s", COLOR_TIME},
		{"Immune to Stun"}
	}
}

StateIconList[EFST_IDs.EFST_MVPCARD_ORCLORD] =
{
	haveTimeLimit = 1,
	posTimeLimitStr = 2,
	descript =
	{
		{"Orc Lord Scroll", COLOR_TITLE_BUFF},
		{"%s", COLOR_TIME},
		{"Reflect part of close physical attack damage"}
	}
}

-- missing: EFST_OVERHEAT_LIMITPOINT

StateIconList[EFST_IDs.EFST_OVERHEAT] =
{
	haveTimeLimit = 1,
	posTimeLimitStr = 1,
	descript =
	{
		{"Over Heat", COLOR_TITLE_BUFF},
		{"Over heated status of Madogear"},
		{"Decrease certain HP in every sec"}
	}
}

StateIconList[EFST_IDs.EFST_SHAPESHIFT] =
{
	haveTimeLimit = 1,
	posTimeLimitStr = 2,
	descript =
	{
		{"Shift Shape", COLOR_TITLE_BUFF},
		{"%s", COLOR_TIME},
		{"Change the property of Madogear's fuselage"}
	}
}

StateIconList[EFST_IDs.EFST_INFRAREDSCAN] =
{
	haveTimeLimit = 1,
	posTimeLimitStr = 2,
	descript =
	{
		{"Infra Red Scan", COLOR_TITLE_BUFF},
		{"%s", COLOR_TIME},
		{"Find out the hidden enemy"},
		{"Have chance to lower Flee of all the targets within the range"}
	}
}

-- missing: EFST_MAGNETICFIELD

StateIconList[EFST_IDs.EFST_NEUTRALBARRIER] =
{
	haveTimeLimit = 1,
	posTimeLimitStr = 2,
	descript =
	{
		{"Neutral Barrier", COLOR_TITLE_BUFF},
		{"%s", COLOR_TIME},
		{"Increase physical, magical DEF"},
		{"Cancel long-distance attack"}
	}
}

-- missing: EFST_NEUTRALBARRIER_MASTER

StateIconList[EFST_IDs.EFST_STEALTHFIELD] =
{
	haveTimeLimit = 1,
	posTimeLimitStr = 2,
	descript =
	{
		{"Stealth Field", COLOR_TITLE_BUFF},
		{"%s", COLOR_TIME},
		{"Make all the targets around as cloaking state"},
		{"Consume SP continuously"},
		{"Decrease Movement Speed"}
	}
}

-- missing: EFST_STEALTHFIELD_MASTER

StateIconList[EFST_IDs.EFST_MANU_ATK] =
{
	haveTimeLimit = 1,
	posTimeLimitStr = 2,
	descript =
	{
		{"Manuk's Golden Chance", COLOR_TITLE_BUFF},
		{"%s", COLOR_TIME},
		{"Increase physical ATK"},
		{"to the monsters in Manuk fields"}
	}
}

StateIconList[EFST_IDs.EFST_MANU_DEF] =
{
	haveTimeLimit = 1,
	posTimeLimitStr = 2,
	descript =
	{
		{"Manuk's Will", COLOR_TITLE_BUFF},
		{"%s", COLOR_TIME},
		{"Decrease physical/magical damage"},
		{"from the monsters in Manuk field"}
	}
}

StateIconList[EFST_IDs.EFST_SPL_ATK] =
{
	haveTimeLimit = 1,
	posTimeLimitStr = 2,
	descript =
	{
		{"Pinguicula's Pickled Fruit", COLOR_TITLE_BUFF},
		{"%s", COLOR_TIME},
		{"Increase physical ATK"},
		{"to the monsters in Splendid fields"}
	}
}

StateIconList[EFST_IDs.EFST_SPL_DEF] =
{
	haveTimeLimit = 1,
	posTimeLimitStr = 2,
	descript =
	{
		{"Honey Jam", COLOR_TITLE_BUFF},
		{"%s", COLOR_TIME},
		{"Decrease Physical, Magical damage"},
		{"from the monsters in Splendid field"}
	}
}

StateIconList[EFST_IDs.EFST_REPRODUCE] =
{
	descript =
	{
		{"Reproduce", COLOR_TITLE_BUFF},
		{"Learn the skill which is targeted to the caster"},
		{"Can learn only 1 skill"}
	}
}

StateIconList[EFST_IDs.EFST_MANU_MATK] =
{
	haveTimeLimit = 1,
	posTimeLimitStr = 2,
	descript =
	{
		{"Manuk's Faith", COLOR_TITLE_BUFF},
		{"%s", COLOR_TIME},
		{"Increase MATK to"},
		{"the monsters in Manuk Field"}
	}
}

StateIconList[EFST_IDs.EFST_SPL_MATK] =
{
	haveTimeLimit = 1,
	posTimeLimitStr = 2,
	descript =
	{
		{"Cornus's Tear", COLOR_TITLE_BUFF},
		{"%s", COLOR_TIME},
		{"Increase MATK"},
		{"to the monsters in Splendid fields"}
	}
}

StateIconList[EFST_IDs.EFST_STR_SCROLL] =
{
	haveTimeLimit = 1,
	posTimeLimitStr = 1,
	descript =
	{
		{"%s", COLOR_TIME},
		{"Increase STR"}
	}
}

StateIconList[EFST_IDs.EFST_INT_SCROLL] =
{
	haveTimeLimit = 1,
	posTimeLimitStr = 1,
	descript =
	{
		{"%s", COLOR_TIME},
		{"Increase INT"}
	}
}

StateIconList[EFST_IDs.EFST_LG_REFLECTDAMAGE] =
{
	haveTimeLimit = 1,
	posTimeLimitStr = 2,
	descript =
	{
		{"Reflect Damage", COLOR_TITLE_BUFF},
		{"%s", COLOR_TIME},
		{"Reflect some part of physical/magical damage to enemy"},
		{"Consume certain amount of SP in every sec"}
	}
}

StateIconList[EFST_IDs.EFST_FORCEOFVANGUARD] =
{
	haveTimeLimit = 1,
	posTimeLimitStr = 2,
	descript =
	{
		{"Vanguard Force", COLOR_TITLE_BUFF},
		{"%s", COLOR_TIME},
		{"Increase MHP, DEF"},
		{"Accumulate Rage rate whenever receiving damage"},
		{"Consume SP continuously"}
	}
}

-- missing: EFST_BUCHEDENOEL

StateIconList[EFST_IDs.EFST_AUTOSHADOWSPELL] =
{
	haveTimeLimit = 1,
	posTimeLimitStr = 2,
	descript =
	{
		{"Shadow Spell", COLOR_TITLE_BUFF},
		{"%s", COLOR_TIME},
		{"Enable the magical skills"},
		{"learned by Plagiarize and Reproduce"}
	}
}

StateIconList[EFST_IDs.EFST_SHADOWFORM] =
{
	haveTimeLimit = 1,
	posTimeLimitStr = 2,
	descript =
	{
		{"Shadow Formation", COLOR_TITLE_BUFF},
		{"%s", COLOR_TIME},
		{"Dump the caster's damage"},
		{"according to caster's skill level"}
	}
}

-- missing: EFST_RAID

StateIconList[EFST_IDs.EFST_SHIELDSPELL_DEF] =
{
	haveTimeLimit = 1,
	posTimeLimitStr = 2,
	descript =
	{
		{"Shield Spell", COLOR_TITLE_BUFF},
		{"%s", COLOR_TIME},
		{"Activate magic depending on shield defense rate"}
	}
}

StateIconList[EFST_IDs.EFST_SHIELDSPELL_MDEF] =
{
	haveTimeLimit = 1,
	posTimeLimitStr = 2,
	descript =
	{
		{"Shield Spell", COLOR_TITLE_BUFF},
		{"%s", COLOR_TIME},
		{"Activate certain magic depening on shield MDEF"}
	}
}

StateIconList[EFST_IDs.EFST_SHIELDSPELL_REF] =
{
	haveTimeLimit = 1,
	posTimeLimitStr = 2,
	descript =
	{
		{"Shield Spell", COLOR_TITLE_BUFF},
		{"%s", COLOR_TIME},
		{"Activate certain magic depening on shield refine level"}
	}
}

StateIconList[EFST_IDs.EFST_BODYPAINT] =
{
	haveTimeLimit = 1,
	posTimeLimitStr = 2,
	descript =
	{
		{"Body Painting", COLOR_TITLE_BUFF},
		{"%s", COLOR_TIME},
		{"Release cloaking state"},
		{"Have chance to create Darkness curse"},
		{"Have chance to decrease ASPD"}
	}
}

-- missing: EFST_EXEEDBREAK

StateIconList[EFST_IDs.EFST_ADORAMUS] =
{
	haveTimeLimit = 1,
	posTimeLimitStr = 2,
	descript =
	{
		{"Adoramus", COLOR_TITLE_BUFF},
		{"%s", COLOR_TIME},
		{"Decrease AGI and in Darkness state"}
	}
}

StateIconList[EFST_IDs.EFST_PRESTIGE] =
{
	haveTimeLimit = 1,
	posTimeLimitStr = 2,
	descript =
	{
		{"Prestige", COLOR_TITLE_BUFF},
		{"%s", COLOR_TIME},
		{"Apply the magical flee rate according to caster's stats"},
		{"Increase DEF"}
	}
}

StateIconList[EFST_IDs.EFST_INVISIBILITY] =
{
	haveTimeLimit = 1,
	posTimeLimitStr = 2,
	descript =
	{
		{"Invisibility", COLOR_TITLE_BUFF},
		{"%s", COLOR_TIME},
		{"Able to attack in invisible status"},
		{"Change ATK property into Ghost property lv.1"},
		{"Continuously consume SP"},
		{"Unable to use skills and items"}
	}
}

StateIconList[EFST_IDs.EFST_DEADLYINFECT] =
{
	haveTimeLimit = 1,
	posTimeLimitStr = 2,
	descript =
	{
		{"Deadly Infection", COLOR_TITLE_BUFF},
		{"%s", COLOR_TIME},
		{"Infect all kinds of curse state"},
		{"to monsters that you attack"},
		{"and to monsters that attack you"}
	}
}

StateIconList[EFST_IDs.EFST_BANDING] =
{
	haveTimeLimit = 1,
	posTimeLimitStr = 2,
	descript =
	{
		{"Banding", COLOR_TITLE_BUFF},
		{"%s", COLOR_TIME},
		{"If in range of Royal Guard with Banding"},
		{"Increase ATK and DEF and share HP"}
	}
}

-- missing: EFST_EARTHDRIVE

StateIconList[EFST_IDs.EFST_INSPIRATION] =
{
	haveTimeLimit = 1,
	posTimeLimitStr = 2,
	descript =
	{
		{"Inspiration", COLOR_TITLE_BUFF},
		{"%s", COLOR_TIME},
		{"Increase Accuracy, Stats, ATK, MHP"},
		{"Cancel certain buffs and abnormal status"},
		{"Decrease HP, SP continuously"},
		{"Cancel all kinds of buffs and abnormal status"},
		{"Lose certain amount of EXP"}
	}
}

StateIconList[EFST_IDs.EFST_ENERVATION] =
{
	haveTimeLimit = 1,
	posTimeLimitStr = 2,
	descript =
	{
		{"Masquerade : Enervation", COLOR_TITLE_DEBUFF},
		{"%s", COLOR_TIME},
		{"Decrease ATK"},
		{"All the Spirit Sphere are destroyed"}
	}
}

StateIconList[EFST_IDs.EFST_GROOMY] =
{
	haveTimeLimit = 1,
	posTimeLimitStr = 2,
	descript =
	{
		{"Masquerade : Groomy (Mask : Groomy)", COLOR_TITLE_DEBUFF},
		{"%s", COLOR_TIME},
		{"Decrease ATK speed and hit rate"},
		{"Release any type of anumals(pet.mounts,mercenaries, etc) when gets damages"},
		{"Unable to use any type of animals.(Pet,Mounts,mercenaries, etc)"}
	}
}

StateIconList[EFST_IDs.EFST_RAISINGDRAGON] =
{
	descript =
	{
		{"Rising Dragon", COLOR_TITLE_BUFF},
		{"Increase the maximum number of Spirit Sphere"},
		{"Increase the maximum HP and SP"},
		{"Increase ASPD"},
		{"Keeps Fury status"},
		{"Consume certain amount of HP in every sec"}
	}
}

StateIconList[EFST_IDs.EFST_IGNORANCE] =
{
	haveTimeLimit = 1,
	posTimeLimitStr = 2,
	descript =
	{
		{"Masquerade : Ignorance (Mask : Ignorance)", COLOR_TITLE_DEBUFF},
		{"%s", COLOR_TIME},
		{"Lose certain amount of SP when gets damaged"},
		{"Unable to use skill, magic"}
	}
}

StateIconList[EFST_IDs.EFST_LAZINESS] =
{
	haveTimeLimit = 1,
	posTimeLimitStr = 2,
	descript =
	{
		{"Masquerade : Laziness (Mask : Laziness)", COLOR_TITLE_DEBUFF},
		{"%s", COLOR_TIME},
		{"Decrease Movement speed and Flee rate"},
		{"Increase casting time"},
		{"Consume certain amount of additional SP when uses skill"}
	}
}

StateIconList[EFST_IDs.EFST_LIGHTNINGWALK] =
{
	haveTimeLimit = 1,
	posTimeLimitStr = 2,
	descript =
	{
		{"Lightning Walk", COLOR_TITLE_BUFF},
		{"%s", COLOR_TIME},
		{"Have chance to avoid long distance"},
		{"physical, magical attack"},
		{"and move right before the enemy"}
	}
}

StateIconList[EFST_IDs.EFST_ACARAJE] =
{
	haveTimeLimit = 1,
	posTimeLimitStr = 2,
	descript =
	{
		{"Acaraje", COLOR_TITLE_BUFF},
		{"%s", COLOR_TIME},
		{"Increases HIT and ASPD"}
	}
}

StateIconList[EFST_IDs.EFST_UNLUCKY] =
{
	haveTimeLimit = 1,
	posTimeLimitStr = 2,
	descript =
	{
		{"Masquerade : Unlucky (Mask : Unlucky)", COLOR_TITLE_DEBUFF},
		{"%s", COLOR_TIME},
		{"Decrease Critial rate"},
		{"Decrease the rate of perfect dodge"},
		{"Consume certain amount of Zeny when uses skill"},
		{"Get abnormal status when damaged"}
	}
}

-- missing: EFST_CURSEDCIRCLE_ATKER

-- missing: EFST_CURSEDCIRCLE_TARGET

StateIconList[EFST_IDs.EFST_WEAKNESS] =
{
	haveTimeLimit = 1,
	posTimeLimitStr = 2,
	descript =
	{
		{"Masquerade : Weakness (Mask : Weakness", COLOR_TITLE_DEBUFF},
		{"%s", COLOR_TIME},
		{"Decrease certain amount of MHP"},
		{"Disarm the weapon and shield when damaged"},
		{"Unable to equip the weapon and shield"}
	}
}

StateIconList[EFST_IDs.EFST_CRESCENTELBOW] =
{
	descript =
	{
		{"Crescent Elbow", COLOR_TITLE_BUFF},
		{"Give damage to enemy by knocking it down"},
		{"Receive some part of damage of it to the caster"}
	}
}

-- missing: EFST_NOEQUIPACCESSARY

StateIconList[EFST_IDs.EFST_STRIPACCESSARY] =
{
	haveTimeLimit = 1,
	posTimeLimitStr = 2,
	descript =
	{
		{"Divest Accessory", COLOR_TITLE_DEBUFF},
		{"%s", COLOR_TIME},
		{"Cannot wear accessory"}
	}
}

-- missing: EFST_MANHOLE

StateIconList[EFST_IDs.EFST_POPECOOKIE] =
{
	haveTimeLimit = 1,
	posTimeLimitStr = 2,
	descript =
	{
		{"Pope Cookie", COLOR_TITLE_BUFF},
		{"%s", COLOR_TIME},
		{"Increase ATK, MATK"},
		{"Increase all kinds of property resistances"}
	}
}

-- missing: EFST_FALLENEMPIRE

StateIconList[EFST_IDs.EFST_GENTLETOUCH_ENERGYGAIN] =
{
	haveTimeLimit = 1,
	posTimeLimitStr = 2,
	descript =
	{
		{"Gentle Touch - Silence", COLOR_TITLE_BUFF},
		{"%s", COLOR_TIME},
		{"When mili attacking or being attacked"},
		{"Create 1 Spirit Sphere"}
	}
}

StateIconList[EFST_IDs.EFST_GENTLETOUCH_CHANGE] =
{
	haveTimeLimit = 1,
	posTimeLimitStr = 2,
	descript =
	{
		{"Gentle Touch - Opposite", COLOR_TITLE_BUFF},
		{"%s", COLOR_TIME},
		{"Decrease VIT, MDEF"},
		{"Increase ATK, ASPD"}
	}
}

StateIconList[EFST_IDs.EFST_GENTLETOUCH_REVITALIZE] =
{
	haveTimeLimit = 1,
	posTimeLimitStr = 2,
	descript =
	{
		{"Gentle Touch - Alive", COLOR_TITLE_BUFF},
		{"%s", COLOR_TIME},
		{"Increase VIT, MHP"},
		{"Increase physical DEF"},
		{"Increase HP auto recovery speed"},
		{"Recovery HP while moving and attacking"}
	}
}

-- missing: EFST_BLOODYLUST

StateIconList[EFST_IDs.EFST_SWING] =
{
	haveTimeLimit = 1,
	posTimeLimitStr = 2,
	descript =
	{
		{"Swing Dance", COLOR_TITLE_BUFF},
		{"%s", COLOR_TIME},
		{"Increase Movement Speed"},
		{"Increase ASPD"}
	}
}

StateIconList[EFST_IDs.EFST_SYMPHONY_LOVE] =
{
	haveTimeLimit = 1,
	posTimeLimitStr = 2,
	descript =
	{
		{"Lover Symphony", COLOR_TITLE_BUFF},
		{"%s", COLOR_TIME},
		{"Increase MDEF"}
	}
}

-- missing: EFST_PROPERTYWALK

-- missing: EFST_SPELLFIST

-- missing: EFST_NETHERWORLD

-- missing: EFST_SIREN

StateIconList[EFST_IDs.EFST_DEEP_SLEEP] =
{
	haveTimeLimit = 1,
	posTimeLimitStr = 2,
	descript =
	{
		{"Deep Sleep", COLOR_TITLE_BUFF},
		{"%s", COLOR_TIME},
		{"Get 1.5x damage"},
		{"Recover certain amount of HP/SP in every 2 sec"}
	}
}

StateIconList[EFST_IDs.EFST_SIRCLEOFNATURE] =
{
	haveTimeLimit = 1,
	posTimeLimitStr = 2,
	descript =
	{
		{"Circling Nature", COLOR_TITLE_BUFF},
		{"%s", COLOR_TIME},
		{"Use certain amount of SP every second and recover HP"}
	}
}

StateIconList[EFST_IDs.EFST_COLD] =
{
	haveTimeLimit = 1,
	posTimeLimitStr = 2,
	descript =
	{
		{"Cold Slower", COLOR_TITLE_DEBUFF},
		{"%s", COLOR_TIME},
		{"Give water property damage"},
		{"Give freezing status"}
	}
}

StateIconList[EFST_IDs.EFST_GLOOMYDAY] =
{
	haveTimeLimit = 1,
	posTimeLimitStr = 2,
	descript =
	{
		{"Gloomy Shyness", COLOR_TITLE_BUFF},
		{"%s", COLOR_TIME},
		{"Increase damage of certain skills"},
		{"Decrease Flee and ASPD"}
	}
}

StateIconList[EFST_IDs.EFST_SONG_OF_MANA] =
{
	haveTimeLimit = 1,
	posTimeLimitStr = 2,
	descript =
	{
		{"Song Of Mana", COLOR_TITLE_BUFF},
		{"%s", COLOR_TIME},
		{"Recovery certain amount of SP in every 5 sec"}
	}
}

-- missing: EFST_CLOUD_KILL

StateIconList[EFST_IDs.EFST_DANCE_WITH_WUG] =
{
	haveTimeLimit = 1,
	posTimeLimitStr = 2,
	descript =
	{
		{"Dance With Wug", COLOR_TITLE_BUFF},
		{"%s", COLOR_TIME},
		{"Increase ASPD"},
		{"Decrease fixed casting time"}
	}
}

StateIconList[EFST_IDs.EFST_RUSH_WINDMILL] =
{
	haveTimeLimit = 1,
	posTimeLimitStr = 2,
	descript =
	{
		{"Rush To Windmill", COLOR_TITLE_BUFF},
		{"%s", COLOR_TIME},
		{"Increase ATK"}
	}
}

StateIconList[EFST_IDs.EFST_ECHOSONG] =
{
	haveTimeLimit = 1,
	posTimeLimitStr = 2,
	descript =
	{
		{"Echo_Song", COLOR_TITLE_BUFF},
		{"%s", COLOR_TIME},
		{"Increase DEF"}
	}
}

StateIconList[EFST_IDs.EFST_HARMONIZE] =
{
	haveTimeLimit = 1,
	posTimeLimitStr = 2,
	descript =
	{
		{"Harmonize", COLOR_TITLE_BUFF},
		{"%s", COLOR_TIME},
		{"Adjust additional Status"}
	}
}

StateIconList[EFST_IDs.EFST_STRIKING] =
{
	haveTimeLimit = 1,
	posTimeLimitStr = 2,
	descript =
	{
		{"Strike", COLOR_TITLE_BUFF},
		{"%s", COLOR_TIME},
		{"Increase weapon ATK, critical rate"}
	}
}

StateIconList[EFST_IDs.EFST_WARMER] =
{
	haveTimeLimit = 1,
	posTimeLimitStr = 2,
	descript =
	{
		{"Warmer", COLOR_TITLE_BUFF},
		{"%s", COLOR_TIME},
		{"Cancels all Freeze status"},
		{"Cannot be frozen"},
		{"Recover HP every 3 seconds"}
	}
}

StateIconList[EFST_IDs.EFST_MOONLIT_SERENADE] =
{
	haveTimeLimit = 1,
	posTimeLimitStr = 2,
	descript =
	{
		{"Moonlight Serenade", COLOR_TITLE_BUFF},
		{"%s", COLOR_TIME},
		{"Increase MATK"}
	}
}

StateIconList[EFST_IDs.EFST_SATURDAY_NIGHT_FEVER] =
{
	haveTimeLimit = 1,
	posTimeLimitStr = 2,
	descript =
	{
		{"Madness", COLOR_TITLE_DEBUFF},
		{"%s", COLOR_TIME},
		{"Lose HP, SP in every 3 sec"},
		{"Increase ATK, Decrease DEF and Flee"},
		{"Cannot use skill and item"}
	}
}

-- missing: EFST_SITDOWN_FORCE

StateIconList[EFST_IDs.EFST_ANALYZE] =
{
	haveTimeLimit = 1,
	posTimeLimitStr = 2,
	descript =
	{
		{"Analyze", COLOR_TITLE_BUFF},
		{"%s", COLOR_TIME},
		{"Decrease physical, magical DEF"}
	}
}

StateIconList[EFST_IDs.EFST_LERADS_DEW] =
{
	haveTimeLimit = 1,
	posTimeLimitStr = 2,
	descript =
	{
		{"Lerad's Dew", COLOR_TITLE_BUFF},
		{"%s", COLOR_TIME},
		{"Increase MHP"}
	}
}

StateIconList[EFST_IDs.EFST_MELODYOFSINK] =
{
	haveTimeLimit = 1,
	posTimeLimitStr = 2,
	descript =
	{
		{"Sinking Melody", COLOR_TITLE_BUFF},
		{"%s", COLOR_TIME},
		{"Increase MATK"},
		{"Decrease physical ATK"}
	}
}

StateIconList[EFST_IDs.EFST_BEYOND_OF_WARCRY] =
{
	haveTimeLimit = 1,
	posTimeLimitStr = 2,
	descript =
	{
		{"Beyond Cry", COLOR_TITLE_BUFF},
		{"%s", COLOR_TIME},
		{"Increase physical ATK"},
		{"Decrease MATK"}
	}
}

StateIconList[EFST_IDs.EFST_UNLIMITED_HUMMING_VOICE] =
{
	haveTimeLimit = 1,
	posTimeLimitStr = 2,
	descript =
	{
		{"Infinite Humming", COLOR_TITLE_BUFF},
		{"%s", COLOR_TIME},
		{"Skill and magic casting is never get disconnected"},
		{"Increase SP consumption when using skills"}
	}
}

-- missing: EFST_SPELLBOOK1

-- missing: EFST_SPELLBOOK2

-- missing: EFST_SPELLBOOK3

-- missing: EFST_FREEZE_SP

-- missing: EFST_GN_TRAINING_SWORD

-- missing: EFST_GN_REMODELING_CART

StateIconList[EFST_IDs.EFST_GN_CARTBOOST] =
{
	haveTimeLimit = 1,
	posTimeLimitStr = 2,
	descript =
	{
		{"Cart Boost", COLOR_TITLE_BUFF},
		{"%s", COLOR_TIME},
		{"Increase speed when equipped a cart"}
	}
}

-- missing: EFST_FIXEDCASTINGTM_REDUCE

StateIconList[EFST_IDs.EFST_THORNS_TRAP] =
{
	haveTimeLimit = 1,
	posTimeLimitStr = 2,
	descript =
	{
		{"Thorns Trap", COLOR_TITLE_DEBUFF},
		{"%s", COLOR_TIME},
		{"Get damage little by little"}
	}
}

-- missing: EFST_BLOOD_SUCKER

-- missing: EFST_SPORE_EXPLOSION

-- missing: EFST_DEMONIC_FIRE

-- missing: EFST_FIRE_EXPANSION_SMOKE_POWDER

-- missing: EFST_FIRE_EXPANSION_TEAR_GAS

-- missing: EFST_BLOCKING_PLAY

-- missing: EFST_MANDRAGORA

-- missing: EFST_ACTIVATE

StateIconList[EFST_IDs.EFST_AB_SECRAMENT] =
{
	haveTimeLimit = 1,
	posTimeLimitStr = 2,
	descript =
	{
		{"Secrament", COLOR_TITLE_BUFF},
		{"%s", COLOR_TIME},
		{"Decrease the casting time"}
	}
}

StateIconList[EFST_IDs.EFST_ASSUMPTIO2] =
{
	haveTimeLimit = 1,
	posTimeLimitStr = 2,
	descript =
	{
		{"Assumptio", COLOR_TITLE_BUFF},
		{"%s", COLOR_TIME},
		{"Increase DEF"}
	}
}

-- missing: EFST_TK_SEVENWIND

-- missing: EFST_LIMIT_ODINS_RECALL

StateIconList[EFST_IDs.EFST_STOMACHACHE] =
{
	haveTimeLimit = 1,
	posTimeLimitStr = 2,
	descript =
	{
		{"Stomachache", COLOR_TITLE_BUFF},
		{"%s", COLOR_TIME},
		{"Reduce all additional status"},
		{"Decrease Movement Speed"},
		{"Forced to sit down once in every 10 sec"},
		{"Consume certain amount of SP for 10 sec"}
	}
}

-- missing: EFST_MYSTERIOUS_POWDER

-- missing: EFST_MELON_BOMB

-- missing: EFST_BANANA_BOMB_SITDOWN_POSTDELAY

-- missing: EFST_PROMOTE_HEALTH_RESERCH

-- missing: EFST_ENERGY_DRINK_RESERCH

-- missing: EFST_EXTRACT_WHITE_POTION_Z

-- missing: EFST_VITATA_500

-- missing: EFST_EXTRACT_SALAMINE_JUICE

-- missing: EFST_BOOST500

-- missing: EFST_FULL_SWING_K

-- missing: EFST_MANA_PLUS

-- missing: EFST_MUSTLE_M

-- missing: EFST_LIFE_FORCE_F

-- missing: EFST_VACUUM_EXTREME

StateIconList[EFST_IDs.EFST_SAVAGE_STEAK] =
{
	haveTimeLimit = 1,
	posTimeLimitStr = 2,
	descript =
	{
		{"Savage BBQ", COLOR_TITLE_BUFF},
		{"%s", COLOR_TIME},
		{"Increase STR"}
	}
}

StateIconList[EFST_IDs.EFST_COCKTAIL_WARG_BLOOD] =
{
	haveTimeLimit = 1,
	posTimeLimitStr = 2,
	descript =
	{
		{"Warg Blood Cocktail", COLOR_TITLE_BUFF},
		{"%s", COLOR_TIME},
		{"Increase INT"}
	}
}

StateIconList[EFST_IDs.EFST_MINOR_BBQ] =
{
	haveTimeLimit = 1,
	posTimeLimitStr = 2,
	descript =
	{
		{"Minor Brisket", COLOR_TITLE_BUFF},
		{"%s", COLOR_TIME},
		{"Increase VIT"}
	}
}

StateIconList[EFST_IDs.EFST_SIROMA_ICE_TEA] =
{
	haveTimeLimit = 1,
	posTimeLimitStr = 2,
	descript =
	{
		{"Siroma Icetea", COLOR_TITLE_BUFF},
		{"%s", COLOR_TIME},
		{"Increase DEX"}
	}
}

StateIconList[EFST_IDs.EFST_DROCERA_HERB_STEAMED] =
{
	haveTimeLimit = 1,
	posTimeLimitStr = 2,
	descript =
	{
		{"Drocera Herb Stew", COLOR_TITLE_BUFF},
		{"%s", COLOR_TIME},
		{"Increase AGI"}
	}
}

StateIconList[EFST_IDs.EFST_PUTTI_TAILS_NOODLES] =
{
	haveTimeLimit = 1,
	posTimeLimitStr = 2,
	descript =
	{
		{"Petit Tail Noodle", COLOR_TITLE_BUFF},
		{"%s", COLOR_TIME},
		{"Increase LUK"}
	}
}

-- missing: EFST_BANANA_BOMB

-- missing: EFST_SUMMON_AGNI

-- missing: EFST_SPELLBOOK4

-- missing: EFST_SPELLBOOK5

-- missing: EFST_SPELLBOOK6

-- missing: EFST_SPELLBOOK7

-- missing: EFST_ELEMENTAL_AGGRESSIVE

-- missing: EFST_RETURN_TO_ELDICASTES

-- missing: EFST_BANDING_DEFENCE

-- missing: EFST_SKELSCROLL

-- missing: EFST_DISTRUCTIONSCROLL

-- missing: EFST_ROYALSCROLL

-- missing: EFST_IMMUNITYSCROLL

-- missing: EFST_MYSTICSCROLL

-- missing: EFST_BATTLESCROLL

-- missing: EFST_ARMORSCROLL

-- missing: EFST_FREYJASCROLL

-- missing: EFST_SOULSCROLL

-- missing: EFST_CIRCLE_OF_FIRE

-- missing: EFST_CIRCLE_OF_FIRE_OPTION

-- missing: EFST_FIRE_CLOAK

-- missing: EFST_FIRE_CLOAK_OPTION

-- missing: EFST_WATER_SCREEN

-- missing: EFST_WATER_SCREEN_OPTION

-- missing: EFST_WATER_DROP

-- missing: EFST_WATER_DROP_OPTION

-- missing: EFST_WIND_STEP

-- missing: EFST_WIND_STEP_OPTION

-- missing: EFST_WIND_CURTAIN

-- missing: EFST_WIND_CURTAIN_OPTION

-- missing: EFST_WATER_BARRIER

-- missing: EFST_ZEPHYR

-- missing: EFST_SOLID_SKIN

-- missing: EFST_SOLID_SKIN_OPTION

-- missing: EFST_STONE_SHIELD

-- missing: EFST_STONE_SHIELD_OPTION

-- missing: EFST_POWER_OF_GAIA

StateIconList[EFST_IDs.EFST_EL_WAIT] =
{
	haveTimeLimit = 1,
	posTimeLimitStr = 2,
	descript =
	{
		{"EL_WAIT", COLOR_TITLE_BUFF},
		{"%s", COLOR_TIME}
	}
}

StateIconList[EFST_IDs.EFST_EL_PASSIVE] =
{
	haveTimeLimit = 1,
	posTimeLimitStr = 2,
	descript =
	{
		{"EL_PASSIVE", COLOR_TITLE_BUFF},
		{"%s", COLOR_TIME}
	}
}

StateIconList[EFST_IDs.EFST_EL_DEFENSIVE] =
{
	haveTimeLimit = 1,
	posTimeLimitStr = 2,
	descript =
	{
		{"EL_DEFENSIVE", COLOR_TITLE_BUFF},
		{"%s", COLOR_TIME}
	}
}

StateIconList[EFST_IDs.EFST_EL_OFFENSIVE] =
{
	haveTimeLimit = 1,
	posTimeLimitStr = 2,
	descript =
	{
		{"EL_OFFENSIVE", COLOR_TITLE_BUFF},
		{"%s", COLOR_TIME}
	}
}

-- missing: EFST_EL_COST

-- missing: EFST_PYROTECHNIC

-- missing: EFST_PYROTECHNIC_OPTION

-- missing: EFST_HEATER

-- missing: EFST_HEATER_OPTION

-- missing: EFST_TROPIC

-- missing: EFST_TROPIC_OPTION

-- missing: EFST_AQUAPLAY

-- missing: EFST_AQUAPLAY_OPTION

-- missing: EFST_COOLER

-- missing: EFST_COOLER_OPTION

-- missing: EFST_CHILLY_AIR

-- missing: EFST_CHILLY_AIR_OPTION

-- missing: EFST_GUST

-- missing: EFST_GUST_OPTION

-- missing: EFST_BLAST

-- missing: EFST_BLAST_OPTION

-- missing: EFST_WILD_STORM

-- missing: EFST_WILD_STORM_OPTION

-- missing: EFST_PETROLOGY

-- missing: EFST_PETROLOGY_OPTION

-- missing: EFST_CURSED_SOIL

-- missing: EFST_CURSED_SOIL_OPTION

-- missing: EFST_UPHEAVAL

-- missing: EFST_UPHEAVAL_OPTION

-- missing: EFST_TIDAL_WEAPON

-- missing: EFST_TIDAL_WEAPON_OPTION

-- missing: EFST_ROCK_CRUSHER

-- missing: EFST_ROCK_CRUSHER_ATK

-- missing: EFST_FIRE_INSIGNIA

-- missing: EFST_WATER_INSIGNIA

-- missing: EFST_WIND_INSIGNIA

-- missing: EFST_EARTH_INSIGNIA

-- missing: EFST_EQUIPED_FLOOR

-- missing: EFST_GUARDIAN_RECALL

StateIconList[EFST_IDs.EFST_MORA_BUFF] =
{
	haveTimeLimit = 1,
	posTimeLimitStr = 2,
	descript =
	{
		{"Mora Berry", COLOR_TITLE_BUFF},
		{"%s", COLOR_TIME},
		{"Increase resistance against"},
		{"the monsters in the fields nearby Mora village"}
	}
}

-- missing: EFST_REUSE_LIMIT_G

-- missing: EFST_REUSE_LIMIT_H

-- missing: EFST_NEEDLE_OF_PARALYZE

StateIconList[EFST_IDs.EFST_PAIN_KILLER] =
{
	haveTimeLimit = 1,
	posTimeLimitStr = 2,
	descript =
	{
		{"Pain Killer", COLOR_TITLE_BUFF},
		{"%s", COLOR_TIME},
		{"Decrease Atk Speed"},
		{"No motion delay from any damages"},
		{"Decrease damages from enemy"}
	}
}

StateIconList[EFST_IDs.EFST_G_LIFEPOTION] =
{
	haveTimeLimit = 1,
	posTimeLimitStr = 2,
	descript =
	{
		{"Life Potion", COLOR_TITLE_BUFF},
		{"%s", COLOR_TIME},
		{"Recover certain amount of HP every 3 seconds"},
		{"Not activated in Berserk condition"}
	}
}

StateIconList[EFST_IDs.EFST_VITALIZE_POTION] =
{
	haveTimeLimit = 1,
	posTimeLimitStr = 2,
	descript =
	{
		{"Vitalize Potion", COLOR_TITLE_BUFF},
		{"%s", COLOR_TIME},
		{"Increase ATK, MATK"},
		{"Increase effects of heal and healing items"}
	}
}

StateIconList[EFST_IDs.EFST_LIGHT_OF_REGENE] =
{
	haveTimeLimit = 1,
	posTimeLimitStr = 2,
	descript =
	{
		{"Light Of Regene", COLOR_TITLE_BUFF},
		{"%s", COLOR_TIME},
		{"When master dies"},
		{"Eira sacrifices itself to resurrect master"}
	}
}

StateIconList[EFST_IDs.EFST_OVERED_BOOST] =
{
	haveTimeLimit = 1,
	posTimeLimitStr = 2,
	descript =
	{
		{"Overed Boost", COLOR_TITLE_BUFF},
		{"%s", COLOR_TIME},
		{"Fix the increased Atk speed and Flee rate"},
		{"of Eira and Master"}
	}
}

-- missing: EFST_SILENT_BREEZE

StateIconList[EFST_IDs.EFST_ODINS_POWER] =
{
	haveTimeLimit = 1,
	posTimeLimitStr = 2,
	descript =
	{
		{"Odin's Power", COLOR_TITLE_BUFF},
		{"%s", COLOR_TIME},
		{"Increase ATK, MATK"},
		{"Decrease DEF, MDEF"}
	}
}

StateIconList[EFST_IDs.EFST_STYLE_CHANGE] =
{
	descript =
	{
		{"Fighter Mode", COLOR_TITLE_TOGGLE},
		{"Eleanor's fighter mode"}
	}
}

-- missing: EFST_SONIC_CLAW_POSTDELAY

-- missing: EFST_SILVERVEIN_RUSH_POSTDELAY

-- missing: EFST_MIDNIGHT_FRENZY_POSTDELAY

-- missing: EFST_GOLDENE_FERSE

-- missing: EFST_ANGRIFFS_MODUS

-- missing: EFST_TINDER_BREAKER

-- missing: EFST_TINDER_BREAKER_POSTDELAY

-- missing: EFST_CBC

-- missing: EFST_CBC_POSTDELAY

-- missing: EFST_EQC

StateIconList[EFST_IDs.EFST_MAGMA_FLOW] =
{
	descript =
	{
		{"Magma Flow", COLOR_TITLE_BUFF},
		{"%s", COLOR_TIME},
		{"When gets damage from the enemy"},
		{"Magma Flow is activated in a certain rate"}
	}
}

StateIconList[EFST_IDs.EFST_GRANITIC_ARMOR] =
{
	haveTimeLimit = 1,
	posTimeLimitStr = 2,
	descript =
	{
		{"Granitic Armor", COLOR_TITLE_BUFF},
		{"%s", COLOR_TIME},
		{"Decrease the received damages of Dieter and Master"},
		{"Consume the HP when duration is over"}
	}
}

StateIconList[EFST_IDs.EFST_PYROCLASTIC] =
{
	haveTimeLimit = 1,
	posTimeLimitStr = 2,
	descript =
	{
		{"Pyroclastic", COLOR_TITLE_BUFF},
		{"%s", COLOR_TIME},
		{"Weapons of both Dieter and Master"},
		{"are changed into fire property"},
		{"Increase Atk Power for the weapon"}
	}
}

StateIconList[EFST_IDs.EFST_VOLCANIC_ASH] =
{
	haveTimeLimit = 1,
	posTimeLimitStr = 2,
	descript =
	{
		{"Volcanic Ash", COLOR_TITLE_DEBUFF},
		{"%s", COLOR_TIME},
		{"Decrease the rate of hit"},
		{"Fail to cast skill or magic in a certain rate"},
		{"Increase the received damage of fire property"}
	}
}

-- missing: EFST_SPIRITS_SAVEINFO1

-- missing: EFST_SPIRITS_SAVEINFO2

StateIconList[EFST_IDs.EFST_MAGIC_CANDY] =
{
	haveTimeLimit = 1,
	posTimeLimitStr = 2,
	descript =
	{
		{"Magic Candy", COLOR_TITLE_BUFF},
		{"%s", COLOR_TIME},
		{"Increase MATK"},
		{"Decrease the time of fixed casting"},
		{"Continuous Casting"},
		{"Decrease certain amount of SP per 10 sec"}
	}
}

-- missing: EFST_SEARCH_STORE_INFO

StateIconList[EFST_IDs.EFST_ALL_RIDING] =
{
	descript =
	{
		{"Currently riding", COLOR_TITLE_TOGGLE}
	}
}

-- missing: EFST_ALL_RIDING_REUSE_LIMIT

-- missing: EFST_MACRO

StateIconList[EFST_IDs.EFST_MACRO_POSTDELAY] =
{
	haveTimeLimit = 1,
	posTimeLimitStr = 2,
	descript =
	{
		{"Delay after using Macro"},
		{"%s", COLOR_TIME},
		{"Unable to use macro"}
	}
}

-- missing: EFST_BEER_BOTTLE_CAP

StateIconList[EFST_IDs.EFST_OVERLAPEXPUP] =
{
	haveTimeLimit = 1,
	posTimeLimitStr = 2,
	descript =
	{
		{"Malangdo Cat Can", COLOR_TITLE_BUFF},
		{"%s", COLOR_TIME},
		{"When hunting monster"},
		{"Increase the EXP and JOB Exp"},
		{"Increase item drop rate"}
	}
}

-- missing: EFST_PC_IZ_DUN05

-- missing: EFST_CRUSHSTRIKE

StateIconList[EFST_IDs.EFST_MONSTER_TRANSFORM] =
{
	haveTimeLimit = 1,
	posTimeLimitStr = 2,
	descript =
	{
		{"Transform into Monster", COLOR_TITLE_BUFF},
		{"%s", COLOR_TIME},
		{"Currently transformed into monster"}
	}
}

StateIconList[EFST_IDs.EFST_SIT] =
{
	descript =
	{
		{"Sit", COLOR_TITLE_TOGGLE}
	}
}

-- missing: EFST_ONAIR

-- missing: EFST_MTF_ASPD

-- missing: EFST_MTF_RANGEATK

-- missing: EFST_MTF_MATK

-- missing: EFST_MTF_MLEATKED

-- missing: EFST_MTF_CRIDAMAGE

-- missing: EFST_REUSE_LIMIT_MTF

StateIconList[EFST_IDs.EFST_MACRO_PERMIT] =
{
	haveTimeLimit = 1,
	posTimeLimitStr = 2,
	descript =
	{
		{"Use Macro"},
		{"%s", COLOR_TIME},
		{"Currently using the macro"}
	}
}

-- missing: EFST_MACRO_PLAY

StateIconList[EFST_IDs.EFST_SKF_CAST] =
{
	haveTimeLimit = 1,
	posTimeLimitStr = 1,
	descript =
	{
		{"%s", COLOR_TIME},
		{"Decrease the time for floating casting"}
	}
}

StateIconList[EFST_IDs.EFST_SKF_ASPD] =
{
	haveTimeLimit = 1,
	posTimeLimitStr = 1,
	descript =
	{
		{"%s", COLOR_TIME},
		{"Increase ATK speed"}
	}
}

StateIconList[EFST_IDs.EFST_SKF_ATK] =
{
	haveTimeLimit = 1,
	posTimeLimitStr = 1,
	descript =
	{
		{"%s", COLOR_TIME},
		{"Increase ATK"}
	}
}

StateIconList[EFST_IDs.EFST_SKF_MATK] =
{
	haveTimeLimit = 1,
	posTimeLimitStr = 1,
	descript =
	{
		{"%s", COLOR_TIME},
		{"Increase MATK"}
	}
}

StateIconList[EFST_IDs.EFST_REWARD_PLUSONLYJOBEXP] =
{
	haveTimeLimit = 1,
	posTimeLimitStr = 1,
	descript =
	{
		{"%s", COLOR_TIME},
		{"Additional JOB Exp"}
	}
}

StateIconList[EFST_IDs.EFST_HANDICAPSTATE_NORECOVER] =
{
	descript =
	{
		{"NORECOVER", COLOR_TITLE_DEBUFF},
		{"%s", COLOR_TIME},
		{"HP, SP NORECOVER"}
	}
}

StateIconList[EFST_IDs.EFST_SET_NUM_DEF] =
{
	descript =
	{
		{"%s", COLOR_TIME},
		{"DEF is set as certain figure"}
	}
}

StateIconList[EFST_IDs.EFST_SET_NUM_MDEF] =
{
	descript =
	{
		{"%s", COLOR_TIME},
		{"MDEF is set as certain figure"}
	}
}

StateIconList[EFST_IDs.EFST_SET_PER_DEF] =
{
	descript =
	{
		{"DEF is set as certain percent"}
	}
}

StateIconList[EFST_IDs.EFST_SET_PER_MDEF] =
{
	descript =
	{
		{"MDEF is set as certain percent"}
	}
}

-- missing: EFST_PARTYBOOKING_SEARCH_DEALY

-- missing: EFST_PARTYBOOKING_REGISTER_DEALY

-- missing: EFST_PERIOD_TIME_CHECK_DETECT_SKILL

-- missing: EFST_KO_JYUMONJIKIRI

StateIconList[EFST_IDs.EFST_MEIKYOUSISUI] =
{
	haveTimeLimit = 1,
	posTimeLimitStr = 2,
	descript =
	{
		{"Sealed Mirror", COLOR_TITLE_BUFF},
		{"%s", COLOR_TIME},
		{"Certain amount of HP recovered"},
		{"Certain Amount of SP recovered"},
		{"Cannot Move"},
		{"Chance to not receive damange"},
		{"When using Skill, will get Randomly Debuffed"},
		{"When receiving damange, effect is lifted"}
	}
}

StateIconList[EFST_IDs.EFST_ATTHASTE_CASH] =
{
	descript =
	{
		{"ASPD enforce potion", COLOR_TITLE_BUFF},
		{"%s", COLOR_TIME},
		{"attck speed increse"}
	}
}

-- missing: EFST_EQUIPPED_DIVINE_ARMOR

-- missing: EFST_EQUIPPED_HOLY_ARMOR

StateIconList[EFST_IDs.EFST_2011RWC] =
{
	descript =
	{
		{"ELDICASTES", COLOR_TITLE_BUFF},
		{"%s", COLOR_TIME},
		{"all status increse"},
		{"ATK, MATK increase"}
	}
}

-- missing: EFST_KYOUGAKU

StateIconList[EFST_IDs.EFST_IZAYOI] =
{
	haveTimeLimit = 1,
	posTimeLimitStr = 2,
	descript =
	{
		{"16th Night", COLOR_TITLE_BUFF},
		{"%s", COLOR_TIME},
		{"Removes Fixed casting time"},
		{"Reduced variable casting time"},
		{"Increases MATK"},
		{"Drains SP per second"}
	}
}

-- missing: EFST_ZENKAI

StateIconList[EFST_IDs.EFST_KG_KAGEHUMI] =
{
	haveTimeLimit = 1,
	posTimeLimitStr = 2,
	descript =
	{
		{"Shadow Step", COLOR_TITLE_DEBUFF},
		{"%s", COLOR_TIME},
		{"Unable to move"},
		{"Cannot use certain skills or item"},
		{"Stealth or teleport skills and items are disabled."},
		{"Unable to use Emergency Call skill"}
	}
}

StateIconList[EFST_IDs.EFST_KYOMU] =
{
	haveTimeLimit = 1,
	posTimeLimitStr = 2,
	descript =
	{
		{"Kyomu", COLOR_TITLE_DEBUFF},
		{"%s", COLOR_TIME},
		{"Reflects wont take effect when hit by Physical or Magical Attacks"},
		{"Chance the skill will fail when casting"}
	}
}

StateIconList[EFST_IDs.EFST_KAGEMUSYA] =
{
	haveTimeLimit = 1,
	posTimeLimitStr = 2,
	descript =
	{
		{"Shadow Warrior", COLOR_TITLE_BUFF},
		{"%s", COLOR_TIME},
		{"Enchanted with Double Attack effect"},
		{"Drains SP per second"},
		{"Status ends when received a certain number of hits."}
	}
}

StateIconList[EFST_IDs.EFST_ZANGETSU] =
{
	haveTimeLimit = 1,
	posTimeLimitStr = 2,
	descript =
	{
		{"Distorted Crescent", COLOR_TITLE_BUFF},
		{"%s", COLOR_TIME},
		{"Effects granted on base level"}
	}
}

StateIconList[EFST_IDs.EFST_PHI_DEMON] =
{
	descript =
	{
		{"Ancient Spirit Agimat", COLOR_TITLE_BUFF},
		{"%s", COLOR_TIME},
		{"Increase Physical and Magic Damage"},
		{"to Demon Monster"}
	}
}

StateIconList[EFST_IDs.EFST_GENSOU] =
{
	haveTimeLimit = 1,
	posTimeLimitStr = 2,
	descript =
	{
		{"Oboro Gensou", COLOR_TITLE_BUFF},
		{"%s", COLOR_TIME},
		{"Randomly increase/decrease HP and SP"},
		{"When hit by Magical Attacks half of the damage"},
		{"will be distributed around the area"}
	}
}

StateIconList[EFST_IDs.EFST_AKAITSUKI] =
{
	haveTimeLimit = 1,
	posTimeLimitStr = 2,
	descript =
	{
		{"Ominous Crimson Moonlight", COLOR_TITLE_DEBUFF},
		{"%s", COLOR_TIME},
		{"When receiving recovery skills"},
		{"healed amount will be converted to damage."}
	}
}

-- missing: EFST_TETANY

StateIconList[EFST_IDs.EFST_GM_BATTLE] =
{
	haveTimeLimit = 1,
	posTimeLimitStr = 2,
	descript =
	{
		{"Combat Medicine", COLOR_TITLE_BUFF},
		{"%s", COLOR_TIME},
		{"Increases ATK and MATK"},
		{"Reduced MHP and MSP"}
	}
}

StateIconList[EFST_IDs.EFST_GM_BATTLE2] =
{
	haveTimeLimit = 1,
	posTimeLimitStr = 2,
	descript =
	{
		{"Advanced Combat Medicine", COLOR_TITLE_BUFF},
		{"%s", COLOR_TIME},
		{"Increases ATK and MATK"},
		{"Reduces MHP and MSP"}
	}
}

StateIconList[EFST_IDs.EFST_2011RWC_SCROLL] =
{
	haveTimeLimit = 1,
	posTimeLimitStr = 2,
	descript =
	{
		{"Red Booster", COLOR_TITLE_BUFF},
		{"%s", COLOR_TIME},
		{"Increases ATK and MATK"},
		{"Increases ASPD"},
		{"Reduced variable casting time"},
		{"When receiving Physical and Magical damage"},
		{"there is a chance to cast Improve Concentration skill"}
	}
}

-- missing: EFST_ACTIVE_MONSTER_TRANSFORM

StateIconList[EFST_IDs.EFST_MYSTICPOWDER] =
{
	haveTimeLimit = 1,
	posTimeLimitStr = 2,
	descript =
	{
		{"Mystic Powder", COLOR_TITLE_BUFF},
		{"%s", COLOR_TIME},
		{"Increases FLEE and LUK"}
	}
}

-- missing: EFST_ECLAGE_RECALL

-- missing: EFST_ENTRY_QUEUE_APPLY_DELAY

-- missing: EFST_REUSE_LIMIT_ECL

StateIconList[EFST_IDs.EFST_M_LIFEPOTION] =
{
	haveTimeLimit = 1,
	posTimeLimitStr = 2,
	descript =
	{
		{"Mysterious Life Potion", COLOR_TITLE_BUFF},
		{"%s", COLOR_TIME},
		{"Recovers a certain amount of HP every 3 seconds"},
		{"No effect on Berserk status."}
	}
}

-- missing: EFST_ENTRY_QUEUE_NOTIFY_ADMISSION_TIME_OUT

-- missing: EFST_UNKNOWN_NAME

-- missing: EFST_ON_PUSH_CART

-- missing: EFST_HAT_EFFECT

StateIconList[EFST_IDs.EFST_FLOWER_LEAF] =
{
	haveTimeLimit = 1,
	posTimeLimitStr = 2,
	descript =
	{
		{"Enriched Flowers", COLOR_TITLE_BUFF},
		{"%s", COLOR_TIME},
		{"Increases FLEE"},
		{"Increases perfect dodge"}
	}
}

StateIconList[EFST_IDs.EFST_RAY_OF_PROTECTION] =
{
	haveTimeLimit = 1,
	posTimeLimitStr = 2,
	descript =
	{
		{"수호의 빛", COLOR_TITLE_BUFF},
		{"%s", COLOR_TIME},
		{"특정 상태이상 해제"},
		{"특정 상태이상 면역"}
	}
}

StateIconList[EFST_IDs.EFST_GLASTHEIM_ATK] =
{
	haveTimeLimit = 1,
	posTimeLimitStr = 3,
	descript =
	{
		{"강력한 힘이 내 몸에서"},
		{"일렁이는 것을 느낄 수 있습니다."},
		{"%s", COLOR_TIME}
	}
}

StateIconList[EFST_IDs.EFST_GLASTHEIM_DEF] =
{
	haveTimeLimit = 1,
	posTimeLimitStr = 3,
	descript =
	{
		{"만들어 준 마법방패로"},
		{"보호받고 있습니다."},
		{"%s", COLOR_TIME}
	}
}

StateIconList[EFST_IDs.EFST_GLASTHEIM_HEAL] =
{
	haveTimeLimit = 1,
	posTimeLimitStr = 4,
	descript =
	{
		{"성스러운 마법이"},
		{"치유의 힘을"},
		{"극대화 해 줍니다."},
		{"%s", COLOR_TIME}
	}
}

StateIconList[EFST_IDs.EFST_GLASTHEIM_HIDDEN] =
{
	haveTimeLimit = 1,
	posTimeLimitStr = 3,
	descript =
	{
		{"대마법 방어 에너지가"},
		{"수없이 겹쳐있습니다."},
		{"%s", COLOR_TIME}
	}
}

StateIconList[EFST_IDs.EFST_GLASTHEIM_STATE] =
{
	haveTimeLimit = 1,
	posTimeLimitStr = 3,
	descript =
	{
		{"모든 능력치가"},
		{"급격히 상승합니다."},
		{"%s", COLOR_TIME}
	}
}

StateIconList[EFST_IDs.EFST_GLASTHEIM_ITEMDEF] =
{
	haveTimeLimit = 1,
	posTimeLimitStr = 3,
	descript =
	{
		{"모든 방어력이"},
		{"급격히 상승합니다."},
		{"%s", COLOR_TIME}
	}
}

StateIconList[EFST_IDs.EFST_GLASTHEIM_HPSP] =
{
	haveTimeLimit = 1,
	posTimeLimitStr = 3,
	descript =
	{
		{"MHP와 MSP가"},
		{"급격히 상승합니다."},
		{"%s", COLOR_TIME}
	}
}

-- missing: EFST_HOMUN_SKILL_POSTDELAY

StateIconList[EFST_IDs.EFST_ALMIGHTY] =
{
	haveTimeLimit = 1,
	posTimeLimitStr = 3,
	descript =
	{
		{"올마이티", COLOR_TITLE_BUFF},
		{"ATK, MATK 증가"},
		{"%s", COLOR_TIME}
	}
}

StateIconList[EFST_IDs.EFST_GVG_GIANT] =
{
	haveTimeLimit = 1,
	posTimeLimitStr = 3,
	descript =
	{
		{"서리거인의 피", COLOR_TITLE_BUFF},
		{"플레이어형 적에게 주는 데미지 추가"},
		{"%s", COLOR_TIME}
	}
}

StateIconList[EFST_IDs.EFST_GVG_GOLEM] =
{
	haveTimeLimit = 1,
	posTimeLimitStr = 3,
	descript =
	{
		{"골렘의 핵", COLOR_TITLE_BUFF},
		{"플레이어형 적에게 받는 데미지 감소"},
		{"%s", COLOR_TIME}
	}
}

StateIconList[EFST_IDs.EFST_GVG_STUN] =
{
	haveTimeLimit = 1,
	posTimeLimitStr = 3,
	descript =
	{
		{"요정의눈물(스턴)", COLOR_TITLE_BUFF},
		{"스턴 면역"},
		{"%s", COLOR_TIME}
	}
}

StateIconList[EFST_IDs.EFST_GVG_STONE] =
{
	haveTimeLimit = 1,
	posTimeLimitStr = 3,
	descript =
	{
		{"요정의눈물(석화)", COLOR_TITLE_BUFF},
		{"석화 면역"},
		{"%s", COLOR_TIME}
	}
}

StateIconList[EFST_IDs.EFST_GVG_FREEZ] =
{
	haveTimeLimit = 1,
	posTimeLimitStr = 3,
	descript =
	{
		{"요정의눈물(동빙)", COLOR_TITLE_BUFF},
		{"동빙 면역"},
		{"%s", COLOR_TIME}
	}
}

StateIconList[EFST_IDs.EFST_GVG_SLEEP] =
{
	haveTimeLimit = 1,
	posTimeLimitStr = 3,
	descript =
	{
		{"요정의눈물(수면)", COLOR_TITLE_BUFF},
		{"수면 면역"},
		{"%s", COLOR_TIME}
	}
}

StateIconList[EFST_IDs.EFST_GVG_CURSE] =
{
	haveTimeLimit = 1,
	posTimeLimitStr = 3,
	descript =
	{
		{"요정의눈물(저주)", COLOR_TITLE_BUFF},
		{"저주 면역"},
		{"%s", COLOR_TIME}
	}
}

StateIconList[EFST_IDs.EFST_GVG_SILENCE] =
{
	haveTimeLimit = 1,
	posTimeLimitStr = 3,
	descript =
	{
		{"요정의눈물(침묵)", COLOR_TITLE_BUFF},
		{"침묵 면역"},
		{"%s", COLOR_TIME}
	}
}

StateIconList[EFST_IDs.EFST_GVG_BLIND] =
{
	haveTimeLimit = 1,
	posTimeLimitStr = 3,
	descript =
	{
		{"요정의눈물(암흑)", COLOR_TITLE_BUFF},
		{"암흑 면역"},
		{"%s", COLOR_TIME}
	}
}

-- missing: EFST_CLIENT_ONLY_EQUIP_ARROW

-- missing: EFST_CLAN_INFO

StateIconList[EFST_IDs.EFST_JP_EVENT01] =
{
	haveTimeLimit = 1,
	posTimeLimitStr = 3,
	descript =
	{
		{"어패류 몬스터에게 주는"},
		{"물리데미지 추가"},
		{"%s", COLOR_TIME}
	}
}

StateIconList[EFST_IDs.EFST_JP_EVENT02] =
{
	haveTimeLimit = 1,
	posTimeLimitStr = 3,
	descript =
	{
		{"어패류 몬스터에게 주는"},
		{"마법데미지 추가"},
		{"%s", COLOR_TIME}
	}
}

StateIconList[EFST_IDs.EFST_JP_EVENT03] =
{
	haveTimeLimit = 1,
	posTimeLimitStr = 3,
	descript =
	{
		{"어패류 몬스터에게서"},
		{"받는 데미지 감소"},
		{"%s", COLOR_TIME}
	}
}

StateIconList[EFST_IDs.EFST_JP_EVENT04] =
{
	haveTimeLimit = 1,
	posTimeLimitStr = 3,
	descript =
	{
		{"어패류 몬스터에게서"},
		{"얻는 경험치 증가"},
		{"%s", COLOR_TIME}
	}
}

-- missing: EFST_TELEPORT_FIXEDCASTINGDELAY

StateIconList[EFST_IDs.EFST_GEFFEN_MAGIC1] =
{
	haveTimeLimit = 1,
	posTimeLimitStr = 3,
	descript =
	{
		{"인간형 몬스터에게 주는"},
		{"물리데미지 추가"},
		{"%s", COLOR_TIME}
	}
}

StateIconList[EFST_IDs.EFST_GEFFEN_MAGIC2] =
{
	haveTimeLimit = 1,
	posTimeLimitStr = 3,
	descript =
	{
		{"인간형 몬스터에게 주는"},
		{"마법데미지 추가"},
		{"%s", COLOR_TIME}
	}
}

StateIconList[EFST_IDs.EFST_GEFFEN_MAGIC3] =
{
	haveTimeLimit = 1,
	posTimeLimitStr = 3,
	descript =
	{
		{"인간형 몬스터에게서"},
		{"받는 데미지 감소"},
		{"%s", COLOR_TIME}
	}
}

StateIconList[EFST_IDs.EFST_QUEST_BUFF1] =
{
	haveTimeLimit = 1,
	posTimeLimitStr = 3,
	descript =
	{
		{"에너지 축적 중", COLOR_TITLE_BUFF},
		{"ATK, MATK 증가"},
		{"%s", COLOR_TIME}
	}
}

StateIconList[EFST_IDs.EFST_QUEST_BUFF2] =
{
	haveTimeLimit = 1,
	posTimeLimitStr = 3,
	descript =
	{
		{"에너지 축적 중", COLOR_TITLE_BUFF},
		{"ATK, MATK 증가"},
		{"%s", COLOR_TIME}
	}
}

StateIconList[EFST_IDs.EFST_QUEST_BUFF3] =
{
	haveTimeLimit = 1,
	posTimeLimitStr = 3,
	descript =
	{
		{"에너지 축적 중", COLOR_TITLE_BUFF},
		{"ATK, MATK 증가"},
		{"%s", COLOR_TIME}
	}
}

-- missing: EFST_REUSE_LIMIT_RECALL

-- missing: EFST_SAVEPOSITION

StateIconList[EFST_IDs.EFST_NPC_ICEEXPLO] =
{
	haveTimeLimit = 1,
	posTimeLimitStr = 5,
	descript =
	{
		{"동빙폭탄", COLOR_TITLE_DEBUFF},
		{"이동속도 감소"},
		{"일정 시간 뒤에 폭발하여"},
		{"주변에 큰 데미지를 준다."},
		{"%s", COLOR_TIME}
	}
}

StateIconList[EFST_IDs.EFST_FENRIR_CARD] =
{
	haveTimeLimit = 1,
	posTimeLimitStr = 4,
	descript =
	{
		{"Power of Fenrir", COLOR_TITLE_BUFF},
		{"Increase MATK"},
		{"Reduce fixed casting time"},
		{"%s", COLOR_TIME}
	}
}

-- missing: EFST_REUSE_LIMIT_ASPD_POTION

-- missing: EFST_MAXPAIN

-- missing: EFST_PC_STOP

StateIconList[EFST_IDs.EFST_FRIGG_SONG] =
{
	haveTimeLimit = 1,
	posTimeLimitStr = 4,
	descript =
	{
		{"풍요의 노래", COLOR_TITLE_BUFF},
		{"MHP 증가"},
		{"1초당 일정량의 HP 회복"},
		{"%s", COLOR_TIME}
	}
}

StateIconList[EFST_IDs.EFST_OFFERTORIUM] =
{
	haveTimeLimit = 1,
	posTimeLimitStr = 4,
	descript =
	{
		{"오페르토리움", COLOR_TITLE_BUFF},
		{"자신이 사용하는 힐량 증가"},
		{"모든 스킬의 SP 소모량 증가"},
		{"%s", COLOR_TIME}
	}
}

StateIconList[EFST_IDs.EFST_TELEKINESIS_INTENSE] =
{
	haveTimeLimit = 1,
	posTimeLimitStr = 5,
	descript =
	{
		{"텔레키네시스 인텐스", COLOR_TITLE_BUFF},
		{"염속성 마법의 공격력 증가"},
		{"염속성 마법의 소모SP 감소"},
		{"변동 캐스팅 감소"},
		{"%s", COLOR_TIME}
	}
}

-- missing: EFST_MOONSTAR

-- missing: EFST_STRANGELIGHTS

StateIconList[EFST_IDs.EFST_FULL_THROTTLE] =
{
	haveTimeLimit = 1,
	posTimeLimitStr = 4,
	descript =
	{
		{"풀 스로틀", COLOR_TITLE_BUFF},
		{"이동속도 증가"},
		{"All State 증가"},
		{"%s", COLOR_TIME}
	}
}

StateIconList[EFST_IDs.EFST_REBOUND] =
{
	haveTimeLimit = 1,
	posTimeLimitStr = 4,
	descript =
	{
		{"리바운드", COLOR_TITLE_DEBUFF},
		{"이동속도 감소"},
		{"HP, SP 자연회복 불가"},
		{"%s", COLOR_TIME}
	}
}

StateIconList[EFST_IDs.EFST_UNLIMIT] =
{
	haveTimeLimit = 1,
	posTimeLimitStr = 4,
	descript =
	{
		{"언리밋", COLOR_TITLE_BUFF},
		{"원거리 물리공격력 상승"},
		{"DEF, MDEF 대폭 감소"},
		{"%s", COLOR_TIME}
	}
}

StateIconList[EFST_IDs.EFST_KINGS_GRACE] =
{
	haveTimeLimit = 1,
	posTimeLimitStr = 5,
	descript =
	{
		{"왕의 가호", COLOR_TITLE_BUFF},
		{"무적상태"},
		{"아이템 사용불가"},
		{"이동 및 공격 불가"},
		{"%s", COLOR_TIME}
	}
}

StateIconList[EFST_IDs.EFST_ITEM_ATKMAX] =
{
	descript =
	{
		{"MAX ATK", COLOR_TITLE_TOGGLE},
		{"최대 물리데미지"}
	}
}

StateIconList[EFST_IDs.EFST_ITEM_ATKMIN] =
{
	descript =
	{
		{"MIN ATK", COLOR_TITLE_TOGGLE},
		{"최소 물리데미지"}
	}
}

StateIconList[EFST_IDs.EFST_ITEM_MATKMAX] =
{
	descript =
	{
		{"MAX MATK", COLOR_TITLE_TOGGLE},
		{"최대 마법데미지"}
	}
}

StateIconList[EFST_IDs.EFST_ITEM_MATKMIN] =
{
	descript =
	{
		{"MIN MATK", COLOR_TITLE_TOGGLE},
		{"최소 마법데미지"}
	}
}

-- missing: EFST_SUPER_STAR

-- missing: EFST_HIGH_RANKER

StateIconList[EFST_IDs.EFST_DARKCROW] =
{
	haveTimeLimit = 1,
	posTimeLimitStr = 3,
	descript =
	{
		{"검은 손톱", COLOR_TITLE_DEBUFF},
		{"근접 물리피해 증폭"},
		{"%s", COLOR_TIME}
	}
}

StateIconList[EFST_IDs.EFST_2013_VALENTINE1] =
{
	haveTimeLimit = 1,
	posTimeLimitStr = 2,
	descript =
	{
		{"LUK 증가"},
		{"%s", COLOR_TIME}
	}
}

StateIconList[EFST_IDs.EFST_2013_VALENTINE2] =
{
	haveTimeLimit = 1,
	posTimeLimitStr = 2,
	descript =
	{
		{"ATK, MATK %증가"},
		{"%s", COLOR_TIME}
	}
}

StateIconList[EFST_IDs.EFST_2013_VALENTINE3] =
{
	haveTimeLimit = 1,
	posTimeLimitStr = 2,
	descript =
	{
		{"HP, SP 회복력 향상"},
		{"%s", COLOR_TIME}
	}
}

-- missing: EFST_ILLUSIONDOPING

-- missing: EFST_WIDEWEB

StateIconList[EFST_IDs.EFST_CHILL] =
{
	haveTimeLimit = 1,
	posTimeLimitStr = 3,
	descript =
	{
		{"냉기", COLOR_TITLE_DEBUFF},
		{"화상 효과에 걸리지 않는다"},
		{"%s", COLOR_TIME}
	}
}

StateIconList[EFST_IDs.EFST_BURNT] =
{
	haveTimeLimit = 1,
	posTimeLimitStr = 6,
	descript =
	{
		{"화상", COLOR_TITLE_DEBUFF},
		{"화속성 몬스터에게"},
		{"받는 데미지 증가"},
		{"화속성 내성 감소"},
		{"주기적인 화속성 데미지"},
		{"%s", COLOR_TIME}
	}
}

-- missing: EFST_PCCAFE_PLAY_TIME

-- missing: EFST_TWISTED_TIME

-- missing: EFST_FLASHCOMBO

StateIconList[EFST_IDs.EFST_JITTER_BUFF1] =
{
	haveTimeLimit = 1,
	posTimeLimitStr = 3,
	descript =
	{
		{"뉴오즈의 엉뚱함", COLOR_TITLE_BUFF},
		{"ATK 증가"},
		{"%s", COLOR_TIME}
	}
}

StateIconList[EFST_IDs.EFST_JITTER_BUFF2] =
{
	haveTimeLimit = 1,
	posTimeLimitStr = 3,
	descript =
	{
		{"아이구의 의지", COLOR_TITLE_BUFF},
		{"MATK 증가"},
		{"%s", COLOR_TIME}
	}
}

StateIconList[EFST_IDs.EFST_JITTER_BUFF3] =
{
	haveTimeLimit = 1,
	posTimeLimitStr = 3,
	descript =
	{
		{"로테르트의 허세", COLOR_TITLE_BUFF},
		{"공격 후딜레이 감소"},
		{"%s", COLOR_TIME}
	}
}

StateIconList[EFST_IDs.EFST_JITTER_BUFF4] =
{
	haveTimeLimit = 1,
	posTimeLimitStr = 3,
	descript =
	{
		{"겔카의 수줍음", COLOR_TITLE_BUFF},
		{"SP 소모량 감소"},
		{"%s", COLOR_TIME}
	}
}

StateIconList[EFST_IDs.EFST_JITTER_BUFF5] =
{
	haveTimeLimit = 1,
	posTimeLimitStr = 3,
	descript =
	{
		{"아랑의 천진난만함", COLOR_TITLE_BUFF},
		{"스킬 후딜레이 감소"},
		{"%s", COLOR_TIME}
	}
}

StateIconList[EFST_IDs.EFST_JITTER_BUFF6] =
{
	haveTimeLimit = 1,
	posTimeLimitStr = 3,
	descript =
	{
		{"밍민의 세밀함", COLOR_TITLE_BUFF},
		{"명중률 증가"},
		{"%s", COLOR_TIME}
	}
}

StateIconList[EFST_IDs.EFST_JITTER_BUFF7] =
{
	haveTimeLimit = 1,
	posTimeLimitStr = 3,
	descript =
	{
		{"로엘의 진지함", COLOR_TITLE_BUFF},
		{"DEF 증가"},
		{"%s", COLOR_TIME}
	}
}

StateIconList[EFST_IDs.EFST_JITTER_BUFF8] =
{
	haveTimeLimit = 1,
	posTimeLimitStr = 3,
	descript =
	{
		{"루나인의 세침함", COLOR_TITLE_BUFF},
		{"힐량 증가"},
		{"%s", COLOR_TIME}
	}
}

StateIconList[EFST_IDs.EFST_JITTER_BUFF9] =
{
	haveTimeLimit = 1,
	posTimeLimitStr = 3,
	descript =
	{
		{"라기의 썰렁함", COLOR_TITLE_BUFF},
		{"MDEF 증가"},
		{"%s", COLOR_TIME}
	}
}

StateIconList[EFST_IDs.EFST_JITTER_BUFF10] =
{
	haveTimeLimit = 1,
	posTimeLimitStr = 3,
	descript =
	{
		{"멜로디잭의 불필요함", COLOR_TITLE_BUFF},
		{"회피율 증가"},
		{"%s", COLOR_TIME}
	}
}

StateIconList[EFST_IDs.EFST_CUP_OF_BOZA] =
{
	haveTimeLimit = 1,
	posTimeLimitStr = 2,
	descript =
	{
		{"Cup of Boza", COLOR_TITLE_BUFF},
		{"%s", COLOR_TIME},
		{"Whatever"}
	}
}

StateIconList[EFST_IDs.EFST_B_TRAP] =
{
	haveTimeLimit = 1,
	posTimeLimitStr = 3,
	descript =
	{
		{"바인드 트랩", COLOR_TITLE_DEBUFF},
		{"이동 불가"},
		{"%s", COLOR_TIME}
	}
}

StateIconList[EFST_IDs.EFST_E_CHAIN] =
{
	haveTimeLimit = 1,
	posTimeLimitStr = 3,
	descript =
	{
		{"이터널 체인", COLOR_TITLE_BUFF},
		{"일정 확률로 체인액션 발동"},
		{"%s", COLOR_TIME}
	}
}

-- missing: EFST_E_QD_SHOT_READY

StateIconList[EFST_IDs.EFST_C_MARKER] =
{
	haveTimeLimit = 1,
	posTimeLimitStr = 3,
	descript =
	{
		{"크림즌 마커", COLOR_TITLE_DEBUFF},
		{"FLEE 감소"},
		{"%s", COLOR_TIME}
	}
}

-- missing: EFST_H_MINE

-- missing: EFST_H_MINE_SPLASH

StateIconList[EFST_IDs.EFST_P_ALTER] =
{
	haveTimeLimit = 1,
	posTimeLimitStr = 4,
	descript =
	{
		{"플래티넘 알터", COLOR_TITLE_BUFF},
		{"ATK 증가"},
		{"불사속성 내성 증가"},
		{"%s", COLOR_TIME}
	}
}

StateIconList[EFST_IDs.EFST_HEAT_BARREL] =
{
	haveTimeLimit = 1,
	posTimeLimitStr = 4,
	descript =
	{
		{"히트 배럴", COLOR_TITLE_BUFF},
		{"ATK 증가"},
		{"공격 후딜레이 감소"},
		{"%s", COLOR_TIME}
	}
}

StateIconList[EFST_IDs.EFST_ANTI_M_BLAST] =
{
	haveTimeLimit = 1,
	posTimeLimitStr = 3,
	descript =
	{
		{"안티 매터리얼 블래스트", COLOR_TITLE_DEBUFF},
		{"무속성 내성 감소"},
		{"%s", COLOR_TIME}
	}
}

-- missing: EFST_SLUGSHOT

StateIconList[EFST_IDs.EFST_SWORDCLAN] =
{
	descript =
	{
		{"소드 클랜", COLOR_TITLE_BUFF},
		{"STR + 1, VIT + 1"},
		{"MHP + 30, MSP + 10"}
	}
}

StateIconList[EFST_IDs.EFST_ARCWANDCLAN] =
{
	descript =
	{
		{"아크완드 클랜", COLOR_TITLE_BUFF},
		{"INT + 1, DEX + 1"},
		{"MHP + 30, MSP + 10"}
	}
}

StateIconList[EFST_IDs.EFST_GOLDENMACECLAN] =
{
	descript =
	{
		{"골든메이스 클랜", COLOR_TITLE_BUFF},
		{"LUK + 1, INT + 1"},
		{"MHP + 30, MSP + 10"}
	}
}

StateIconList[EFST_IDs.EFST_CROSSBOWCLAN] =
{
	descript =
	{
		{"크로스보우 클랜", COLOR_TITLE_BUFF},
		{"DEX + 1, AGI + 1"},
		{"MHP + 30, MSP + 10"}
	}
}

StateIconList[EFST_IDs.EFST_PACKING_ENVELOPE1] =
{
	haveTimeLimit = 1,
	posTimeLimitStr = 3,
	descript =
	{
		{"강력한 30초", COLOR_TITLE_BUFF},
		{"ATK 증가"},
		{"%s", COLOR_TIME}
	}
}

StateIconList[EFST_IDs.EFST_PACKING_ENVELOPE2] =
{
	haveTimeLimit = 1,
	posTimeLimitStr = 3,
	descript =
	{
		{"똑똑한 30초", COLOR_TITLE_BUFF},
		{"MATK 증가"},
		{"%s", COLOR_TIME}
	}
}

StateIconList[EFST_IDs.EFST_PACKING_ENVELOPE3] =
{
	haveTimeLimit = 1,
	posTimeLimitStr = 3,
	descript =
	{
		{"체력의 30초", COLOR_TITLE_BUFF},
		{"MHP 증가"},
		{"%s", COLOR_TIME}
	}
}

StateIconList[EFST_IDs.EFST_PACKING_ENVELOPE4] =
{
	haveTimeLimit = 1,
	posTimeLimitStr = 3,
	descript =
	{
		{"마력의 30초", COLOR_TITLE_BUFF},
		{"MSP 증가"},
		{"%s", COLOR_TIME}
	}
}

StateIconList[EFST_IDs.EFST_PACKING_ENVELOPE5] =
{
	haveTimeLimit = 1,
	posTimeLimitStr = 3,
	descript =
	{
		{"가벼운 30초", COLOR_TITLE_BUFF},
		{"FLEE 증가"},
		{"%s", COLOR_TIME}
	}
}

StateIconList[EFST_IDs.EFST_PACKING_ENVELOPE6] =
{
	haveTimeLimit = 1,
	posTimeLimitStr = 3,
	descript =
	{
		{"빨라진 30초", COLOR_TITLE_BUFF},
		{"ASPD 증가"},
		{"%s", COLOR_TIME}
	}
}

StateIconList[EFST_IDs.EFST_PACKING_ENVELOPE7] =
{
	haveTimeLimit = 1,
	posTimeLimitStr = 3,
	descript =
	{
		{"든든한 30초", COLOR_TITLE_BUFF},
		{"DEF 증가"},
		{"%s", COLOR_TIME}
	}
}

StateIconList[EFST_IDs.EFST_PACKING_ENVELOPE8] =
{
	haveTimeLimit = 1,
	posTimeLimitStr = 3,
	descript =
	{
		{"안전한 30초", COLOR_TITLE_BUFF},
		{"MDEF 증가"},
		{"%s", COLOR_TIME}
	}
}

StateIconList[EFST_IDs.EFST_PACKING_ENVELOPE9] =
{
	haveTimeLimit = 1,
	posTimeLimitStr = 3,
	descript =
	{
		{"운좋은 30초", COLOR_TITLE_BUFF},
		{"CRI 증가"},
		{"%s", COLOR_TIME}
	}
}

StateIconList[EFST_IDs.EFST_PACKING_ENVELOPE10] =
{
	haveTimeLimit = 1,
	posTimeLimitStr = 3,
	descript =
	{
		{"잘맞는 30초", COLOR_TITLE_BUFF},
		{"HIT 증가"},
		{"%s", COLOR_TIME}
	}
}

StateIconList[EFST_IDs.EFST_GLASTHEIM_TRANS] =
{
	haveTimeLimit = 1,
	posTimeLimitStr = 3,
	descript =
	{
		{"산 자와 죽은 자의 경계에 있습니다!", COLOR_TITLE_DEBUFF},
		{"정신력이 50% 감소합니다."},
		{"%s", COLOR_TIME}
	}
}

StateIconList[EFST_IDs.EFST_ZONGZI_POUCH_TRANS] =
{
	haveTimeLimit = 1,
	posTimeLimitStr = 3,
	descript =
	{
		{"단오절 축제", COLOR_TITLE_BUFF},
		{"모든 스테이터스 증가."},
		{"%s", COLOR_TIME}
	}
}

StateIconList[EFST_IDs.EFST_HEAT_BARREL_AFTER] =
{
	haveTimeLimit = 1,
	posTimeLimitStr = 2,
	descript =
	{
		{"후유증", COLOR_TITLE_DEBUFF},
		{"%s", COLOR_TIME},
		{"아이템 사용불가"},
		{"스킬 사용불가"},
		{"공격 불가"}
	}
}

-- missing: EFST_DECORATION_OF_MUSIC

StateIconList[EFST_IDs.EFST_OVERSEAEXPUP] =
{
	haveTimeLimit = 1,
	posTimeLimitStr = 1,
	descript =
	{
		{"%s", COLOR_TIME},
		{"획득 경험치 증가"}
	}
}

StateIconList[EFST_IDs.EFST_BEEF_RIB_STEW] =
{
	haveTimeLimit = 1,
	posTimeLimitStr = 2,
	descript =
	{
		{"소갈비찜", COLOR_TITLE_BUFF},
		{"%s", COLOR_TIME},
		{"변동 캐스팅 감소."},
		{"SP 소모량 감소."}
	}
}

StateIconList[EFST_IDs.EFST_PORK_RIB_STEW] =
{
	haveTimeLimit = 1,
	posTimeLimitStr = 2,
	descript =
	{
		{"돼지갈비찜", COLOR_TITLE_BUFF},
		{"%s", COLOR_TIME},
		{"공격속도 증가."},
		{"SP 소모량 감소."}
	}
}

StateIconList[EFST_IDs.EFST_CHUSEOK_MONDAY] =
{
	haveTimeLimit = 1,
	posTimeLimitStr = 2,
	descript =
	{
		{"추석", COLOR_TITLE_BUFF},
		{"%s", COLOR_TIME},
		{"암속성 몬스터 추가 데미지."},
		{"성속성 내성 증가."}
	}
}

StateIconList[EFST_IDs.EFST_CHUSEOK_TUESDAY] =
{
	haveTimeLimit = 1,
	posTimeLimitStr = 2,
	descript =
	{
		{"추석", COLOR_TITLE_BUFF},
		{"%s", COLOR_TIME},
		{"지속성 몬스터 추가 데미지."},
		{"화속성 내성 증가."}
	}
}

StateIconList[EFST_IDs.EFST_CHUSEOK_WEDNESDAY] =
{
	haveTimeLimit = 1,
	posTimeLimitStr = 2,
	descript =
	{
		{"추석", COLOR_TITLE_BUFF},
		{"%s", COLOR_TIME},
		{"화속성 몬스터 추가 데미지."},
		{"수속성 내성 증가."}
	}
}

StateIconList[EFST_IDs.EFST_CHUSEOK_THURSDAY] =
{
	haveTimeLimit = 1,
	posTimeLimitStr = 2,
	descript =
	{
		{"추석", COLOR_TITLE_BUFF},
		{"%s", COLOR_TIME},
		{"풍속성 몬스터 추가 데미지."},
		{"지속성 내성 증가."}
	}
}

StateIconList[EFST_IDs.EFST_CHUSEOK_FRIDAY] =
{
	haveTimeLimit = 1,
	posTimeLimitStr = 2,
	descript =
	{
		{"추석", COLOR_TITLE_BUFF},
		{"%s", COLOR_TIME},
		{"수속성 몬스터 추가 데미지."},
		{"풍속성 내성 증가."}
	}
}

StateIconList[EFST_IDs.EFST_CHUSEOK_WEEKEND] =
{
	haveTimeLimit = 1,
	posTimeLimitStr = 2,
	descript =
	{
		{"추석", COLOR_TITLE_BUFF},
		{"%s", COLOR_TIME},
		{"무속성 몬스터 추가 데미지."},
		{"무속성 내성 증가."}
	}
}

-- missing: EFST_ALL_LIGHTGUARD

-- missing: EFST_ALL_LIGHTGUARD_COOL_TIME

-- missing: EFST_MTF_MHP

-- missing: EFST_MTF_MSP

-- missing: EFST_MTF_PUMPKIN

-- missing: EFST_MTF_HITFLEE

-- missing: EFST_MTF_CRIDAMAGE2

-- missing: EFST_MTF_SPDRAIN

-- missing: EFST_ACUO_MINT_GUM

-- missing: EFST_S_HEALPOTION

-- missing: EFST_REUSE_LIMIT_S_HEAL_POTION

-- missing: EFST_PLAYTIME_STATISTICS

-- missing: EFST_GN_CHANGEMATERIAL_OPERATOR

-- missing: EFST_GN_MIX_COOKING_OPERATOR

-- missing: EFST_GN_MAKEBOMB_OPERATOR

-- missing: EFST_GN_S_PHARMACY_OPERATOR

-- missing: EFST_SO_EL_ANALYSIS_DISASSEMBLY_OPERATOR

-- missing: EFST_SO_EL_ANALYSIS_COMBINATION_OPERATOR

-- missing: EFST_NC_MAGICDECOY_OPERATOR

-- missing: EFST_GUILD_STORAGE

-- missing: EFST_GC_POISONINGWEAPON_OPERATOR

-- missing: EFST_WS_WEAPONREFINE_OPERATOR

-- missing: EFST_BS_REPAIRWEAPON_OPERATOR

-- missing: EFST_GET_MAILBOX

-- missing: EFST_JUMPINGCLAN

-- missing: EFST_JP_OTP

-- missing: EFST_HANDICAPTOLERANCE_LEVELGAP

-- missing: EFST_MTF_RANGEATK2

-- missing: EFST_MTF_ASPD2

-- missing: EFST_MTF_MATK2

