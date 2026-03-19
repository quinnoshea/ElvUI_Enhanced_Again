-- Spanish localization file for esES and esMX.
local L = ElvUI[1].Libs.ACL:NewLocale("ElvUI", "esES")
if not L then return end

-- Init
L["ENH_LOGIN_MSG"] = "Estás usando |cff1784d1ElvUI Enhanced (Yet) Again|r |cffff8000(Retail)|r versión %s%s|r."
L["ENH_LOGIN_MSG_WRATH"] = "Estás usando |cff1784d1ElvUI Enhanced (Yet) Again|r |cffff8000(Wrath Classic)|r versión %s%s|r."
L["MSG_EEL_ELV_OUTDATED"] = "Tu versión de ElvUI es más antigua de lo recomendado para |cff1784d1ElvUI Enhanced (Yet) Again|r. Tu versión es |cff1784d1%.2f|r (recomendada: |cff1784d1%.2f|r). Por favor, actualiza ElvUI."

-- Equipment
L["Equipment"] = "Equipamiento"
L["EQUIPMENT_DESC"] = "Ajusta la configuración para cambiar tu conjunto de equipo al cambiar de especialización o entrar en un campo de batalla."
L["No Change"] = "Sin cambio"

L["Specialization"] = "Especialización"
L["Enable/Disable the specialization switch."] = "Activar/Desactivar el cambio por especialización."

L["Primary Talent"] = "Talento principal"
L["Choose the equipment set to use for your primary specialization."] = "Elige el conjunto de equipo para tu especialización principal."

L["Secondary Talent"] = "Talento secundario"
L["Choose the equipment set to use for your secondary specialization."] = "Elige el conjunto de equipo para tu especialización secundaria."

L["Battleground"] = "Campo de batalla"
L['Enable/Disable the battleground switch.'] = "Activar/Desactivar el cambio en campo de batalla."

L["Equipment Set"] = "Conjunto de equipo"
L["Choose the equipment set to use when you enter a battleground or arena."] = "Elige el conjunto de equipo para cuando entres en un campo de batalla o arena."

L["You have equipped equipment set: "] = "Has equipado el conjunto: "

L["DURABILITY_DESC"] = "Ajusta la configuración de la información de durabilidad en la pantalla del personaje."
L['Enable/Disable the display of durability information on the character screen.'] = "Activar/Desactivar la información de durabilidad en la pantalla del personaje."
L["Damaged Only"] = "Solo dañados"
L["Only show durabitlity information for items that are damaged."] = "Solo mostrar durabilidad para objetos que estén dañados."

L["ITEMLEVEL_DESC"] = "Ajusta la configuración del nivel de objeto en la pantalla del personaje."
L["Enable/Disable the display of item levels on the character screen."] = "Activar/Desactivar la visualización del nivel de objeto en la pantalla del personaje."

L["Miscellaneous"] = "Varios"
L['Equipment Set Overlay'] = "Superposición de conjunto"
L['Show the associated equipment sets for the items in your bags (or bank).'] = "Muestra los conjuntos de equipo asociados a los objetos en tus bolsas (o banco)."

-- Movers
L["Mover Transparency"] = "Transparencia de anclajes"
L["Changes the transparency of all the movers."] = "Cambia la transparencia de todos los anclajes."

-- Automatic Role Assignment
L['Automatic Role Assignment'] = "Asignación automática de rol"
L['Enables the automatic role assignment based on specialization for party / raid members (only work when you are group leader or group assist).'] = "Activa la asignación automática de roles basada en la especialización para miembros del grupo / banda (solo funciona como líder o asistente)."

-- Auto Hide Role Icons in combat
L['Hide Role Icon in combat'] = "Ocultar icono de rol en combate"
L['All role icons (Damage/Healer/Tank) on the unit frames are hidden when you go into combat.'] = "Todos los iconos de rol (Daño/Sanador/Tanque) se ocultan en los marcos de unidad durante el combate."

