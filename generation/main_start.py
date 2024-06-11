import voting
import item_sacrifice

def gen(task_data):
    f = open("data/world_boarder_shrine/functions/main/tasks/"+str(task_data["id"])+"/start.mcfunction", "w")
    
    f.write("#setup for task\n")
    if ("item_sacrifice" in task_data):
        f.write(item_sacrifice.start("main", task_data))
    
    if ("voting" in task_data):
        f.write(voting.start("main",task_data))
        
    f.write("\n#call the tick\nfunction world_boarder_shrine:main/tasks/"+str(task_data["id"])+"/tick\n")
    f.write("\n#call start print sequence\nfunction world_boarder_shrine:main/tasks/"+str(task_data["id"])+"/print/start/0\n")
    f.close()