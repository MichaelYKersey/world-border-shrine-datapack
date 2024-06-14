tellraw @s {"text":"Fuel Up[2] Progress:", "bold":true,"color":"#00cc44"}
#an explicit task list for completion
tellraw @s {"text":"The fallowing items remain to be sacrificed:","color":"#00cc44"}
execute if score main.2.charcoal wbs.item_drain matches 1.. run tellraw @s ["\u2022",{"score":{"name":"main.2.charcoal","objective":"wbs.item_drain"},"color":"#00cc44"},{"text":"-charcoal","color":"#00cc44"}]
execute if score main.2.coal wbs.item_drain matches 1.. run tellraw @s ["\u2022",{"score":{"name":"main.2.coal","objective":"wbs.item_drain"},"color":"#00cc44"},{"text":"-coal","color":"#00cc44"}]
execute if score main.2.blast_furnace wbs.item_drain matches 1.. run tellraw @s ["\u2022",{"score":{"name":"main.2.blast_furnace","objective":"wbs.item_drain"},"color":"#00cc44"},{"text":"-blast_furnace","color":"#00cc44"}]
