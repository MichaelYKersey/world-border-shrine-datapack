import util
import item_sacrifice

def gen(category, task_data):
    if "custom" in task_data and task_data["custom"]:
        try:
            f = util.open_f("data/world_border_shrine/functions/"+category+"/tasks/"+str(task_data["id"])+"/print/progress.mcfunction", "x")
        except:
            return None
    else:
        f = util.open_f("data/world_border_shrine/functions/"+category+"/tasks/"+str(task_data["id"])+"/print/progress.mcfunction", "w")
    
    
    f.write("tellraw @s {\"text\":\""+task_data["title"]+"["+str(task_data["id"])+"] Progress:\", \"bold\":true,\"color\":\"#00cc44\"}\n")
    f.write("#an explicit task list for completion\n")

    if "progress" in task_data["prints"]:
        f.write("tellraw @s {\"text\":\""+task_data["prints"]["progress"]+"\",\"color\":\"#00cc44\"}\n")
    
    if ("item_sacrifice" in task_data):
        f.write(item_sacrifice.print_progress(category, task_data))

    f.close()