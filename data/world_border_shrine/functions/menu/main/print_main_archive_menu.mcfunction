tellraw @s {"text":"Main Archive Info:", "bold":true,"color":"#00cc44"}
tellraw @s {"text":"to access the archive run \"/trigger wbs.main_archive.[section] set [id]\". If a section is not available run the refresh trigger option in the main menu and try again. Ids for each main task are listed below","color":"#00cc44"}
execute if score main_last_queued wbs.vars matches ..-1 run return 1
tellraw @s {"text":"[0] Wake Up","color":"#00cc44"}
execute if score main_last_queued wbs.vars matches ..0 run return 1
tellraw @s {"text":"[1] Better Crafting","color":"#00cc44"}
execute if score main_last_queued wbs.vars matches ..1 run return 1
tellraw @s {"text":"[2] Fuel Up","color":"#00cc44"}
execute if score main_last_queued wbs.vars matches ..2 run return 1
tellraw @s {"text":"[3] Green Fist","color":"#00cc44"}
execute if score main_last_queued wbs.vars matches ..3 run return 1
tellraw @s {"text":"[4] IRONing Out Issues","color":"#00cc44"}
execute if score main_last_queued wbs.vars matches ..4 run return 1
tellraw @s {"text":"[5] Any longer in the rain and we'll need some rice","color":"#00cc44"}
execute if score main_last_queued wbs.vars matches ..5 run return 1
tellraw @s {"text":"[6] /weather","color":"#00cc44"}
execute if score main_last_queued wbs.vars matches ..6 run return 1
tellraw @s {"text":"[7] Meeting Place","color":"#00cc44"}
execute if score main_last_queued wbs.vars matches ..7 run return 1
tellraw @s {"text":"[8] Drone Connection","color":"#00cc44"}
execute if score main_last_queued wbs.vars matches ..8 run return 1
tellraw @s {"text":"[9] Dark Magic","color":"#00cc44"}
execute if score main_last_queued wbs.vars matches ..9 run return 1
tellraw @s {"text":"[10] Darkened Portal","color":"#00cc44"}
execute if score main_last_queued wbs.vars matches ..10 run return 1
tellraw @s {"text":"[11] Hell of an Upgrade","color":"#00cc44"}
execute if score main_last_queued wbs.vars matches ..11 run return 1
tellraw @s {"text":"[12] Google Maps For Real","color":"#00cc44"}
execute if score main_last_queued wbs.vars matches ..12 run return 1
tellraw @s {"text":"[13] Need Better Samples","color":"#00cc44"}
