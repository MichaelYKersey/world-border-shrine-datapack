#run in datapack directory (parent of current)
import json
import start
import tick
import end
import print_start
import print_end
import print_details
import print_progress
import main_archive_menu
import patch_update
import side_list_print
import util

f = open("generation/tasks.json")
data = json.load(f)

main_archive_menu.gen(data)
patch_update.gen(data)
side_list_print.gen(data)

for task_data in data["main"]:
    #processing
    start.gen("main", task_data)
    tick.gen("main", task_data)
    end.gen("main", task_data)
    #prints
    print_start.gen("main", task_data)
    print_end.gen("main", task_data)
    print_details.gen("main", task_data)
    print_progress.gen("main", task_data)

for task_data in data["side"]:
    util.mkdir("data/world_border_shrine/functions/side/tasks/"+str(task_data["id"]))
    util.mkdir("data/world_border_shrine/functions/side/tasks/"+str(task_data["id"])+"/print")
    #processing
    start.gen("side", task_data)
    tick.gen("side", task_data)
    end.gen("side", task_data)
    #prints
    print_start.gen("side", task_data)
    print_end.gen("side", task_data)
    print_details.gen("side", task_data)
    print_progress.gen("side", task_data)