-- French localization file for frFR.
local L = ElvUI[1].Libs.ACL:NewLocale("ElvUI", "frFR")
if not L then return; end

-- Translation by: Alex586, Deadse10

-- Init
L["ENH_LOGIN_MSG"] = "Vous utilisez |cff1784d1ElvUI Enhanced (Yet) Again|r |cffff8000(Retail)|r version %s%s|r."
L["ENH_LOGIN_MSG_WRATH"] = "Vous utilisez |cff1784d1ElvUI Enhanced (Yet) Again|r |cffff8000(Wrath Classic)|r version %s%s|r."
L["MSG_EEL_ELV_OUTDATED"] = "Votre version d'ElvUI est plus ancienne que celle recommandée pour |cff1784d1ElvUI Enhanced (Yet) Again|r. Votre version est |cff1784d1%.2f|r (recommandée : |cff1784d1%.2f|r). Veuillez mettre à jour ElvUI."

-- Equipment
L["Equipment"] = "Équipement"
L["EQUIPMENT_DESC"] = "Ajustez les réglages pour passer d'un équipement à l'autre lorsque vous changez de spécialisation ou lorsque vous effectuez un Champ de Bataille."
L["No Change"] = "Ne pas changer"

L["Specialization"] = "Spécialisation"
L["Enable/Disable the specialization switch."] = "Activer / Désactiver la fonction du changement d'équipement lorsque vous changez de spécialisation."

L["Primary Talent"] = "Spécialisation principale"
L["Choose the equipment set to use for your primary specialization."] = "Choisissez le set d'équipement à utiliser pour votre spécialisation principale."

L["Secondary Talent"] = "Spécialisation secondaire"
L["Choose the equipment set to use for your secondary specialization."] = "Choisissez le set d'équipement à utiliser pour votre spécialisation secondaire."

L["Battleground"] = "Champ de Bataille"
L['Enable/Disable the battleground switch.'] = "Activer / Désactiver la fonction du changement d'équipement lorsque vous entrez dans un Champ de Bataille ou une Arène."

L["Equipment Set"] = "Set d'équipement"
L["Choose the equipment set to use when you enter a battleground or arena."] = "Choisissez le set d'équipement à utiliser quand vous entrez dans un Champ de Bataille ou une Arène."

L["You have equipped equipment set: "] = "Vous avez équipé le set d'équipement : "

L["DURABILITY_DESC"] = "Ajustez les réglages pour afficher la durabilité sur l'écran d'infos de personnage."
L['Enable/Disable the display of durability information on the character screen.'] = "Activer / Désactiver l'affichage des informations de durabilité sur l'écran d'infos de personnage."
L["Damaged Only"] = "Endommagés seulement"
L["Only show durabitlity information for items that are damaged."] = "Afficher la durabilité seulement quand l'équipement est endommagé."

L["ITEMLEVEL_DESC"] = "Réglez les paramètres pour afficher le niveau d'objet sur l'écran d'infos de personnage."
L["Enable/Disable the display of item levels on the character screen."] = "Activer / Désactiver l'affichage des informations du niveau d'objet sur l'écran d'infos de personnage."

L["Miscellaneous"] = "Divers"
L['Equipment Set Overlay'] = "Nom du set d'équipement"
L['Show the associated equipment sets for the items in your bags (or bank).'] = "Affiche le nom associé au set d'équipement sur vos objets dans vos sacs et votre banque."

-- Movers
L["Mover Transparency"] = "Transparence des Ancres"
L["Changes the transparency of all the movers."] = "Change la transparence des Ancres."

-- Automatic Role Assignment
L['Automatic Role Assignment'] = "Assigner automatiquement le rôle"
L['Enables the automatic role assignment based on specialization for party / raid members (only work when you are group leader or group assist).'] = "Active l'assignation automatique des rôles des membres selon la spécialisation dans le Groupe / Raid (fonctionne seulement quand vous êtes le leader ou que vous possédez une assistance)."

