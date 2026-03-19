-- Simplified Chinese localization file for zhCN
local L = ElvUI[1].Libs.ACL:NewLocale("ElvUI", "zhCN")
if not L then return end

-- Translation by: zhouf616

-- Init
L["ENH_LOGIN_MSG"] = "您正在使用 |cff1784d1ElvUI Enhanced (Yet) Again|r |cffff8000(正式服)|r 版本 %s%s|r."
L["ENH_LOGIN_MSG_WRATH"] = "您正在使用 |cff1784d1ElvUI Enhanced (Yet) Again|r |cffff8000(巫妖王经典版)|r 版本 %s%s|r."
L["MSG_EEL_ELV_OUTDATED"] = "您的ElvUI版本低于 |cff1784d1ElvUI Enhanced (Yet) Again|r 的建议版本。您的版本是 |cff1784d1%.2f|r (建议版本: |cff1784d1%.2f|r)。请更新ElvUI。"

-- Equipment
L["Equipment"] = "自动换装"
L["EQUIPMENT_DESC"] = "当你切换专精或进入战场时自动更换装备, 你可以在选项中选择相关的装备模组."
L["No Change"] = "不改变"

L["Specialization"] = "专精"
L["Enable/Disable the specialization switch."] = "开启/关闭 专精切换"

L["Primary Talent"] = "主专精"
L["Choose the equipment set to use for your primary specialization."] = "选择当你使用主专精时的装备模组."

L["Secondary Talent"] = "副专精"
L["Choose the equipment set to use for your secondary specialization."] = "选择当你使用副专精时的装备模组."

L["Battleground"] = "战场"
L['Enable/Disable the battleground switch.'] = "开启/关闭 战场切换"

L["Equipment Set"] = "装备模组"
L["Choose the equipment set to use when you enter a battleground or arena."] = "选择当你进入战场时的装备模组."

L["You have equipped equipment set: "] = "你已装备此模组: "

L["DURABILITY_DESC"] = "调整设置人物窗口装备耐久度显示."
L['Enable/Disable the display of durability information on the character screen.'] = "开启/关闭 人物窗口装备耐久度显示."
L["Damaged Only"] = "受损显示"
L["Only show durabitlity information for items that are damaged."] = "只在装备受损时显示耐久度."

L["ITEMLEVEL_DESC"] = "调整在角色信息上显示物品装等的各种设定."
L["Enable/Disable the display of item levels on the character screen."] = "在角色信息上显示各装备装等."

L["Miscellaneous"] = "杂项"
L['Equipment Set Overlay'] = "装备模组覆盖"
L['Show the associated equipment sets for the items in your bags (or bank).'] = "在你背包或银行中显示相关的套装设定."

-- Movers
L["Mover Transparency"] = "定位器透明度"
L["Changes the transparency of all the movers."] = "改变所有定位器的透明度."

-- Automatic Role Assignment
L['Automatic Role Assignment'] = "自动设定角色定位"
L['Enables the automatic role assignment based on specialization for party / raid members (only work when you are group leader or group assist).'] = "当你是队长或助理时根据队员天赋自动指定其角色定位."

-- Auto Hide Role Icons in combat
L['Hide Role Icon in combat'] = "战斗中隐藏角色定位图标"
L['All role icons (Damage/Healer/Tank) on the unit frames are hidden when you go into combat.'] = "战斗中隐藏单位框架上的所有角色定位图标(伤害/治疗/坦克)."

-- GPS module
L['GPS'] = "GPS定位"
L['Show the direction and distance to the selected party or raid member.'] = "显示你与当前队伍或团队成员的方向与距离."

-- Attack Icon
L['Attack Icon'] = "战斗标记"
L['Show attack icon for units that are not tapped by you or your group, but still give kill credit when attacked.'] = "当目标不是被你或你的队伍所开,但是可以取得击杀奖励时显示一个战斗标记."

-- Class Icon
L['Show class icon for units.'] = "显示职业图标."

-- Minimap Location
L["MiniMap Coordinates"] = "小地图坐标"
L['Above Minimap'] = "小地图之上"
L['Location Digits'] = "坐标位数"
L['Number of digits for map location.'] = "坐标显示的小数位数."

-- Minimap Combat Hide
L["Hide minimap while in combat."] = "战斗中隐藏小地图."
L["FadeIn Delay"] = "隐藏延迟"
L["The time to wait before fading the minimap back in after combat hide. (0 = Disabled)"] = "战斗开始后隐藏小地图前的延迟时间. (0=停用)"

-- Minimap Buttons
L["Minimap Button Bar"] = "小地图按钮整合列"
L['Skin Buttons'] = "美化按钮"
L['Skins the minimap buttons in Elv UI style.'] = "将小地图图标美化成ElvUI风格."
L['Skin Style'] = "美化风格"
L['Change settings for how the minimap buttons are skinned.'] = "改变美化设定."
L['The size of the minimap buttons.'] = "小地图图标尺寸."

L['No Anchor Bar'] = "没有锚点"
L['Horizontal Anchor Bar'] = "水平状"
L['Vertical Anchor Bar'] = "垂直状"

