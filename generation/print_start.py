import util

def gen(category, task_data):
    if "custom" in task_data and task_data["custom"]:
        try:
            f = util.open_f("data/world_border_shrine/functions/"+category+"/tasks/"+str(task_data["id"])+"/print/start/0.mcfunction", "w")
        except:
            return None
    else:
        f = util.open_f("data/world_border_shrine/functions/"+category+"/tasks/"+str(task_data["id"])+"/print/start/0.mcfunction", "w")
    
    f.write("#wait for system to stop printing\nexecute unless score printing wbs.vars matches 0 run return run schedule function world_border_shrine:"+category+"/tasks/"+str(task_data["id"])+"/print/start/0 1t replace\n")
    f.write("#reserve system printing\nscoreboard players set printing wbs.vars 1\n")
    
    fi = 0  
    for i in task_data["prints"]["start"]:
        f.write("execute as @e[type=minecraft:interaction,tag=world_border_shrine] at @s as @a[distance=..10] run tellraw @s {\"text\":\"")
        f.write(i["text"]+"\",\"color\":\"#9933ff\"}\n")
        if "delay" in i:
            fi = fi+1
            f.write("schedule function world_border_shrine:"+category+"/tasks/"+str(task_data["id"])+"/print/start/"+str(fi)+" "+i["delay"]+" replace")
            f.close()
            f = open("data/world_border_shrine/functions/"+category+"/tasks/"+str(task_data["id"])+"/print/start/"+str(fi)+".mcfunction", "w")
    
    f.write("#print details\nexecute as @e[type=minecraft:interaction,tag=world_border_shrine] at @s as @a[distance=..10] run function world_border_shrine:"+category+"/tasks/"+str(task_data["id"])+"/print/details\n")
    f.write("#open the system printing\nscoreboard players set printing wbs.vars 0\n")
    f.close()