-- Auto Hide Role Icons in combat
L['Hide Role Icon in combat'] = "Cacher les icônes de rôle en combat"
L['All role icons (Damage/Healer/Tank) on the unit frames are hidden when you go into combat.'] = "Cache toutes les icônes de rôle (Dégâts/Soigneur/Tank) sur les cadres d'unité quand vous êtes en combat."

-- GPS module
L['GPS'] = "GPS"
L['Show the direction and distance to the selected party or raid member.'] = "Affiche la direction et la distance entre vous et la cible du groupe ou du raid."

-- Attack Icon
L['Attack Icon'] = "Icône d'Attaque"
L['Show attack icon for units that are not tapped by you or your group, but still give kill credit when attacked.'] = "Affiche une icône d'attaque sur les unités que vous ou votre groupe n'avez pas encore touchées, mais dont vous pouvez revendiquer l'élimination."

-- Class Icon
L['Show class icon for units.'] = "Affiche l'icône de classe pour les unités."

-- Minimap Location
L["MiniMap Coordinates"] = "Coordonnées de la minicarte"
L['Above Minimap'] = "Au-dessus de la minicarte"
L['Location Digits'] = "Chiffres de position"
L['Number of digits for map location.'] = "Nombre de chiffres pour la position."

-- Minimap Combat Hide
L["Hide minimap while in combat."] = "Cacher la minicarte quand vous êtes en combat."
L["FadeIn Delay"] = "Délai d'estompage"
L["The time to wait before fading the minimap back in after combat hide. (0 = Disabled)"] = "Le temps à attendre avant que la minicarte réapparaisse après le combat. (0 = désactivé)"

-- Minimap Buttons
L["Minimap Button Bar"] = "Barre de boutons de la minicarte"
L['Skin Buttons'] = "Habiller les boutons"
L['Skins the minimap buttons in Elv UI style.'] = "Habillez les boutons de la minicarte avec le style ElvUI."
L['Skin Style'] = "Style d'habillage"
L['Change settings for how the minimap buttons are skinned.'] = "Change les réglages pour l'habillage des boutons."
L['The size of the minimap buttons.'] = "Taille des boutons de la minicarte."

L['No Anchor Bar'] = "Pas de barre d'ancrage"
L['Horizontal Anchor Bar'] = "Barre d'ancrage horizontale"
L['Vertical Anchor Bar'] = "Barre d'ancrage verticale"

L['Layout Direction'] = "Direction de disposition"
L['Normal is right to left or top to bottom, or select reversed to switch directions.'] = "Normal est de droite à gauche ou de haut en bas, ou sélectionnez inversé pour changer de direction."
L['Normal'] = "Normal"
L['Reversed'] = "Inversé"

-- PvP Autorelease
L['PvP Autorelease'] = "Libération automatique en PvP"
L['Automatically release body when killed inside a battleground.'] = "Libère automatiquement votre corps quand vous êtes tué en Champ de Bataille."

-- Track Reputation
L['Track Reputation'] = "Suivre la Réputation"
L['Automatically change your watched faction on the reputation bar to the faction you got reputation points for.'] = "Change automatiquement la réputation suivie sur la barre de réputation avec la faction pour laquelle vous venez de gagner des points."

-- Select Quest Reward
L['Select Quest Reward'] = "Sélection de la récompense de quête"
L['Automatically select the quest reward with the highest vendor sell value.'] = "Sélectionne automatiquement la récompense de quête ayant la plus haute valeur de revente chez le marchand."

-- Item Level Datatext
L['Item Level'] = "Niveau d'objet"

-- Range Datatext
L['Target Range'] = "Portée de la cible"
L['Distance'] = "Distance"

-- Extra Datatexts
L['Actionbar1DataPanel'] = "Barre d'actions 1"
L['Actionbar3DataPanel'] = "Barre d'actions 3"
L['Actionbar5DataPanel'] = "Barre d'actions 5"

-- Farmer Module
L["Sunsong Ranch"] = "Ferme Chant du Soleil"
L["The Halfhill Market"] = "Marché de Micolline"
L["Tilled Soil"] = "Terre labourée"
L['Right-click to drop the item.'] = "Clic droit pour lâcher l'objet."

