import item_sacrifice

def gen(category, task_data):
    if "custom" in task_data and task_data["custom"]:
        try:
            f = open("data/world_boarder_shrine/functions/"+category+"/tasks/"+str(task_data["id"])+"/end.mcfunction", "x")
        except:
            return None
    else:
        f = open("data/world_boarder_shrine/functions/"+category+"/tasks/"+str(task_data["id"])+"/end.mcfunction", "w")
    
    f.write("#end ticking\nschedule clear world_boarder_shrine:"+category+"/tasks/"+str(task_data["id"])+"/tick\n")
    
    f.write("\n#cleanup all things that trigger completion\n")
    if ("item_sacrifice" in task_data):
        f.write(item_sacrifice.end(category,task_data))
    
    f.write("\n#call end sequence\nfunction world_boarder_shrine:"+category+"/tasks/"+str(task_data["id"])+"/print/end/0")
    
    if category=="main":
        f.write("\n#advance\nfunction world_boarder_shrine:main/queue_remove\n")
    if category=="side":
        f.write("function world_boarder_shrine:side/list/manager/add_complete {item:"+task_data["id"]+"}")
    
    f.write("function world_boarder_shrine:util/world_boarder_refresh\n")
    f.close()