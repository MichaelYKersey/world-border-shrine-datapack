import util
def gen(data):
    f = util.open_f("data/world_boarder_shrine/functions/side/patch_update.mcfunction", "w")
    for task_data in data["side"]:
        if "start_active" in task_data and task_data["start_active"]:
            f.write("execute unless score "+str(task_data["id"])+" wbs.side.status matches -1..2 run function world_boarder_shrine:side/tasks/"+str(task_data["id"])+"/start\n")
    f.close()