L['Farmer'] = "Ferme"
L["FARMER_DESC"] = "Réglez les paramètres des outils qui vous aideront à pratiquer une agriculture plus efficace avec votre Ferme (Ferme Chant du Soleil)."
L['Farmer Bars'] = "Barre d'agriculture"
L['Farmer Portal Bar'] = "Barre des portails"
L['Farmer Seed Bar'] = "Barre des graines"
L['Farmer Tools Bar'] = "Barre des outils"
L['Enable/Disable the farmer bars.'] = "Activer / Désactiver la barre d'agriculture."
L['Only active buttons'] = "Seulement les boutons actifs"
L['Only show the buttons for the seeds, portals, tools you have in your bags.'] = "Affiche seulement les boutons pour les graines, portails et outils que vous avez dans vos sacs."
L['Drop Tools'] = "Jeter les outils"
L['Automatically drop tools from your bags when leaving the farming area.'] = "Jeter automatiquement les outils de votre sac après avoir quitté la ferme."
L['Seed Bar Direction'] = "Direction de la barre des graines"
L['The direction of the seed bar buttons (Horizontal or Vertical).'] = "Sélectionnez la direction de la barre de graines (Horizontal ou Vertical)."

-- Nameplates
L["Threat Text"] = "Texte de menace"
L["Display threat level as text on targeted, boss or mouseover nameplate."] = "Affiche le niveau de menace sur la plaque de la cible, du boss, ou au survol de la souris."
L["Target Count"] = "Nombre de ciblages"
L["Display the number of party / raid members targetting the nameplate unit."] = "Affiche le nombre de membres du groupe / raid ciblant cette unité."

-- HealGlow
L['Heal Glow'] = "Lueur de soin"
L['Direct AoE heals will let the unit frames of the affected party / raid members glow for the defined time period.'] = "Les soins de zone directs feront briller les cadres d'unité des membres du groupe / raid affectés pendant la durée définie."
L["Glow Duration"] = "Durée de la lueur"
L["The amount of time the unit frames of party / raid members will glow when affected by a direct AoE heal."] = "La durée pendant laquelle les cadres d'unité du groupe / raid brilleront suite à un soin de zone direct."
L["Glow Color"] = "Couleur de la lueur"

-- Raid Marker Bar
L['Raid Marker Bar'] = "Barre de marquage de raid"
L['Display a quick action bar for raid targets and world markers.'] = "Affiche une barre d'action pour les icônes de cible et les marqueurs de terrain."
L['Modifier Key'] = "Touche de modification"
L['Set the modifier key for placing world markers.'] = "Configurez la touche de modification pour placer des marqueurs de terrain."
L['Shift Key'] = "Touche MAJ"
L['Ctrl Key'] = "Touche CTRL"
L['Alt Key'] = "Touche ALT"
L["Raid Markers"] = "Marqueurs de raid"
L["Click to clear the mark."] = "Cliquez pour supprimer le marqueur."
L["Click to mark the target."] = "Cliquez pour marquer la cible."
L["%sClick to remove all worldmarkers."] = "%sClic pour supprimer tous les marqueurs de terrain."
L["%sClick to place a worldmarker."] = "%sClic pour placer un marqueur de terrain."

-- WatchFrame
L['WatchFrame'] = "Fenêtre d'objectifs"
L['WATCHFRAME_DESC'] = "Réglez les paramètres pour la visibilité de la fenêtre d'objectifs (journal de quête) selon vos préférences."
L['Hidden'] = "Caché"
L['Collapsed'] = "Replié"
L['Settings'] = "Paramètres"
L['City (Resting)'] = "Ville (repos)"
L['PvP'] = "PvP"
L['Arena'] = "Arène"
L['Party'] = "Groupe"
L['Raid'] = "Raid"

-- Tooltips
L['Progression Info'] = "Information de progression"
L['Display the players raid progression in the tooltip, this may not immediately update when mousing over a unit.'] = "Affiche la progression de raid du joueur dans l'infobulle (ne se met pas forcément à jour immédiatement au survol d'une unité)."
