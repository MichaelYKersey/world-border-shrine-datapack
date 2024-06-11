#run in datapack directory (parent of current)
import json
import main_start
import main_tick
import main_end
import main_print_start
import main_print_end
import main_print_details
import main_print_progress
import util

f = open("generation/tasks.json")
data = json.load(f)

for task_data in data["main"]:
    util.mkdir("data/world_boarder_shrine/functions/main/tasks/"+str(task_data["id"]))
    util.mkdir("data/world_boarder_shrine/functions/main/tasks/"+str(task_data["id"])+"/print")
    #processing
    main_start.gen(task_data)
    main_tick.gen(task_data)
    main_end.gen(task_data)
    #prints
    main_print_start.gen(task_data)
    main_print_end.gen(task_data)
    main_print_details.gen(task_data)
    main_print_progress.gen(task_data)