-- GPS module
L['GPS'] = "GPS"
L['Show the direction and distance to the selected party or raid member.'] = "Muestra la dirección y distancia al miembro del grupo o banda seleccionado."

-- Attack Icon
L['Attack Icon'] = "Icono de ataque"
L['Show attack icon for units that are not tapped by you or your group, but still give kill credit when attacked.'] = "Muestra un icono de ataque en unidades no tocadas por ti o tu grupo, pero que aún otorgan crédito al atacar."

-- Class Icon
L['Show class icon for units.'] = "Muestra el icono de clase para las unidades."

-- Minimap Location
L["MiniMap Coordinates"] = "Coordenadas del minimapa"
L['Above Minimap'] = "Encima del minimapa"
L['Location Digits'] = "Dígitos de ubicación"
L['Number of digits for map location.'] = "Número de dígitos para la ubicación en el mapa."

-- Minimap Combat Hide
L["Hide minimap while in combat."] = "Ocultar el minimapa durante el combate."
L["FadeIn Delay"] = "Retardo de aparición"
L["The time to wait before fading the minimap back in after combat hide. (0 = Disabled)"] = "Tiempo de espera antes de mostrar el minimapa tras el combate. (0 = Desactivado)"

-- Minimap Buttons
L["Minimap Button Bar"] = "Barra de botones del minimapa"
L['Skin Buttons'] = "Personalizar botones"
L['Skins the minimap buttons in Elv UI style.'] = "Personaliza los botones del minimapa con el estilo de ElvUI."
L['Skin Style'] = "Estilo de personalización"
L['Change settings for how the minimap buttons are skinned.'] = "Cambia la configuración del aspecto de los botones del minimapa."
L['The size of the minimap buttons.'] = "El tamaño de los botones del minimapa."

L['No Anchor Bar'] = "Sin barra de anclaje"
L['Horizontal Anchor Bar'] = "Barra de anclaje horizontal"
L['Vertical Anchor Bar'] = "Barra de anclaje vertical"

L['Layout Direction'] = "Dirección de disposición"
L['Normal is right to left or top to bottom, or select reversed to switch directions.'] = "Normal es de derecha a izquierda o de arriba a abajo, selecciona invertido para cambiar la dirección."
L['Normal'] = "Normal"
L['Reversed'] = "Invertido"

-- PvP Autorelease
L['PvP Autorelease'] = "Liberación automática en JcJ"
L['Automatically release body when killed inside a battleground.'] = "Liberar automáticamente el cuerpo al morir en un campo de batalla."

-- Track Reputation
L['Track Reputation'] = "Seguir reputación"
L['Automatically change your watched faction on the reputation bar to the faction you got reputation points for.'] = "Cambia automáticamente la facción observada en la barra de reputación a la facción con la que acabas de ganar puntos."

-- Select Quest Reward
L['Select Quest Reward'] = "Seleccionar recompensa de misión"
L['Automatically select the quest reward with the highest vendor sell value.'] = "Selecciona automáticamente la recompensa de misión con el mayor valor de venta."

-- Item Level Datatext
L['Item Level'] = "Nivel de objeto"

-- Range Datatext
L['Target Range'] = "Alcance del objetivo"
L['Distance'] = "Distancia"

-- Extra Datatexts
L['Actionbar1DataPanel'] = 'Barra de acción 1'
L['Actionbar3DataPanel'] = 'Barra de acción 3'
L['Actionbar5DataPanel'] = 'Barra de acción 5'

-- Farmer Module
L["Sunsong Ranch"] = "Rancho Cantosol"
L["The Halfhill Market"] = "El Mercado del Alcor"
L["Tilled Soil"] = "Tierra labrada"
L['Right-click to drop the item.'] = "Clic derecho para soltar el objeto."

