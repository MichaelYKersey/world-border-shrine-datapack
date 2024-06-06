#an explicit task list for completion
tellraw @s "The fallowing items remain to be sacrificed:"
execute if score main.3.grass wbs.item_drain matches 1.. run tellraw @s ["\u2022",{"score":{"name":"main.3.grass","objective":"wbs.item_drain"}},"-grass"]
execute if score main.3.leaf_blocks wbs.item_drain matches 1.. run tellraw @s ["\u2022",{"score":{"name":"main.3.leaf_blocks","objective":"wbs.item_drain"}},"-leaf_blocks"]
execute if score main.3.saplings wbs.item_drain matches 1.. run tellraw @s ["\u2022",{"score":{"name":"main.3.saplings","objective":"wbs.item_drain"}},"-saplings"]
execute if score main.3.wheat wbs.item_drain matches 1.. run tellraw @s ["\u2022",{"score":{"name":"main.3.wheat","objective":"wbs.item_drain"}},"-wheat"]
