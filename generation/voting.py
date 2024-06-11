def start(category, task_data):
    return "function world_boarder_shrine:voting/reset\n"
def tick_check(category, task_data):
    return "execute unless score ~status wbs.votes matches 1 run return 1\n"
def extra(category, task_data):
    vpf = open("data/world_boarder_shrine/functions/"+category+"/tasks/"+str(task_data["id"])+"/print/voting_prompt.mcfunction", "w")
    vpf.write("tellraw @s "+task_data["voting"]["prompt"])
    vpf.close()