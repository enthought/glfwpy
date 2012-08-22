import numpy as np


class ObjGeometry(object):
    def __init__(self, filename):
        f = open(filename, 'r')
        vertex_bag = []
        face_bag = []
        normal_bag = []
        for line in f:
            if len(line) > 2:
                if line[:2] == 'v ':
                    data = [float(x) for x in line[2:].split()]
                    vertex_bag.append(data)
                elif line[:2] == 'f ':
                    terms = line[2:].split()
                    terms = [term[:term.find('/')] for term in terms]
                    data = [int(x) for x in terms]
                    face_bag.append(data)
                elif line[:3] == 'vn ':
                    data = [float(x) for x in line[3:].split()]
                    normal_bag.append(data)
        self.index_arr = np.array(face_bag, dtype=np.uint32)
        self.index_arr = self.index_arr - 1
        self.vertex_arr = np.array(vertex_bag, dtype=np.float32)
        self.normal_arr = np.array(normal_bag, dtype=np.float32)
