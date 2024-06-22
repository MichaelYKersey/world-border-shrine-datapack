tellraw @s {"text":"IRONing Out Issues[4] Progress:", "bold":true,"color":"#00cc44"}
#an explicit task list for completion
tellraw @s {"text":"The following items remain to be sacrificed:","color":"#00cc44"}
execute if score main.4.diamond wbs.item_drain matches 1.. run tellraw @s ["\u2022",{"score":{"name":"main.4.diamond","objective":"wbs.item_drain"},"color":"#00cc44"},{"text":"-diamond","color":"#00cc44"}]
execute if score main.4.gold_ingot wbs.item_drain matches 1.. run tellraw @s ["\u2022",{"score":{"name":"main.4.gold_ingot","objective":"wbs.item_drain"},"color":"#00cc44"},{"text":"-gold ingot","color":"#00cc44"}]
execute if score main.4.iron_ingot wbs.item_drain matches 1.. run tellraw @s ["\u2022",{"score":{"name":"main.4.iron_ingot","objective":"wbs.item_drain"},"color":"#00cc44"},{"text":"-iron ingot","color":"#00cc44"}]
execute if score main.4.redstone wbs.item_drain matches 1.. run tellraw @s ["\u2022",{"score":{"name":"main.4.redstone","objective":"wbs.item_drain"},"color":"#00cc44"},{"text":"-redstone","color":"#00cc44"}]
execute if score main.4.copper_ingot wbs.item_drain matches 1.. run tellraw @s ["\u2022",{"score":{"name":"main.4.copper_ingot","objective":"wbs.item_drain"},"color":"#00cc44"},{"text":"-copper ingot","color":"#00cc44"}]
