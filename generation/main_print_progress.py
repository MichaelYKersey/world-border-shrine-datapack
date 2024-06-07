def gen(task_data):
    f = open("data/world_boarder_shrine/functions/main/tasks/"+str(task_data["id"])+"/print/progress.mcfunction", "w")
    
    f.write("tellraw @s {\"text\":\""+task_data["title"]+"["+str(task_data["id"])+"] Progress:\", \"bold\":true}\n")
    f.write("#an explicit task list for completion\n")

    if "progress" in task_data["prints"]:
        f.write("tellraw @s "+task_data["prints"]["progress"]+"\n")
    
    if ("item_sacrifice" in task_data):
        f.write("tellraw @s \"The fallowing items remain to be sacrificed:\"\n")
        for i in task_data["item_sacrifice"]:
            channel = "main."+str(task_data["id"])+"."+i["id"]
            f.write("execute if score "+channel+" wbs.item_drain matches 1.. run tellraw @s [\"\\u2022\",{\"score\":{\"name\":\""+channel+"\",\"objective\":\"wbs.item_drain\"}},\"-"+i["id"]+"\"]\n")

    f.close()