L['Layout Direction'] = "排列方向"
L['Normal is right to left or top to bottom, or select reversed to switch directions.'] = "正常为从右到左或从上到下，选择反转可切换方向."
L['Normal'] = "正常"
L['Reversed'] = "反转"

-- PvP Autorelease
L['PvP Autorelease'] = "PVP自动释放灵魂"
L['Automatically release body when killed inside a battleground.'] = "在战场死亡后自动释放灵魂."

-- Track Reputation
L['Track Reputation'] = "声望追踪"
L['Automatically change your watched faction on the reputation bar to the faction you got reputation points for.'] = "当你获得某个阵营的声望时, 将自动追踪此阵营的声望至经验栏位."

-- Select Quest Reward
L['Select Quest Reward'] = "自动选取任务奖励"
L['Automatically select the quest reward with the highest vendor sell value.'] = "自动选取有最高卖价的任务奖励物品."

-- Item Level Datatext
L['Item Level'] = "物品等级"

-- Range Datatext
L['Target Range'] = "目标距离"
L['Distance'] = "距离"

-- Extra Datatexts
L['Actionbar1DataPanel'] = '快捷列 1 资讯框'
L['Actionbar3DataPanel'] = '快捷列 3 资讯框'
L['Actionbar5DataPanel'] = '快捷列 5 资讯框'

-- Farmer
L["Sunsong Ranch"] = "日歌农场"
L["The Halfhill Market"] = "半山市集"
L["Tilled Soil"] = "开垦过的土壤"
L['Right-click to drop the item.'] = "右键点击需删除的项目."

L['Farmer'] = "农夫"
L["FARMER_DESC"] = "调整设置以便你在日歌农场更有效的耕作."
L['Farmer Bars'] = "农夫列"
L['Farmer Portal Bar'] = "农夫列:传送"
L['Farmer Seed Bar'] = "农夫列:种子"
L['Farmer Tools Bar'] = "农夫列:工具"
L['Enable/Disable the farmer bars.'] = "开启/关闭 农夫快捷列."
L['Only active buttons'] = "只显示有效的按钮"
L['Only show the buttons for the seeds, portals, tools you have in your bags.'] = "只显示你背包中有的种子, 传送门和工具."
L['Drop Tools'] = "删除工具"
L['Automatically drop tools from your bags when leaving the farming area.'] = "当你离开农场范围时, 自动删除背包中的工具."
L['Seed Bar Direction'] = "种子条方向"
L['The direction of the seed bar buttons (Horizontal or Vertical).'] = "种子条的方向 (水平或垂直)."

-- Nameplates
L["Threat Text"] = "威胁值文字"
L["Display threat level as text on targeted, boss or mouseover nameplate."] = "在首领或鼠标悬停的血条上显示威胁值文字."
L["Target Count"] = "目标计数"
L["Display the number of party / raid members targetting the nameplate unit."] = "在血条旁边显示队伍/团队成员中以其为目标的个数."

-- HealGlow
L['Heal Glow'] = "高亮治疗"
L['Direct AoE heals will let the unit frames of the affected party / raid members glow for the defined time period.'] = "受到直接性的范围治疗法术影响的队伍/团队成员会被高亮指定的时间."
L["Glow Duration"] = "高亮持续时间"
L["The amount of time the unit frames of party / raid members will glow when affected by a direct AoE heal."] = "当队伍/团队成员受到直接性范围治疗法术时高亮持续的时间."
L["Glow Color"] = "高亮颜色"

-- Raid Marker Bar
L['Raid Marker Bar'] = "团队标记列"
L['Display a quick action bar for raid targets and world markers.'] = "显示一个可以快速设定团队标记与光柱的快捷列."
L['Modifier Key'] = "组合键"
L['Set the modifier key for placing world markers.'] = "设定标示团队光柱的组合键."
L['Shift Key'] = "Shift键"
L['Ctrl Key'] = "Ctrl键"
L['Alt Key'] = "Alt键"
L["Raid Markers"] = "团队标记"
L["Click to clear the mark."] = "点选清除所有标记."
L["Click to mark the target."] = "点选以标记目标."
L["%sClick to remove all worldmarkers."] = "%s 清除了所有光柱."
L["%sClick to place a worldmarker."] = "%s 放置了一个光柱."

-- WatchFrame
L['WatchFrame'] = "追踪器"
L['WATCHFRAME_DESC'] = "调整追踪器(任务日志)的可见性设定."
L['Hidden'] = "隐藏"
L['Collapsed'] = "收起"
L['Settings'] = "设定"
L['City (Resting)'] = "城市 (休息)"
L['PvP'] = "PvP"
L['Arena'] = "竞技场"
L['Party'] = "队伍"
L['Raid'] = "团队"

-- Tooltips
L['Progression Info'] = "进度信息"
L['Display the players raid progression in the tooltip, this may not immediately update when mousing over a unit.'] = "在提示框中显示玩家的副本进度，鼠标移到目标上时可能不会立即更新."
