import util

def gen(category, task_data):
    util.mkdir("data/world_boarder_shrine/functions/"+category+"/tasks/"+str(task_data["id"])+"/print/end")
    if "custom" in task_data and task_data["custom"]:
        try:
            f = util.open_f("data/world_boarder_shrine/functions/"+category+"/tasks/"+str(task_data["id"])+"/print/end/0.mcfunction", "w")
        except:
            return None
    else:
        f = util.open_f("data/world_boarder_shrine/functions/"+category+"/tasks/"+str(task_data["id"])+"/print/end/0.mcfunction", "w")
    
    
    f.write("#wait for system to stop printing\nexecute unless score printing wbs.vars matches 0 run return run schedule function world_boarder_shrine:"+category+"/tasks/"+str(task_data["id"])+"/print/end/0 1t replace\n")
    f.write("#reserve system printing\nscoreboard players set printing wbs.vars 1\n")

    fi = 0  
    for i in task_data["prints"]["end"]:
        f.write("execute as @e[type=minecraft:interaction,tag=world_boarder_shrine] at @s as @a[distance=..10] run tellraw @s {\"text\":\"")
        f.write(i["text"]+"\",\"color\":\"#9933ff\"}\n")
        if "delay" in i:
            fi = fi+1
            f.write("schedule function world_boarder_shrine:"+category+"/tasks/"+str(task_data["id"])+"/print/end/"+str(fi)+" "+i["delay"]+" replace")
            f.close()
            f = util.open_f("data/world_boarder_shrine/functions/"+category+"/tasks/"+str(task_data["id"])+"/print/end/"+str(fi)+".mcfunction", "w")
            
    f.write("#open the system printing\nscoreboard players set printing wbs.vars 0\n")
    f.close()