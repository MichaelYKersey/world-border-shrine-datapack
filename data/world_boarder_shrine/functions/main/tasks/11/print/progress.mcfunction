tellraw @s {"text":"Hell of an Upgrade[11] Progress:", "bold":true}
#an explicit task list for completion
tellraw @s "The fallowing items remain to be sacrificed:"
execute if score main.11.netherite_ingot wbs.item_drain matches 1.. run tellraw @s ["\u2022",{"score":{"name":"main.11.netherite_ingot","objective":"wbs.item_drain"}},"-netherite_ingot"]