L['Farmer'] = "Granjero"
L["FARMER_DESC"] = "Ajusta la configuración de las herramientas que te ayudan a cultivar más eficientemente en el Rancho Cantosol."
L['Farmer Bars'] = "Barras de granja"
L['Farmer Portal Bar'] = "Barra de portales de granja"
L['Farmer Seed Bar'] = "Barra de semillas de granja"
L['Farmer Tools Bar'] = "Barra de herramientas de granja"
L['Enable/Disable the farmer bars.'] = "Activar/Desactivar las barras de granja."
L['Only active buttons'] = "Solo botones activos"
L['Only show the buttons for the seeds, portals, tools you have in your bags.'] = "Solo mostrar botones para semillas, portales y herramientas que tengas en tus bolsas."
L['Drop Tools'] = "Soltar herramientas"
L['Automatically drop tools from your bags when leaving the farming area.'] = "Soltar automáticamente las herramientas al salir de la zona de cultivo."
L['Seed Bar Direction'] = "Dirección de la barra de semillas"
L['The direction of the seed bar buttons (Horizontal or Vertical).'] = "La dirección de los botones de la barra de semillas (Horizontal o Vertical)."

-- Nameplates
L["Threat Text"] = "Texto de amenaza"
L["Display threat level as text on targeted, boss or mouseover nameplate."] = "Muestra el nivel de amenaza como texto en la placa del objetivo, jefe o al pasar el ratón."
L["Target Count"] = "Contador de objetivos"
L["Display the number of party / raid members targetting the nameplate unit."] = "Muestra el número de miembros del grupo / banda que tienen como objetivo a la unidad."

-- HealGlow
L['Heal Glow'] = "Brillo de sanación"
L['Direct AoE heals will let the unit frames of the affected party / raid members glow for the defined time period.'] = "Las sanaciones de área directas harán brillar los marcos de los miembros del grupo / banda afectados durante el tiempo definido."
L["Glow Duration"] = "Duración del brillo"
L["The amount of time the unit frames of party / raid members will glow when affected by a direct AoE heal."] = "El tiempo que brillarán los marcos de unidad del grupo / banda al recibir una sanación de área directa."
L["Glow Color"] = "Color del brillo"

-- Raid Marker Bar
L['Raid Marker Bar'] = "Barra de marcadores de banda"
L['Display a quick action bar for raid targets and world markers.'] = "Muestra una barra de acción rápida para marcadores de objetivo y de mundo."
L['Modifier Key'] = "Tecla modificadora"
L['Set the modifier key for placing world markers.'] = "Establece la tecla modificadora para colocar marcadores de mundo."
L['Shift Key'] = "Tecla Mayús"
L['Ctrl Key'] = "Tecla Ctrl"
L['Alt Key'] = "Tecla Alt"
L["Raid Markers"] = "Marcadores de banda"
L["Click to clear the mark."] = "Clic para borrar el marcador."
L["Click to mark the target."] = "Clic para marcar el objetivo."
L["%sClick to remove all worldmarkers."] = "%sClic para eliminar todos los marcadores de mundo."
L["%sClick to place a worldmarker."] = "%sClic para colocar un marcador de mundo."

-- WatchFrame
L['WatchFrame'] = "Seguimiento de objetivos"
L['WATCHFRAME_DESC'] = "Ajusta la configuración de visibilidad del marco de seguimiento (registro de misiones) a tu preferencia."
L['Hidden'] = "Oculto"
L['Collapsed'] = "Contraído"
L['Settings'] = "Configuración"
L['City (Resting)'] = "Ciudad (descansando)"
L['PvP'] = "JcJ"
L['Arena'] = "Arena"
L['Party'] = "Grupo"
L['Raid'] = "Banda"

-- Tooltips
L['Progression Info'] = "Información de progreso"
L['Display the players raid progression in the tooltip, this may not immediately update when mousing over a unit.'] = "Muestra el progreso de banda del jugador en la descripción emergente, puede no actualizarse inmediatamente al pasar el ratón sobre una unidad."
