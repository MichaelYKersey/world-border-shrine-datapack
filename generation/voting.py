import util
def start(category, task_data):
    return "function world_border_shrine:voting/reset\n"

def tick_check(category, task_data):
    return "execute unless score ~status wbs.votes matches 1 run return 1\n"

def extra(category, task_data):
    vpf = util.open_f("data/world_border_shrine/functions/"+category+"/tasks/"+str(task_data["id"])+"/print/voting_prompt.mcfunction", "w")
    vpf.write("tellraw @s {\"text\":\""+task_data["voting"]["prompt"]+"\",\"color\":\"#00cc44\"}")
    vpf.close()