#return if no previous pointer
execute unless score $(item) wbs.side.complete.previous matches -1.. run return fail
#spit error (return) if id is -1 or null
$scoreboard players set temp0 wbs.reg $(item)
execute unless score temp0 wbs.reg matches 0.. run return fail

$execute store result storage minecraft:world_boarder_shrine param.front int 1 run scoreboard players get $(item) wbs.side.complete.previous
$execute store result storage minecraft:world_boarder_shrine param.back int 1 run scoreboard players get $(item) wbs.side.complete.next
#clear node pointer
$scoreboard players reset $(item) wbs.side.complete.next
$scoreboard players reset $(item) wbs.side.complete.previous