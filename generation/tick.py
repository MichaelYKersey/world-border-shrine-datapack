import util
import voting
import advancement
import item_sacrifice

def gen(category, task_data):
    f = open("data/world_boarder_shrine/functions/"+category+"/tasks/"+str(task_data["id"])+"/tick.mcfunction", "w")
    f.write("#refresh ticking\nschedule function world_boarder_shrine:"+category+"/tasks/"+str(task_data["id"])+"/tick 1t replace\n")

    #updates
    #item sacrifice
    if ("item_sacrifice" in task_data):
        f.write(item_sacrifice.tick_update(category,task_data))
        item_sacrifice.extra(category, task_data)
    
    #check
    f.write("\n#run again on failed conditions\n")
    #voting
    if ("voting" in task_data):
        f.write(voting.tick_check(category, task_data))
        voting.extra(category,task_data)
    #item sacrifice
    if ("item_sacrifice" in task_data):
        f.write(item_sacrifice.tick_check(category,task_data))
    #advancements
    if ("advancements" in task_data):
        f.write(advancement.tick_check(category,task_data))
    
    f.write("#once all conditions pass call end function\nfunction world_boarder_shrine:"+category+"/tasks/"+str(task_data["id"])+"/end")
    f.close()