tellraw @s {"text":"Fuel Up[2] Progress:", "bold":true}
#an explicit task list for completion
tellraw @s "The fallowing items remain to be sacrificed:"
execute if score main.2.charcoal wbs.item_drain matches 1.. run tellraw @s ["\u2022",{"score":{"name":"main.2.charcoal","objective":"wbs.item_drain"}},"-charcoal"]
execute if score main.2.coal wbs.item_drain matches 1.. run tellraw @s ["\u2022",{"score":{"name":"main.2.coal","objective":"wbs.item_drain"}},"-coal"]
execute if score main.2.blast_furnace wbs.item_drain matches 1.. run tellraw @s ["\u2022",{"score":{"name":"main.2.blast_furnace","objective":"wbs.item_drain"}},"-blast_furnace"]
