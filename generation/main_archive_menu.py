import util

def gen(data):
    f = util.open_f("data/world_boarder_shrine/functions/menu/main/print_main_archive_menu.mcfunction","w")
    f.write("tellraw @s {\"text\":\"Main Archive Info:\", \"bold\":true}\n")
    f.write("tellraw @s {\"text\":\"it access the archive run \\\"/trigger wbs.main_archive.[section] set [id]\\\". If a section is not available run the refresh trigger option in the main menu and try again. Ids for each main task are listed below\"}\n")
    for i in data["main"]:
        f.write("execute if score main_last_queued wbs.vars matches .."+str(i["id"]-1)+" run return 1\n")
        f.write("tellraw @s \"["+str(i["id"])+"] "+i["title"]+"\"\n")
    f.close()