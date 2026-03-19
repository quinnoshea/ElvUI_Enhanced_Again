-- Korean localization file for koKR
local L = ElvUI[1].Libs.ACL:NewLocale("ElvUI", "koKR")
if not L then return end

-- Init
L["ENH_LOGIN_MSG"] = "|cff1784d1ElvUI Enhanced (Yet) Again|r |cffff8000(리테일)|r 버전 %s%s|r을(를) 사용 중입니다."
L["ENH_LOGIN_MSG_WRATH"] = "|cff1784d1ElvUI Enhanced (Yet) Again|r |cffff8000(리분클)|r 버전 %s%s|r을(를) 사용 중입니다."
L["MSG_EEL_ELV_OUTDATED"] = "ElvUI 버전이 |cff1784d1ElvUI Enhanced (Yet) Again|r 권장 버전보다 낮습니다. 현재 버전: |cff1784d1%.2f|r (권장: |cff1784d1%.2f|r). ElvUI를 업데이트해 주세요."

-- Equipment
L["Equipment"] = "장비"
L["EQUIPMENT_DESC"] = "전문화 변경 또는 전장 입장 시 장비 세트 전환 설정을 조정합니다."
L["No Change"] = "변경 없음"

L["Specialization"] = "전문화"
L["Enable/Disable the specialization switch."] = "전문화 전환을 활성화/비활성화합니다."

L["Primary Talent"] = "주 특성"
L["Choose the equipment set to use for your primary specialization."] = "주 전문화에 사용할 장비 세트를 선택합니다."

L["Secondary Talent"] = "보조 특성"
L["Choose the equipment set to use for your secondary specialization."] = "보조 전문화에 사용할 장비 세트를 선택합니다."

L["Battleground"] = "전장"
L['Enable/Disable the battleground switch.'] = "전장 전환을 활성화/비활성화합니다."

L["Equipment Set"] = "장비 세트"
L["Choose the equipment set to use when you enter a battleground or arena."] = "전장 또는 투기장 입장 시 사용할 장비 세트를 선택합니다."

L["You have equipped equipment set: "] = "장비 세트를 착용했습니다: "

L["DURABILITY_DESC"] = "캐릭터 화면의 내구도 정보 설정을 조정합니다."
L['Enable/Disable the display of durability information on the character screen.'] = "캐릭터 화면에서 내구도 정보 표시를 활성화/비활성화합니다."
L["Damaged Only"] = "손상된 것만"
L["Only show durabitlity information for items that are damaged."] = "손상된 아이템에만 내구도 정보를 표시합니다."

L["ITEMLEVEL_DESC"] = "캐릭터 화면의 아이템 레벨 정보 설정을 조정합니다."
L["Enable/Disable the display of item levels on the character screen."] = "캐릭터 화면에서 아이템 레벨 표시를 활성화/비활성화합니다."

L["Miscellaneous"] = "기타"
L['Equipment Set Overlay'] = "장비 세트 오버레이"
L['Show the associated equipment sets for the items in your bags (or bank).'] = "가방(또는 은행)의 아이템에 연결된 장비 세트를 표시합니다."

-- Movers
L["Mover Transparency"] = "이동 앵커 투명도"
L["Changes the transparency of all the movers."] = "모든 이동 앵커의 투명도를 변경합니다."

-- Automatic Role Assignment
L['Automatic Role Assignment'] = "자동 역할 배정"
L['Enables the automatic role assignment based on specialization for party / raid members (only work when you are group leader or group assist).'] = "파티/공격대원의 전문화에 따른 자동 역할 배정을 활성화합니다 (파티장 또는 보조만 가능)."

-- Auto Hide Role Icons in combat
L['Hide Role Icon in combat'] = "전투 중 역할 아이콘 숨기기"
L['All role icons (Damage/Healer/Tank) on the unit frames are hidden when you go into combat.'] = "전투 중 유닛 프레임의 모든 역할 아이콘(공격/치유/방어)이 숨겨집니다."

