import util
import voting
import item_sacrifice

def gen(category, task_data):
    if "custom" in task_data and task_data["custom"]:
        try:
            f = util.open_f("data/world_boarder_shrine/functions/"+category+"/tasks/"+str(task_data["id"])+"/start.mcfunction", "x")
        except:
            return None
    else:
        f = util.open_f("data/world_boarder_shrine/functions/"+category+"/tasks/"+str(task_data["id"])+"/start.mcfunction", "w")
    
    f.write("#setup for task\n")
    if ("item_sacrifice" in task_data):
        f.write(item_sacrifice.start(category, task_data))
    
    if ("voting" in task_data):
        f.write(voting.start(category,task_data))
    
    if (category=="side"):
        if "hidden" in task_data and task_data["hidden"]:
            f.write("function function world_boarder_shrine:side/list/manager/add_hidden with {item:"+str(task_data["id"])+"}\n")
        else:
            f.write("function function world_boarder_shrine:side/list/manager/add_public with {item:"+str(task_data["id"])+"}\n")
        
    f.write("\n#call the tick\nfunction world_boarder_shrine:"+category+"/tasks/"+str(task_data["id"])+"/tick\n")
    f.write("\n#call start print sequence\nfunction world_boarder_shrine:"+category+"/tasks/"+str(task_data["id"])+"/print/start/0\n")
    f.close()