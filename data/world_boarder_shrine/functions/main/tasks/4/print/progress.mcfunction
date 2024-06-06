#an explicit task list for completion
tellraw @s "The fallowing items remain to be sacrificed:"
execute if score main.4.diamond wbs.item_drain matches 1.. run tellraw @s ["\u2022",{"score":{"name":"main.4.diamond","objective":"wbs.item_drain"}},"-diamond"]
execute if score main.4.gold_ingot wbs.item_drain matches 1.. run tellraw @s ["\u2022",{"score":{"name":"main.4.gold_ingot","objective":"wbs.item_drain"}},"-gold_ingot"]
execute if score main.4.iron_ingot wbs.item_drain matches 1.. run tellraw @s ["\u2022",{"score":{"name":"main.4.iron_ingot","objective":"wbs.item_drain"}},"-iron_ingot"]
execute if score main.4.redstone wbs.item_drain matches 1.. run tellraw @s ["\u2022",{"score":{"name":"main.4.redstone","objective":"wbs.item_drain"}},"-redstone"]
execute if score main.4.copper_ingot wbs.item_drain matches 1.. run tellraw @s ["\u2022",{"score":{"name":"main.4.copper_ingot","objective":"wbs.item_drain"}},"-copper_ingot"]
