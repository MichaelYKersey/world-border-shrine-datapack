def gen(task_data):
    f = open("data/world_boarder_shrine/functions/main/tasks/"+str(task_data["id"])+"/start.mcfunction", "w")
    
    f.write("#setup for task\n")
    if ("item_sacrifice" in task_data):
        f.write("#setup for item sacrifices\n")
        for i in task_data["item_sacrifice"]:
            f.write("scoreboard players set main."+str(task_data["id"])+"."+i["id"]+" wbs.item_drain "+str(i["quantity"])+"\n")
    
    if ("voting" in task_data):
        f.write("function world_boarder_shrine:voting/reset\n")
        
    f.write("\n#call the tick\nfunction world_boarder_shrine:main/tasks/"+str(task_data["id"])+"/tick\n")
    f.write("\n#call start print sequence\nfunction world_boarder_shrine:main/tasks/"+str(task_data["id"])+"/print/start/0\n")
    f.close()