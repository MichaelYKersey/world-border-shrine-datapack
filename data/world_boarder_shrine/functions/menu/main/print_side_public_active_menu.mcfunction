tellraw @s {"text":"Side Archive Info (Public Active):", "bold":true}
tellraw @s {"text":"to access the archive run \"/trigger wbs.side_archive.[section] set [id]\". If a section is not available run the refresh trigger option in the main menu and try again. Below are the public active side tasks."}
execute store result storage minecraft:world_boarder_shrine param.item int 1 run scoreboard players get -1 wbs.side.public.next
function world_boarder_shrine:side/list/public/print with storage minecraft:world_boarder_shrine.param