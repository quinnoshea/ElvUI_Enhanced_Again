-- Italian localisation file for itIT
local L = ElvUI[1].Libs.ACL:NewLocale("ElvUI", "itIT")
if not L then return end

-- Init
L["ENH_LOGIN_MSG"] = "Stai usando |cff1784d1ElvUI Enhanced (Yet) Again|r |cffff8000(Retail)|r versione %s%s|r."
L["ENH_LOGIN_MSG_WRATH"] = "Stai usando |cff1784d1ElvUI Enhanced (Yet) Again|r |cffff8000(Wrath Classic)|r versione %s%s|r."
L["MSG_EEL_ELV_OUTDATED"] = "La tua versione di ElvUI è più vecchia di quella raccomandata per |cff1784d1ElvUI Enhanced (Yet) Again|r. La tua versione è |cff1784d1%.2f|r (raccomandata: |cff1784d1%.2f|r). Per favore aggiorna ElvUI."

-- Equipment
L["Equipment"] = "Equipaggiamento"
L["EQUIPMENT_DESC"] = "Regola le impostazioni per il cambio del set di equipaggiamento quando cambi specializzazione o entri in un campo di battaglia."
L["No Change"] = "Nessun cambio"

L["Specialization"] = "Specializzazione"
L["Enable/Disable the specialization switch."] = "Attiva/Disattiva il cambio per specializzazione."

L["Primary Talent"] = "Talento primario"
L["Choose the equipment set to use for your primary specialization."] = "Scegli il set di equipaggiamento per la tua specializzazione primaria."

L["Secondary Talent"] = "Talento secondario"
L["Choose the equipment set to use for your secondary specialization."] = "Scegli il set di equipaggiamento per la tua specializzazione secondaria."

L["Battleground"] = "Campo di battaglia"
L['Enable/Disable the battleground switch.'] = "Attiva/Disattiva il cambio in campo di battaglia."

L["Equipment Set"] = "Set di equipaggiamento"
L["Choose the equipment set to use when you enter a battleground or arena."] = "Scegli il set di equipaggiamento quando entri in un campo di battaglia o arena."

L["You have equipped equipment set: "] = "Hai equipaggiato il set: "

L["DURABILITY_DESC"] = "Regola le impostazioni per le informazioni sulla durabilità nella schermata del personaggio."
L['Enable/Disable the display of durability information on the character screen.'] = "Attiva/Disattiva la visualizzazione della durabilità nella schermata del personaggio."
L["Damaged Only"] = "Solo danneggiati"
L["Only show durabitlity information for items that are damaged."] = "Mostra la durabilità solo per gli oggetti danneggiati."

L["ITEMLEVEL_DESC"] = "Regola le impostazioni per il livello oggetto nella schermata del personaggio."
L["Enable/Disable the display of item levels on the character screen."] = "Attiva/Disattiva la visualizzazione del livello oggetto nella schermata del personaggio."

L["Miscellaneous"] = "Varie"
L['Equipment Set Overlay'] = "Sovrapposizione set"
L['Show the associated equipment sets for the items in your bags (or bank).'] = "Mostra i set di equipaggiamento associati agli oggetti nelle borse (o banca)."

-- Movers
L["Mover Transparency"] = "Trasparenza ancoraggi"
L["Changes the transparency of all the movers."] = "Cambia la trasparenza di tutti gli ancoraggi."

-- Automatic Role Assignment
L['Automatic Role Assignment'] = "Assegnazione automatica del ruolo"
L['Enables the automatic role assignment based on specialization for party / raid members (only work when you are group leader or group assist).'] = "Attiva l'assegnazione automatica dei ruoli basata sulla specializzazione per i membri del gruppo / incursione (funziona solo come leader o assistente)."

-- Auto Hide Role Icons in combat
L['Hide Role Icon in combat'] = "Nascondi icona ruolo in combattimento"
L['All role icons (Damage/Healer/Tank) on the unit frames are hidden when you go into combat.'] = "Tutte le icone dei ruoli (Danno/Guaritore/Difensore) sui riquadri unità vengono nascoste durante il combattimento."

