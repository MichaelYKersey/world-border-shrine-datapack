def gen(task_data):
    f = open("data/world_boarder_shrine/functions/main/tasks/"+str(task_data["id"])+"/print/details.mcfunction", "w")
    
    f.write("tellraw @s {\"text\":\""+task_data["title"]+"["+str(task_data["id"])+"] Details:\", \"bold\":true}\n")
    f.write("#an explicit task list for completion\n")
    
    if "details" in task_data["prints"]:
        f.write("tellraw @s "+task_data["prints"]["details"]+"\n")
    
    if ("item_sacrifice" in task_data):
        f.write("tellraw @s \"The fallowing items must be sacrificed by throwing them near the shrine:")
        for i in task_data["item_sacrifice"]:
            f.write("\\n\\u2022"+str(i["quantity"])+"-"+i["id"])
        f.write("\"\n")
    
    f.close()