-- GPS module
L['GPS'] = "GPS"
L['Show the direction and distance to the selected party or raid member.'] = "선택한 파티 또는 공격대원까지의 방향과 거리를 표시합니다."

-- Attack Icon
L['Attack Icon'] = "공격 아이콘"
L['Show attack icon for units that are not tapped by you or your group, but still give kill credit when attacked.'] = "당신이나 파티가 선점하지 않았지만 공격 시 처치 보상을 받을 수 있는 유닛에 공격 아이콘을 표시합니다."

-- Class Icon
L['Show class icon for units.'] = "유닛의 직업 아이콘을 표시합니다."

-- Minimap Location
L["MiniMap Coordinates"] = "미니맵 좌표"
L['Above Minimap'] = "미니맵 위"
L['Location Digits'] = "좌표 자릿수"
L['Number of digits for map location.'] = "맵 위치의 소수점 자릿수입니다."

-- Minimap Combat Hide
L["Hide minimap while in combat."] = "전투 중 미니맵을 숨깁니다."
L["FadeIn Delay"] = "페이드인 지연"
L["The time to wait before fading the minimap back in after combat hide. (0 = Disabled)"] = "전투 후 미니맵이 다시 나타나기까지의 대기 시간입니다. (0 = 비활성화)"

-- Minimap Buttons
L["Minimap Button Bar"] = "미니맵 버튼 바"
L['Skin Buttons'] = "버튼 스킨"
L['Skins the minimap buttons in Elv UI style.'] = "미니맵 버튼을 ElvUI 스타일로 스킨합니다."
L['Skin Style'] = "스킨 스타일"
L['Change settings for how the minimap buttons are skinned.'] = "미니맵 버튼 스킨 설정을 변경합니다."
L['The size of the minimap buttons.'] = "미니맵 버튼의 크기입니다."

L['No Anchor Bar'] = "앵커 바 없음"
L['Horizontal Anchor Bar'] = "수평 앵커 바"
L['Vertical Anchor Bar'] = "수직 앵커 바"

L['Layout Direction'] = "레이아웃 방향"
L['Normal is right to left or top to bottom, or select reversed to switch directions.'] = "기본은 오른쪽에서 왼쪽 또는 위에서 아래이며, 반전을 선택하면 방향이 바뀝니다."
L['Normal'] = "기본"
L['Reversed'] = "반전"

-- PvP Autorelease
L['PvP Autorelease'] = "PvP 자동 해제"
L['Automatically release body when killed inside a battleground.'] = "전장에서 사망 시 자동으로 영혼을 해제합니다."

-- Track Reputation
L['Track Reputation'] = "평판 추적"
L['Automatically change your watched faction on the reputation bar to the faction you got reputation points for.'] = "평판 포인트를 얻은 진영으로 평판 바의 추적 진영을 자동 변경합니다."

-- Select Quest Reward
L['Select Quest Reward'] = "퀘스트 보상 선택"
L['Automatically select the quest reward with the highest vendor sell value.'] = "상인 판매가가 가장 높은 퀘스트 보상을 자동으로 선택합니다."

-- Item Level Datatext
L['Item Level'] = "아이템 레벨"

-- Range Datatext
L['Target Range'] = "대상 거리"
L['Distance'] = "거리"

-- Extra Datatexts
L['Actionbar1DataPanel'] = '행동 바 1'
L['Actionbar3DataPanel'] = '행동 바 3'
L['Actionbar5DataPanel'] = '행동 바 5'

-- Farmer Module
L["Sunsong Ranch"] = "태양노래 농장"
L["The Halfhill Market"] = "언덕골 시장"
L["Tilled Soil"] = "갈아엎은 흙"
L['Right-click to drop the item.'] = "우클릭으로 아이템을 버립니다."