-- GPS module
L['GPS'] = "GPS"
L['Show the direction and distance to the selected party or raid member.'] = "Mostra la direzione e la distanza dal membro del gruppo o incursione selezionato."

-- Attack Icon
L['Attack Icon'] = "Icona di attacco"
L['Show attack icon for units that are not tapped by you or your group, but still give kill credit when attacked.'] = "Mostra un'icona di attacco sulle unità non toccate da te o dal tuo gruppo, ma che danno credito all'uccisione."

-- Class Icon
L['Show class icon for units.'] = "Mostra l'icona della classe per le unità."

-- Minimap Location
L["MiniMap Coordinates"] = "Coordinate minimappa"
L['Above Minimap'] = "Sopra la minimappa"
L['Location Digits'] = "Cifre posizione"
L['Number of digits for map location.'] = "Numero di cifre per la posizione sulla mappa."

-- Minimap Combat Hide
L["Hide minimap while in combat."] = "Nascondi la minimappa durante il combattimento."
L["FadeIn Delay"] = "Ritardo di comparsa"
L["The time to wait before fading the minimap back in after combat hide. (0 = Disabled)"] = "Tempo di attesa prima di far riapparire la minimappa dopo il combattimento. (0 = Disattivato)"

-- Minimap Buttons
L["Minimap Button Bar"] = "Barra pulsanti minimappa"
L['Skin Buttons'] = "Personalizza pulsanti"
L['Skins the minimap buttons in Elv UI style.'] = "Personalizza i pulsanti della minimappa nello stile di ElvUI."
L['Skin Style'] = "Stile personalizzazione"
L['Change settings for how the minimap buttons are skinned.'] = "Cambia le impostazioni dell'aspetto dei pulsanti della minimappa."
L['The size of the minimap buttons.'] = "La dimensione dei pulsanti della minimappa."

L['No Anchor Bar'] = "Nessuna barra di ancoraggio"
L['Horizontal Anchor Bar'] = "Barra di ancoraggio orizzontale"
L['Vertical Anchor Bar'] = "Barra di ancoraggio verticale"

L['Layout Direction'] = "Direzione del layout"
L['Normal is right to left or top to bottom, or select reversed to switch directions.'] = "Normale è da destra a sinistra o dall'alto in basso, seleziona invertito per cambiare direzione."
L['Normal'] = "Normale"
L['Reversed'] = "Invertito"

-- PvP Autorelease
L['PvP Autorelease'] = "Rilascio automatico in PvP"
L['Automatically release body when killed inside a battleground.'] = "Rilascia automaticamente il corpo quando ucciso in un campo di battaglia."

-- Track Reputation
L['Track Reputation'] = "Traccia reputazione"
L['Automatically change your watched faction on the reputation bar to the faction you got reputation points for.'] = "Cambia automaticamente la fazione osservata nella barra della reputazione con quella per cui hai appena guadagnato punti."

-- Select Quest Reward
L['Select Quest Reward'] = "Seleziona ricompensa missione"
L['Automatically select the quest reward with the highest vendor sell value.'] = "Seleziona automaticamente la ricompensa della missione con il valore di vendita più alto."

-- Item Level Datatext
L['Item Level'] = "Livello oggetto"

-- Range Datatext
L['Target Range'] = "Portata del bersaglio"
L['Distance'] = "Distanza"

-- Extra Datatexts
L['Actionbar1DataPanel'] = 'Barra azioni 1'
L['Actionbar3DataPanel'] = 'Barra azioni 3'
L['Actionbar5DataPanel'] = 'Barra azioni 5'

-- Farmer Module
L["Sunsong Ranch"] = "Tenuta Cantasole"
L["The Halfhill Market"] = "Mercato di Mezzocolle"
L["Tilled Soil"] = "Terreno Coltivato"
L['Right-click to drop the item.'] = "Clic destro per rilasciare l'oggetto."

