tellraw @s {"text":"Side Archive Info (Complete):", "bold":true,"color":"#00cc44"}
tellraw @s {"text":"to access the archive run \"/trigger wbs.side_archive.[section] set [id]\". If a section is not available run the refresh trigger option in the main menu and try again. Below are the complete side tasks.","color":"#00cc44"}
execute store result storage minecraft:world_border_shrine param.item int 1 run scoreboard players get -1 wbs.side.complete.next
function world_border_shrine:side/list/complete/print with storage minecraft:world_border_shrine param