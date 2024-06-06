def gen(task_data):
    f = open("data/world_boarder_shrine/functions/main/tasks/"+str(task_data["id"])+"/end.mcfunction", "w")
    
    f.write("#end ticking\nschedule clear world_boarder_shrine:main/tasks/"+str(task_data["id"])+"/tick\n")
    
    f.write("\n#cleanup all things that trigger completion\n")
    if ("item_sacrifice" in task_data):
        f.write("#setup for item sacrifices\n")
        for i in task_data["item_sacrifice"]:
            f.write("scoreboard players reset main."+str(task_data["id"])+"."+i["id"]+" wbs.item_drain\n")
    
    f.write("\n#call end sequence\nfunction world_boarder_shrine:main/tasks/"+str(task_data["id"])+"/print/end/0")
    f.write("\n#advance\nfunction world_boarder_shrine:main/queue_remove\n")
    f.close()