tellraw @s {"text":"Green Fist[3] Progress:", "bold":true,"color":"#00cc44"}
#an explicit task list for completion
tellraw @s {"text":"The fallowing items remain to be sacrificed:","color":"#00cc44"}
execute if score main.3.grass wbs.item_drain matches 1.. run tellraw @s ["\u2022",{"score":{"name":"main.3.grass","objective":"wbs.item_drain"},"color":"#00cc44"},{"text":"-grass","color":"#00cc44"}]
execute if score main.3.leaf_blocks wbs.item_drain matches 1.. run tellraw @s ["\u2022",{"score":{"name":"main.3.leaf_blocks","objective":"wbs.item_drain"},"color":"#00cc44"},{"text":"-leaf_blocks","color":"#00cc44"}]
execute if score main.3.saplings wbs.item_drain matches 1.. run tellraw @s ["\u2022",{"score":{"name":"main.3.saplings","objective":"wbs.item_drain"},"color":"#00cc44"},{"text":"-saplings","color":"#00cc44"}]
execute if score main.3.wheat wbs.item_drain matches 1.. run tellraw @s ["\u2022",{"score":{"name":"main.3.wheat","objective":"wbs.item_drain"},"color":"#00cc44"},{"text":"-wheat","color":"#00cc44"}]
