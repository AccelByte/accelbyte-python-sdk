from io import StringIO
from collections import UserDict


class HeaderStr(UserDict):

    def __str__(self):
        sio = StringIO()
        first = True
        for k, v in self.items():
            if not first:
                sio.write("; ")
            v = str(v)
            if not v:
                continue
            first = False
            sio.write(f"{k}={self[k]}")
        return sio.getvalue()