L['Farmer'] = "농부"
L["FARMER_DESC"] = "태양노래 농장에서 더 효율적으로 경작할 수 있는 도구 설정을 조정합니다."
L['Farmer Bars'] = "농부 바"
L['Farmer Portal Bar'] = "농부 포탈 바"
L['Farmer Seed Bar'] = "농부 씨앗 바"
L['Farmer Tools Bar'] = "농부 도구 바"
L['Enable/Disable the farmer bars.'] = "농부 바를 활성화/비활성화합니다."
L['Only active buttons'] = "활성 버튼만"
L['Only show the buttons for the seeds, portals, tools you have in your bags.'] = "가방에 있는 씨앗, 포탈, 도구의 버튼만 표시합니다."
L['Drop Tools'] = "도구 버리기"
L['Automatically drop tools from your bags when leaving the farming area.'] = "경작 지역을 떠날 때 가방의 도구를 자동으로 버립니다."
L['Seed Bar Direction'] = "씨앗 바 방향"
L['The direction of the seed bar buttons (Horizontal or Vertical).'] = "씨앗 바 버튼의 방향입니다 (수평 또는 수직)."

-- Nameplates
L["Threat Text"] = "위협 텍스트"
L["Display threat level as text on targeted, boss or mouseover nameplate."] = "대상, 보스 또는 마우스오버 이름표에 위협 수준을 텍스트로 표시합니다."
L["Target Count"] = "대상 수"
L["Display the number of party / raid members targetting the nameplate unit."] = "해당 유닛을 대상으로 하는 파티/공격대원 수를 표시합니다."

-- HealGlow
L['Heal Glow'] = "치유 발광"
L['Direct AoE heals will let the unit frames of the affected party / raid members glow for the defined time period.'] = "직접 광역 치유가 영향받은 파티/공격대원의 유닛 프레임을 정해진 시간 동안 발광시킵니다."
L["Glow Duration"] = "발광 지속시간"
L["The amount of time the unit frames of party / raid members will glow when affected by a direct AoE heal."] = "직접 광역 치유를 받았을 때 파티/공격대원 유닛 프레임이 발광하는 시간입니다."
L["Glow Color"] = "발광 색상"

-- Raid Marker Bar
L['Raid Marker Bar'] = "공격대 징표 바"
L['Display a quick action bar for raid targets and world markers.'] = "공격대 대상 징표와 바닥 징표를 위한 빠른 행동 바를 표시합니다."
L['Modifier Key'] = "보조 키"
L['Set the modifier key for placing world markers.'] = "바닥 징표 배치를 위한 보조 키를 설정합니다."
L['Shift Key'] = "Shift 키"
L['Ctrl Key'] = "Ctrl 키"
L['Alt Key'] = "Alt 키"
L["Raid Markers"] = "공격대 징표"
L["Click to clear the mark."] = "클릭하여 징표를 제거합니다."
L["Click to mark the target."] = "클릭하여 대상에 징표를 지정합니다."
L["%sClick to remove all worldmarkers."] = "%s클릭하여 모든 바닥 징표를 제거합니다."
L["%sClick to place a worldmarker."] = "%s클릭하여 바닥 징표를 배치합니다."

-- WatchFrame
L['WatchFrame'] = "추적 프레임"
L['WATCHFRAME_DESC'] = "추적 프레임(퀘스트 로그)의 가시성 설정을 조정합니다."
L['Hidden'] = "숨김"
L['Collapsed'] = "접기"
L['Settings'] = "설정"
L['City (Resting)'] = "도시 (휴식)"
L['PvP'] = "PvP"
L['Arena'] = "투기장"
L['Party'] = "파티"
L['Raid'] = "공격대"

-- Tooltips
L['Progression Info'] = "진행도 정보"
L['Display the players raid progression in the tooltip, this may not immediately update when mousing over a unit.'] = "툴팁에 플레이어의 공격대 진행도를 표시합니다. 유닛 위에 마우스를 올렸을 때 즉시 업데이트되지 않을 수 있습니다."
