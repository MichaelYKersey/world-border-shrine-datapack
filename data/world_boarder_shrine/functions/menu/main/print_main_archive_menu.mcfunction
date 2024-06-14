tellraw @s {"text":"Main Archive Info:", "bold":true}
tellraw @s {"text":"it access the archive run \"/trigger wbs.main_archive.[section] set [id]\". If a section is not available run the refresh trigger option in the main menu and try again. Ids for each main task are listed below"}
execute if score main_last_queued wbs.vars matches ..-1 run return 1
tellraw @s "[0] Wake Up"
execute if score main_last_queued wbs.vars matches ..0 run return 1
tellraw @s "[1] Better Crafting"
execute if score main_last_queued wbs.vars matches ..1 run return 1
tellraw @s "[2] Fuel Up"
execute if score main_last_queued wbs.vars matches ..2 run return 1
tellraw @s "[3] Green Fist"
execute if score main_last_queued wbs.vars matches ..3 run return 1
tellraw @s "[4] IRONing Out Issues"
execute if score main_last_queued wbs.vars matches ..4 run return 1
tellraw @s "[5] Any longer in the rain and we'll need some rice"
execute if score main_last_queued wbs.vars matches ..5 run return 1
tellraw @s "[6] /weather"
execute if score main_last_queued wbs.vars matches ..6 run return 1
tellraw @s "[7] Meeting Place"
execute if score main_last_queued wbs.vars matches ..7 run return 1
tellraw @s "[8] Drone Connection"
execute if score main_last_queued wbs.vars matches ..8 run return 1
tellraw @s "[9] Dark Magic"
execute if score main_last_queued wbs.vars matches ..9 run return 1
tellraw @s "[10] Darkened Portal"
execute if score main_last_queued wbs.vars matches ..10 run return 1
tellraw @s "[11] Hell of an Upgrade"
execute if score main_last_queued wbs.vars matches ..11 run return 1
tellraw @s "[12] Google maps for real"
