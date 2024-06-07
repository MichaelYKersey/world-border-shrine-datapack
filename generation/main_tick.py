import util

def gen(task_data):
    f = open("data/world_boarder_shrine/functions/main/tasks/"+str(task_data["id"])+"/tick.mcfunction", "w")
    f.write("#refresh ticking\nschedule function world_boarder_shrine:main/tasks/"+str(task_data["id"])+"/tick 1t replace\n")

    #updates
    #item sacrifice
    if ("item_sacrifice" in task_data):
        f.write("#update item channels\nexecute as @e[type=minecraft:interaction,tag=world_boarder_shrine] at @s as @e[distance=..3,type=minecraft:item] run function world_boarder_shrine:main/tasks/"+str(task_data["id"])+"/item_drain\n")

        idf = open("data/world_boarder_shrine/functions/main/tasks/"+str(task_data["id"])+"/item_drain.mcfunction", "w")
        for channel in task_data["item_sacrifice"]:
           for item in channel["accepts"]:
               idf.write("execute as @s[nbt={Item:{id:\""+item+"\"}}] run function world_boarder_shrine:item_drain/feed {channel:\"main."+str(task_data["id"])+"."+channel["id"]+"\"}\n") 
        idf.close()
    
    #check
    f.write("\n#run again on failed conditions\n")
    
    #voting
    if ("voting" in task_data):
        f.write("execute unless score ~status wbs.votes matches 1 run return 1\n")
        vpf = open("data/world_boarder_shrine/functions/main/tasks/"+str(task_data["id"])+"/print/voting_prompt.mcfunction", "w")
        vpf.write("tellraw @s "+task_data["voting"]["prompt"])
        vpf.close()
        
    #item sacrifice
    if ("item_sacrifice" in task_data):
        for channel in task_data["item_sacrifice"]:
            f.write("execute unless score main."+str(task_data["id"])+"."+channel["id"]+" wbs.item_drain matches 0 run return 1\n")
    
    #advancements
    if ("advancements" in task_data):
        for i in task_data["advancements"]:
            util.mkfile("data/world_boarder_shrine/predicates/advancements/"+i.replace(':','/',1)+".json")
            af = open("data/world_boarder_shrine/predicates/advancements/"+i.replace(':','/',1)+".json", "w")
            af.write("{\n  \"condition\": \"minecraft:entity_properties\",\n  \"entity\": \"this\",\n  \"predicate\": {\n    \"type_specific\": {\n      \"type\": \"minecraft:player\",\n      \"advancements\": {\n        \"")
            af.write(i+"\": true\n      }\n    }\n  }\n}")
            
            f.write("scoreboard players set temp0 wbs.reg 0\n")
            f.write("execute as @e[type=minecraft:interaction,tag=world_boarder_shrine] at @s as @a[distance=..5] if predicate world_boarder_shrine:advancements/"+i.replace(':','/',1)+" run scoreboard players set temp0 wbs.reg 1\n")
            f.write("execute unless score temp0 wbs.reg matches 1 run return 1\n")
    
    f.write("#once all conditions pass call end function\nfunction world_boarder_shrine:main/tasks/"+str(task_data["id"])+"/end")
    f.close()