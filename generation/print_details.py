import util
import item_sacrifice

def gen(category, task_data):
    if "custom" in task_data and task_data["custom"]:
        try:
            f = util.open_f("data/world_boarder_shrine/functions/"+category+"/tasks/"+str(task_data["id"])+"/print/details.mcfunction", "x")
        except:
            return None
    else:
        f = util.open_f("data/world_boarder_shrine/functions/"+category+"/tasks/"+str(task_data["id"])+"/print/details.mcfunction", "w")
    
    
    f.write("tellraw @s {\"text\":\""+task_data["title"]+"["+str(task_data["id"])+"] Details:\", \"bold\":true,\"color\":\"#00cc44\"}\n")
    f.write("#an explicit task list for completion\n")
    
    if "details" in task_data["prints"]:
        f.write("tellraw @s {\"text\":\""+task_data["prints"]["details"]+"\",\"color\":\"#00cc44\"}\n")
    
    if ("item_sacrifice" in task_data):
        f.write(item_sacrifice.print_details(category, task_data))
    
    f.close()