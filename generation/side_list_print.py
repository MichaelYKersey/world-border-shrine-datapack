import util

def gen(data):
    for task_data in data["side"]:
        f = util.open_f("data/world_boarder_shrine/functions/side/tasks/"+str(task_data["id"])+"/print/list_title.mcfunction", "w")
        f.write("tellraw @s {\"text\":\"["+str(task_data["id"])+"]"+task_data["title"]+"\",\"color\":\"#00cc44\"}")
        f.close()