L['Farmer'] = "Contadino"
L["FARMER_DESC"] = "Regola le impostazioni degli strumenti che ti aiutano a coltivare più efficientemente alla Tenuta Cantasole."
L['Farmer Bars'] = "Barre contadino"
L['Farmer Portal Bar'] = "Barra portali contadino"
L['Farmer Seed Bar'] = "Barra semi contadino"
L['Farmer Tools Bar'] = "Barra strumenti contadino"
L['Enable/Disable the farmer bars.'] = "Attiva/Disattiva le barre contadino."
L['Only active buttons'] = "Solo pulsanti attivi"
L['Only show the buttons for the seeds, portals, tools you have in your bags.'] = "Mostra solo i pulsanti per semi, portali e strumenti presenti nelle borse."
L['Drop Tools'] = "Rilascia strumenti"
L['Automatically drop tools from your bags when leaving the farming area.'] = "Rilascia automaticamente gli strumenti dalle borse quando esci dalla zona di coltivazione."
L['Seed Bar Direction'] = "Direzione barra semi"
L['The direction of the seed bar buttons (Horizontal or Vertical).'] = "La direzione dei pulsanti della barra semi (Orizzontale o Verticale)."

-- Nameplates
L["Threat Text"] = "Testo minaccia"
L["Display threat level as text on targeted, boss or mouseover nameplate."] = "Mostra il livello di minaccia come testo sulla targa del bersaglio, boss o al passaggio del mouse."
L["Target Count"] = "Conteggio bersagli"
L["Display the number of party / raid members targetting the nameplate unit."] = "Mostra il numero di membri del gruppo / incursione che hanno come bersaglio l'unità."

-- HealGlow
L['Heal Glow'] = "Bagliore di cura"
L['Direct AoE heals will let the unit frames of the affected party / raid members glow for the defined time period.'] = "Le cure ad area dirette faranno brillare i riquadri dei membri del gruppo / incursione colpiti per il tempo definito."
L["Glow Duration"] = "Durata del bagliore"
L["The amount of time the unit frames of party / raid members will glow when affected by a direct AoE heal."] = "Il tempo durante il quale i riquadri unità del gruppo / incursione brilleranno dopo una cura ad area diretta."
L["Glow Color"] = "Colore del bagliore"

-- Raid Marker Bar
L['Raid Marker Bar'] = "Barra marcatori di incursione"
L['Display a quick action bar for raid targets and world markers.'] = "Mostra una barra di azione rapida per i marcatori di bersaglio e di mondo."
L['Modifier Key'] = "Tasto modificatore"
L['Set the modifier key for placing world markers.'] = "Imposta il tasto modificatore per posizionare i marcatori di mondo."
L['Shift Key'] = "Tasto Maiusc"
L['Ctrl Key'] = "Tasto Ctrl"
L['Alt Key'] = "Tasto Alt"
L["Raid Markers"] = "Marcatori di incursione"
L["Click to clear the mark."] = "Clicca per rimuovere il marcatore."
L["Click to mark the target."] = "Clicca per marcare il bersaglio."
L["%sClick to remove all worldmarkers."] = "%sClic per rimuovere tutti i marcatori di mondo."
L["%sClick to place a worldmarker."] = "%sClic per posizionare un marcatore di mondo."

-- WatchFrame
L['WatchFrame'] = "Tracciamento obiettivi"
L['WATCHFRAME_DESC'] = "Regola le impostazioni di visibilità del riquadro di tracciamento (registro missioni) secondo le tue preferenze."
L['Hidden'] = "Nascosto"
L['Collapsed'] = "Compresso"
L['Settings'] = "Impostazioni"
L['City (Resting)'] = "Città (riposo)"
L['PvP'] = "PvP"
L['Arena'] = "Arena"
L['Party'] = "Gruppo"
L['Raid'] = "Incursione"

-- Tooltips
L['Progression Info'] = "Informazioni di progressione"
L['Display the players raid progression in the tooltip, this may not immediately update when mousing over a unit.'] = "Mostra la progressione nelle incursioni del giocatore nel suggerimento, potrebbe non aggiornarsi immediatamente al passaggio del mouse su un'unità."
