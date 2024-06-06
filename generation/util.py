import os

def mkdir(path):
    folders = path.split('/')
    path = ""
    while (len(folders) >= 1):
        path += folders.pop(0)
        if (not os.path.exists(path)):
            os.mkdir(path)
        path += "/" 

def mkfile(path):
    folders = path.split('/')
    path = ""
    while (len(folders) > 1):
        path += folders.pop(0)
        if (not os.path.exists(path)):
            os.mkdir(path)
        path += "/" 
    f = open(path+folders[0],"w")
    f.close()