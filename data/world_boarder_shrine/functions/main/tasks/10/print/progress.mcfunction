tellraw @s {"text":"Darkened Portal[10] Progress:", "bold":true,"color":"#00cc44"}
#an explicit task list for completion
tellraw @s {"text":"The fallowing items remain to be sacrificed:","color":"#00cc44"}
execute if score main.10.netherrack wbs.item_drain matches 1.. run tellraw @s ["\u2022",{"score":{"name":"main.10.netherrack","objective":"wbs.item_drain"},"color":"#00cc44"},{"text":"-netherrack","color":"#00cc44"}]
execute if score main.10.quartz wbs.item_drain matches 1.. run tellraw @s ["\u2022",{"score":{"name":"main.10.quartz","objective":"wbs.item_drain"},"color":"#00cc44"},{"text":"-quartz","color":"#00cc44"}]
execute if score main.10.soul_sand wbs.item_drain matches 1.. run tellraw @s ["\u2022",{"score":{"name":"main.10.soul_sand","objective":"wbs.item_drain"},"color":"#00cc44"},{"text":"-soul sand or soil","color":"#00cc44"}]
