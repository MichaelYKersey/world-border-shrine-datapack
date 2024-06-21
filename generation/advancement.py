import util

def tick_check(category, task_data):
    fstr = "#advancements\n"
    for i in task_data["advancements"]:
        fstr += "scoreboard players set temp0 wbs.reg 0\n"
        fstr += "execute as @e[type=minecraft:interaction,tag=world_border_shrine] at @s as @a[distance=..5] if predicate world_border_shrine:advancements/"+i.replace(':','/',1)+" run scoreboard players set temp0 wbs.reg 1\n"
        fstr += "execute unless score temp0 wbs.reg matches 1 run return 1\n"
    return fstr

def extra(category, task_data):
    for i in task_data["advancements"]:
        util.open_f("data/world_border_shrine/predicates/advancements/"+i.replace(':','/',1)+".json")
        af = open("data/world_border_shrine/predicates/advancements/"+i.replace(':','/',1)+".json", "w")
        af.write("{\n  \"condition\": \"minecraft:entity_properties\",\n  \"entity\": \"this\",\n  \"predicate\": {\n    \"type_specific\": {\n      \"type\": \"minecraft:player\",\n      \"advancements\": {\n        \"")
        af.write(i+"\": true\n      }\n    }\n  }\n}")