-- Russian localization file for ruRU
local L = ElvUI[1].Libs.ACL:NewLocale("ElvUI", "ruRU")
if not L then return end

-- Init
L["ENH_LOGIN_MSG"] = "Вы используете |cff1784d1ElvUI Enhanced (Yet) Again|r |cffff8000(Ритейл)|r версия %s%s|r."
L["ENH_LOGIN_MSG_WRATH"] = "Вы используете |cff1784d1ElvUI Enhanced (Yet) Again|r |cffff8000(Wrath Classic)|r версия %s%s|r."
L["MSG_EEL_ELV_OUTDATED"] = "Ваша версия ElvUI старше рекомендуемой для |cff1784d1ElvUI Enhanced (Yet) Again|r. Ваша версия: |cff1784d1%.2f|r (рекомендуемая: |cff1784d1%.2f|r). Пожалуйста, обновите ElvUI."

-- Equipment
L["Equipment"] = "Экипировка"
L["EQUIPMENT_DESC"] = "Настройте параметры переключения комплекта экипировки при смене специализации или входе на поле боя."
L["No Change"] = "Без изменений"

L["Specialization"] = "Специализация"
L["Enable/Disable the specialization switch."] = "Включить/Выключить переключение по специализации."

L["Primary Talent"] = "Основной талант"
L["Choose the equipment set to use for your primary specialization."] = "Выберите комплект экипировки для основной специализации."

L["Secondary Talent"] = "Дополнительный талант"
L["Choose the equipment set to use for your secondary specialization."] = "Выберите комплект экипировки для дополнительной специализации."

L["Battleground"] = "Поле боя"
L['Enable/Disable the battleground switch.'] = "Включить/Выключить переключение на поле боя."

L["Equipment Set"] = "Комплект экипировки"
L["Choose the equipment set to use when you enter a battleground or arena."] = "Выберите комплект экипировки для поля боя или арены."

L["You have equipped equipment set: "] = "Вы надели комплект экипировки: "

L["DURABILITY_DESC"] = "Настройте параметры отображения прочности на экране персонажа."
L['Enable/Disable the display of durability information on the character screen.'] = "Включить/Выключить отображение прочности на экране персонажа."
L["Damaged Only"] = "Только повреждённые"
L["Only show durabitlity information for items that are damaged."] = "Показывать прочность только для повреждённых предметов."

L["ITEMLEVEL_DESC"] = "Настройте параметры отображения уровня предметов на экране персонажа."
L["Enable/Disable the display of item levels on the character screen."] = "Включить/Выключить отображение уровня предметов на экране персонажа."

L["Miscellaneous"] = "Разное"
L['Equipment Set Overlay'] = "Наложение комплекта"
L['Show the associated equipment sets for the items in your bags (or bank).'] = "Показывать связанные комплекты экипировки для предметов в сумках (или банке)."

-- Movers
L["Mover Transparency"] = "Прозрачность якорей"
L["Changes the transparency of all the movers."] = "Изменяет прозрачность всех якорей."

-- Automatic Role Assignment
L['Automatic Role Assignment'] = "Автоматическое назначение ролей"
L['Enables the automatic role assignment based on specialization for party / raid members (only work when you are group leader or group assist).'] = "Включает автоматическое назначение ролей на основе специализации для членов группы / рейда (работает только для лидера или помощника)."

-- Auto Hide Role Icons in combat
L['Hide Role Icon in combat'] = "Скрыть иконки ролей в бою"
L['All role icons (Damage/Healer/Tank) on the unit frames are hidden when you go into combat.'] = "Все иконки ролей (Урон/Лекарь/Танк) на фреймах скрываются при вступлении в бой."

-- GPS module
L['GPS'] = "GPS"
L['Show the direction and distance to the selected party or raid member.'] = "Показывает направление и расстояние до выбранного члена группы или рейда."

-- Attack Icon
L['Attack Icon'] = "Иконка атаки"
L['Show attack icon for units that are not tapped by you or your group, but still give kill credit when attacked.'] = "Показывает иконку атаки для целей, не отмеченных вами или группой, но дающих зачёт убийства при атаке."

-- Class Icon
L['Show class icon for units.'] = "Показывать иконку класса для юнитов."

-- Minimap Location
L["MiniMap Coordinates"] = "Координаты мини-карты"
L['Above Minimap'] = "Над мини-картой"
L['Location Digits'] = "Знаки координат"
L['Number of digits for map location.'] = "Количество знаков после запятой для координат."

-- Minimap Combat Hide
L["Hide minimap while in combat."] = "Скрывать мини-карту во время боя."
L["FadeIn Delay"] = "Задержка появления"
L["The time to wait before fading the minimap back in after combat hide. (0 = Disabled)"] = "Время ожидания перед появлением мини-карты после боя. (0 = Отключено)"

-- Minimap Buttons
L["Minimap Button Bar"] = "Панель кнопок мини-карты"
L['Skin Buttons'] = "Оформить кнопки"
L['Skins the minimap buttons in Elv UI style.'] = "Оформляет кнопки мини-карты в стиле ElvUI."
L['Skin Style'] = "Стиль оформления"
L['Change settings for how the minimap buttons are skinned.'] = "Изменить настройки оформления кнопок мини-карты."
L['The size of the minimap buttons.'] = "Размер кнопок мини-карты."

L['No Anchor Bar'] = "Без панели привязки"
L['Horizontal Anchor Bar'] = "Горизонтальная панель"
L['Vertical Anchor Bar'] = "Вертикальная панель"

