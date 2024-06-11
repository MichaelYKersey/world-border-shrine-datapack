import item_sacrifice

def gen(category, task_data):
    f = open("data/world_boarder_shrine/functions/"+category+"/tasks/"+str(task_data["id"])+"/end.mcfunction", "w")
    
    f.write("#end ticking\nschedule clear world_boarder_shrine:"+category+"/tasks/"+str(task_data["id"])+"/tick\n")
    
    f.write("\n#cleanup all things that trigger completion\n")
    if ("item_sacrifice" in task_data):
        f.write(item_sacrifice.end(category,task_data))
    
    f.write("\n#call end sequence\nfunction world_boarder_shrine:"+category+"/tasks/"+str(task_data["id"])+"/print/end/0")
    
    if category=="main":
        f.write("\n#advance\nfunction world_boarder_shrine:main/queue_remove\n")
    
    f.write("function world_boarder_shrine:util/world_boarder_refresh\n")
    f.close()