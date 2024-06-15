import util

def start(category, task_data):
    fstr = "#setup for item sacrifices\n"
    for i in task_data["item_sacrifice"]:
        fstr += "scoreboard players set "+category+"."+str(task_data["id"])+"."+i["id"]+" wbs.item_drain "+str(i["quantity"])+"\n"
    return fstr

def tick_update(category, task_data):
    return "#update item channels\nexecute as @e[type=minecraft:interaction,tag=world_boarder_shrine] at @s as @e[distance=..3,type=minecraft:item] run function world_boarder_shrine:"+category+"/tasks/"+str(task_data["id"])+"/item_drain\n"

def tick_check(category, task_data):
    fstr = ""
    for channel in task_data["item_sacrifice"]:
        fstr += "execute unless score "+category+"."+str(task_data["id"])+"."+channel["id"]+" wbs.item_drain matches 0 run return 1\n"
    return fstr

def extra(category, task_data):
    idf = util.open_f("data/world_boarder_shrine/functions/"+category+"/tasks/"+str(task_data["id"])+"/item_drain.mcfunction", "w")
    for channel in task_data["item_sacrifice"]:
        for item in channel["accepts"]:
            idf.write("execute as @s[nbt={Item:{id:\""+item+"\"}}] run function world_boarder_shrine:item_drain/feed {channel:\""+category+"."+str(task_data["id"])+"."+channel["id"]+"\"}\n") 
    idf.close()

def end(category, task_data):
    fstr = "#setup for item sacrifices\n"
    for i in task_data["item_sacrifice"]:
        fstr += "scoreboard players reset "+category+"."+str(task_data["id"])+"."+i["id"]+" wbs.item_drain\n"
    return fstr

def print_details(category, task_data):
    fstr = "tellraw @s {\"text\":\"The fallowing items must be sacrificed by throwing them near the shrine:"
    for i in task_data["item_sacrifice"]:
        fstr += "\\n\\u2022"+str(i["quantity"])+"-"+i["id"]
    fstr += "\",\"color\":\"#00cc44\"}\n"
    return fstr

def print_progress(category, task_data):
    fstr = "tellraw @s {\"text\":\"The fallowing items remain to be sacrificed:\",\"color\":\"#00cc44\"}\n"
    for i in task_data["item_sacrifice"]:
        channel = category+"."+str(task_data["id"])+"."+i["id"]
        fstr += "execute if score "+channel+" wbs.item_drain matches 1.. run tellraw @s [\"\\u2022\",{\"score\":{\"name\":\""+channel+"\",\"objective\":\"wbs.item_drain\"},\"color\":\"#00cc44\"},{\"text\":\"-"+i["id"]+"\",\"color\":\"#00cc44\"}]\n"
    return fstr