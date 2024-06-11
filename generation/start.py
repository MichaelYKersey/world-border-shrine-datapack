import voting
import item_sacrifice

def gen(category, task_data):
    if "custom" in task_data and task_data["custom"]:
        try:
            f = open("data/world_boarder_shrine/functions/"+category+"/tasks/"+str(task_data["id"])+"/start.mcfunction", "x")
        except:
            return None
    else:
        f = open("data/world_boarder_shrine/functions/"+category+"/tasks/"+str(task_data["id"])+"/start.mcfunction", "w")
    
    f.write("#setup for task\n")
    if ("item_sacrifice" in task_data):
        f.write(item_sacrifice.start(category, task_data))
    
    if ("voting" in task_data):
        f.write(voting.start(category,task_data))
        
    f.write("\n#call the tick\nfunction world_boarder_shrine:"+category+"/tasks/"+str(task_data["id"])+"/tick\n")
    f.write("\n#call start print sequence\nfunction world_boarder_shrine:"+category+"/tasks/"+str(task_data["id"])+"/print/start/0\n")
    f.close()