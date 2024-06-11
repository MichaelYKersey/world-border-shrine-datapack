tellraw @s {"text":"Darkened Portal[10] Progress:", "bold":true}
#an explicit task list for completion
tellraw @s "The fallowing items remain to be sacrificed:"
execute if score main.10.netherrack wbs.item_drain matches 1.. run tellraw @s ["\u2022",{"score":{"name":"main.10.netherrack","objective":"wbs.item_drain"}},"-netherrack"]
execute if score main.10.quartz wbs.item_drain matches 1.. run tellraw @s ["\u2022",{"score":{"name":"main.10.quartz","objective":"wbs.item_drain"}},"-quartz"]
execute if score main.10.minecraft:soul_sand wbs.item_drain matches 1.. run tellraw @s ["\u2022",{"score":{"name":"main.10.minecraft:soul_sand","objective":"wbs.item_drain"}},"-minecraft:soul_sand"]
