execute store result storage world_boarder_shrine tempInt int 1 run scoreboard players get temp0 wbs.reg
data modify entity @s Item.count set from storage minecraft:world_boarder_shrine tempInt
$scoreboard players set $(channel) wbs.item_drain 0