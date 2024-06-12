import os

def mkdir(path):
    folders = path.split('/')
    path = ""
    while (len(folders) >= 1):
        path += folders.pop(0)
        if (not os.path.exists(path)):
            os.mkdir(path)
        path += "/" 

def open_f(path,open_op):
    folders = path.split('/')
    path = ""
    while (len(folders) > 1):
        path += folders.pop(0)
        if (not os.path.exists(path)):
            os.mkdir(path)
        path += "/" 
    f = open(path+folders[0],open_op)
    return f