L['Layout Direction'] = "Направление раскладки"
L['Normal is right to left or top to bottom, or select reversed to switch directions.'] = "Обычное направление — справа налево или сверху вниз. Выберите обратное для смены направления."
L['Normal'] = "Обычное"
L['Reversed'] = "Обратное"

-- PvP Autorelease
L['PvP Autorelease'] = "Автоосвобождение в PvP"
L['Automatically release body when killed inside a battleground.'] = "Автоматически освобождать дух при гибели на поле боя."

-- Track Reputation
L['Track Reputation'] = "Отслеживание репутации"
L['Automatically change your watched faction on the reputation bar to the faction you got reputation points for.'] = "Автоматически переключать отслеживаемую фракцию на ту, за которую вы получили очки репутации."

-- Select Quest Reward
L['Select Quest Reward'] = "Выбор награды за задание"
L['Automatically select the quest reward with the highest vendor sell value.'] = "Автоматически выбирать награду за задание с наибольшей ценой продажи."

-- Item Level Datatext
L['Item Level'] = "Уровень предмета"

-- Range Datatext
L['Target Range'] = "Дальность до цели"
L['Distance'] = "Расстояние"

-- Extra Datatexts
L['Actionbar1DataPanel'] = 'Панель действий 1'
L['Actionbar3DataPanel'] = 'Панель действий 3'
L['Actionbar5DataPanel'] = 'Панель действий 5'

-- Farmer Module
L["Sunsong Ranch"] = "Ферма Солнечной Песни"
L["The Halfhill Market"] = "Рынок Полугорья"
L["Tilled Soil"] = "Возделанная земля"
L['Right-click to drop the item.'] = "Щёлкните правой кнопкой, чтобы выбросить предмет."

L['Farmer'] = "Фермер"
L["FARMER_DESC"] = "Настройте инструменты для более эффективного фермерства на Ферме Солнечной Песни."
L['Farmer Bars'] = "Панели фермера"
L['Farmer Portal Bar'] = "Панель порталов фермера"
L['Farmer Seed Bar'] = "Панель семян фермера"
L['Farmer Tools Bar'] = "Панель инструментов фермера"
L['Enable/Disable the farmer bars.'] = "Включить/Выключить панели фермера."
L['Only active buttons'] = "Только активные кнопки"
L['Only show the buttons for the seeds, portals, tools you have in your bags.'] = "Показывать только кнопки для семян, порталов и инструментов, которые есть в сумках."
L['Drop Tools'] = "Выбросить инструменты"
L['Automatically drop tools from your bags when leaving the farming area.'] = "Автоматически выбрасывать инструменты из сумок при выходе из зоны фермы."
L['Seed Bar Direction'] = "Направление панели семян"
L['The direction of the seed bar buttons (Horizontal or Vertical).'] = "Направление кнопок панели семян (горизонтальное или вертикальное)."

-- Nameplates
L["Threat Text"] = "Текст угрозы"
L["Display threat level as text on targeted, boss or mouseover nameplate."] = "Отображать уровень угрозы текстом на табличке цели, босса или при наведении мыши."
L["Target Count"] = "Счётчик целей"
L["Display the number of party / raid members targetting the nameplate unit."] = "Показывать количество членов группы / рейда, нацеленных на юнит."

-- HealGlow
L['Heal Glow'] = "Свечение исцеления"
L['Direct AoE heals will let the unit frames of the affected party / raid members glow for the defined time period.'] = "Прямое АоЕ исцеление заставит фреймы затронутых членов группы / рейда светиться в течение заданного времени."
L["Glow Duration"] = "Длительность свечения"
L["The amount of time the unit frames of party / raid members will glow when affected by a direct AoE heal."] = "Время свечения фреймов членов группы / рейда при получении прямого АоЕ исцеления."
L["Glow Color"] = "Цвет свечения"

-- Raid Marker Bar
L['Raid Marker Bar'] = "Панель рейдовых меток"
L['Display a quick action bar for raid targets and world markers.'] = "Показывает панель быстрого доступа для рейдовых меток и мировых маркеров."
L['Modifier Key'] = "Клавиша-модификатор"
L['Set the modifier key for placing world markers.'] = "Установить клавишу-модификатор для размещения мировых маркеров."
L['Shift Key'] = "Клавиша Shift"
L['Ctrl Key'] = "Клавиша Ctrl"
L['Alt Key'] = "Клавиша Alt"
L["Raid Markers"] = "Рейдовые метки"
L["Click to clear the mark."] = "Нажмите, чтобы убрать метку."
L["Click to mark the target."] = "Нажмите, чтобы пометить цель."
L["%sClick to remove all worldmarkers."] = "%sНажмите, чтобы убрать все мировые маркеры."
L["%sClick to place a worldmarker."] = "%sНажмите, чтобы разместить мировой маркер."

-- WatchFrame
L['WatchFrame'] = "Отслеживание"
L['WATCHFRAME_DESC'] = "Настройте видимость фрейма отслеживания (журнала заданий) по вашему усмотрению."
L['Hidden'] = "Скрыто"
L['Collapsed'] = "Свёрнуто"
L['Settings'] = "Настройки"
L['City (Resting)'] = "Город (отдых)"
L['PvP'] = "PvP"
L['Arena'] = "Арена"
L['Party'] = "Группа"
L['Raid'] = "Рейд"

-- Tooltips
L['Progression Info'] = "Информация о прогрессе"
L['Display the players raid progression in the tooltip, this may not immediately update when mousing over a unit.'] = "Отображает рейдовый прогресс игрока в подсказке. Информация может обновляться не сразу при наведении на юнит."
