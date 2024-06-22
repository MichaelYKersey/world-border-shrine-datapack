tellraw @s {"text":"Hell of an Upgrade[11] Progress:", "bold":true,"color":"#00cc44"}
#an explicit task list for completion
tellraw @s {"text":"The fallowing items remain to be sacrificed:","color":"#00cc44"}
execute if score main.11.netherite_ingot wbs.item_drain matches 1.. run tellraw @s ["\u2022",{"score":{"name":"main.11.netherite_ingot","objective":"wbs.item_drain"},"color":"#00cc44"},{"text":"-netherite_ingot","color":"#00cc44"}]
