import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.matchmaking import queue_session_handler
from accelbyte_py_sdk.api.matchmaking.models import ModelsMatchmakingResult
from accelbyte_py_sdk.api.matchmaking.models import ResponseError

"""
body:
Definition: ModelsMatchmakingResult
channel: str
client_version: str
deployment: str
error_code: int
error_message: str
game_mode: str
is_mock: str
joinable: bool
match_id: str
matching_allies: List[ModelsMatchingAlly]
Definition: List[ModelsMatchingAlly]
    matching_parties: List[ModelsMatchingParty]
    Definition: List[ModelsMatchingParty]
        first_ticket_created_at: int
        party_attributes: Dict[str, Any]
        party_id: str
        party_members: List[ModelsPartyMember]
        Definition: List[ModelsPartyMember]
            extra_attributes: Dict[str, Any]
            user_id: str
        ticket_created_at: int
        ticket_id: str
namespace: str
party_attributes: Dict[str, Any]
party_id: str
queued_at: int
region: str
server_name: str
status: str
ticket_id: str
ticket_ids: List[str]
updated_at: str

Example: '{"channel": "j2wYpBCktBUrPEO0", "client_version": "OBSQuTY6SfjKdRpW", "deployment": "k91HoW3oGmnYyhPb", "error_code": 51, "error_message": "eUZYS4x988KdyBsd", "game_mode": "oqFXp4tIVdMeiekQ", "is_mock": "hDw1mOsDps6AgCfi", "joinable": true, "match_id": "awIhjqK1pcoLDs9S", "matching_allies": [{"matching_parties": [{"first_ticket_created_at": 45, "party_attributes": {"2De63XEUPfqelKn3": {}, "2ll1LXDe5GCRj9uX": {}, "ECR1rE2ooQ5TfGqi": {}}, "party_id": "MKIW2Sbq5BaweKBy", "party_members": [{"extra_attributes": {"VFkerLVQhB0Whw77": {}, "1dxDl49uZkJRly51": {}, "D5F4KOwM3YaNQigJ": {}}, "user_id": "895E3f84E0lLEKGd"}, {"extra_attributes": {"j1l8DZEYtqz43s4C": {}, "GcLe6jcxWWNsU4UN": {}, "FiCNC7YnQscZCPqL": {}}, "user_id": "4ceCFa2apmfCoFqN"}, {"extra_attributes": {"2dLiHQUGwDsgAYkh": {}, "GA2lQMEHnCPsdfpP": {}, "oj2wdWCMRaR4rBMi": {}}, "user_id": "nGe0JcjR35HC2SwW"}], "ticket_created_at": 8, "ticket_id": "4LgMXkRDfNQvk7fB"}, {"first_ticket_created_at": 8, "party_attributes": {"2FPsa6CeEvKJDBg8": {}, "Tyawwl0Wv9sC3CKT": {}, "IPlX3BzbwY84VqO7": {}}, "party_id": "S5iBHTOTFGnPOZsB", "party_members": [{"extra_attributes": {"kWPjTXXWT9QKrV6V": {}, "bXq0zPuGPK7k664d": {}, "nnJHYi13uyJpo4nK": {}}, "user_id": "ISP5FtNTSS27xtqE"}, {"extra_attributes": {"bTz0goHbMAlM5Qr0": {}, "XKjpK52sPX9REXz0": {}, "0k519jngbcIIDhBG": {}}, "user_id": "YXL2k2agJjJO4LxX"}, {"extra_attributes": {"3847itnXO6gKWuK0": {}, "BaXQEetJBfQuY3Da": {}, "qWhubQUpeMzG9wfL": {}}, "user_id": "W2GEwBmkXWtFQ3Hs"}], "ticket_created_at": 34, "ticket_id": "jceSknCAdwE0mRQs"}, {"first_ticket_created_at": 83, "party_attributes": {"N4xqjlc5ZhBYIQEx": {}, "PQo9oxQro4xY1ttA": {}, "82ocfMgbNV5IltUZ": {}}, "party_id": "0omDCZGu8FWWUmkz", "party_members": [{"extra_attributes": {"g6OT7bPDC4TJ09aY": {}, "GEJij6loL2q2CswT": {}, "ydMWZ7U5KzWlofAz": {}}, "user_id": "E05KpQiA1IsW2UVT"}, {"extra_attributes": {"S3kaCn59Q3iSd4aT": {}, "4k4N2wmPbi7wZEvk": {}, "fHQvSz1TIihAQtbw": {}}, "user_id": "MkAQu8pHX49H1kn8"}, {"extra_attributes": {"MQqPwpsZfUvQI5tB": {}, "wHqKivezAXiR2HSM": {}, "ya02j7yxwGNUmfLF": {}}, "user_id": "AX510xKVAPHbbcyO"}], "ticket_created_at": 31, "ticket_id": "vDepYzLWmRnCUP9t"}]}, {"matching_parties": [{"first_ticket_created_at": 55, "party_attributes": {"74SQWCYK7ZJExAQH": {}, "MTZ2aYOJZvkPq0GQ": {}, "PXKmLcqbj3f9ZwZn": {}}, "party_id": "MBcgx4k4sMcdJoPC", "party_members": [{"extra_attributes": {"86Hd6JRDwep2vfqv": {}, "VrBgIAscoH0UiC4K": {}, "21qKfSTOHb2kKakD": {}}, "user_id": "Z6BOGAdqBuQGazil"}, {"extra_attributes": {"Qj9uM2lBzlcNNrJL": {}, "GlVbDwMWoBV6wjcj": {}, "nPfqdXWcI5wZQnaR": {}}, "user_id": "xp7czQHAX4RG8huB"}, {"extra_attributes": {"bVoQ2iMsjmxtfYYp": {}, "BqldtijkmRKxGWiE": {}, "GRm2kg0q9HCKg0sa": {}}, "user_id": "yOeM6Y0ud26oasKv"}], "ticket_created_at": 34, "ticket_id": "016oKBCyAytKvZxv"}, {"first_ticket_created_at": 95, "party_attributes": {"feV6eTArOnjZgNM5": {}, "GFUrcZ61CQoftv57": {}, "sj0RFrZW0eoM9oBj": {}}, "party_id": "BKA1K1ynesoTZxTS", "party_members": [{"extra_attributes": {"BbfT1Z337LcmLSva": {}, "Xm6PzcHK9WB3J5rp": {}, "j67WDZDgXmvrl5J9": {}}, "user_id": "oHibZ9sQJCPt3p0N"}, {"extra_attributes": {"YWTYy9YSdFEanGOl": {}, "VapC1k5ACS8K097P": {}, "uDaZ61eonfKNcvgG": {}}, "user_id": "zS1jmqUadUn9HVYC"}, {"extra_attributes": {"Z699iTBlgqJp78oB": {}, "oPoUwKA4JSHvKZAn": {}, "yeA50bd2MsrmXlCt": {}}, "user_id": "YhHqZrj3u6LGx2za"}], "ticket_created_at": 85, "ticket_id": "hybdn2oy8tjESg4V"}, {"first_ticket_created_at": 37, "party_attributes": {"CQHydWkz2EGGOmy0": {}, "HRk8NJhpJy9kR75e": {}, "YTx69MTIvvSFS7XX": {}}, "party_id": "yGARdLgjwXUPRuNA", "party_members": [{"extra_attributes": {"VqUHh9FVRhkjR8Qn": {}, "mnAanpPqAYda8vIZ": {}, "mKZBDPxVgYHpZYTt": {}}, "user_id": "mrapjjy44Idcu0TO"}, {"extra_attributes": {"Bht0tjnPJai3NHkz": {}, "ayyFZym3YXkVPvz1": {}, "wKOLrroYksngLUeB": {}}, "user_id": "5htdgIeiNRJXEYom"}, {"extra_attributes": {"sbkcETxp8VObxylM": {}, "ZPYbCEC6jWCz1sDe": {}, "tzvtKCcElHLYgX7E": {}}, "user_id": "zBYWfinvnUurixNG"}], "ticket_created_at": 89, "ticket_id": "QMYg2wBSFdm8nOKq"}]}, {"matching_parties": [{"first_ticket_created_at": 50, "party_attributes": {"rJAwKCg9fG85fXvy": {}, "iLEYFLxeJNBXIQra": {}, "JBV5tV8GyOztfEFQ": {}}, "party_id": "CvgKHjV96b2PyrAR", "party_members": [{"extra_attributes": {"NFYn70GkdsPxowAn": {}, "nxj4i1Mwq356RkHc": {}, "wOBcoVcaDOsQLiO2": {}}, "user_id": "xM4W8uGEal3BGIeY"}, {"extra_attributes": {"QsrvZrUn0Zv8D46P": {}, "4RGY8VUWynljk7d6": {}, "fHff7PLEltIk3EQ1": {}}, "user_id": "ASP1VP3QDPZuzIhf"}, {"extra_attributes": {"LMsYBnb6ghAhOoM1": {}, "w0x9gGwLH5mIoBTX": {}, "YpyO4h6xGmuGq8bK": {}}, "user_id": "XA9b6AAhTQA7NwLX"}], "ticket_created_at": 48, "ticket_id": "qg8d0bhiCWnIoEZN"}, {"first_ticket_created_at": 8, "party_attributes": {"aIkYC5Mavv6Lpn7P": {}, "XtkNsHM8UrG7jX2N": {}, "NTY4p51Xal558JiO": {}}, "party_id": "qP5FtIfbHLgs67Rf", "party_members": [{"extra_attributes": {"79ok8YtXwbS0h8Xx": {}, "vT7qHinCKLLj7Hmn": {}, "T7EcD0oy4epoKALy": {}}, "user_id": "q9kdxlJ0g5ubVoWE"}, {"extra_attributes": {"MzZfmBjBqDIKuAmJ": {}, "VgtaoJJOuF5YfB19": {}, "vAf1QIo8WTzXeebA": {}}, "user_id": "0e1l0HZ6ZYSwvDck"}, {"extra_attributes": {"6LwNdR2uYuYmrMcf": {}, "Yf3n7Mx5h5ZPo0w4": {}, "zULgjdwbhcuNT7IS": {}}, "user_id": "5qFfs0IrC1zay8Zk"}], "ticket_created_at": 2, "ticket_id": "yDFtESI4zJLs5d6h"}, {"first_ticket_created_at": 90, "party_attributes": {"fe88RXXBmfLOqybo": {}, "wmLqMd7iyTrRVq2o": {}, "pLCXZZIyMeXx3iKx": {}}, "party_id": "JFnemjB0wHHWg5OZ", "party_members": [{"extra_attributes": {"bnErHl9zIqNzbbA3": {}, "LdQRaxotLZMTHEdz": {}, "8P4VREzai2niIbIx": {}}, "user_id": "7XcNQIHG8aNbjsoI"}, {"extra_attributes": {"S7Pm4RRisDvfU8os": {}, "8DYHvEuw0mKP9Amv": {}, "Q1lvzgn2LvMNHHeN": {}}, "user_id": "R8NMAHjI3FC99fWZ"}, {"extra_attributes": {"80ueAZy9AcMONHOp": {}, "ZDUwQCiXEUiEiEWI": {}, "wFWswxG9MOrF2D2O": {}}, "user_id": "R9WodbwaJdRVjKzC"}], "ticket_created_at": 55, "ticket_id": "2vaSrMuEymz97tOU"}]}], "namespace": "1EYFU1V4xIxj4uhu", "party_attributes": {"LAIfF2A05XIcqZQ1": {}, "E0SFLwfhIprg0GgP": {}, "iCDa03mUgNkcyf26": {}}, "party_id": "qfKEsVyImfnZTOGM", "queued_at": 32, "region": "oEhDQQat73YdPFPC", "server_name": "j6MEqY8kHgHqtl3y", "status": "LI7YfSGTBRcRreCE", "ticket_id": "R7q4RBuMboAaJ5ux", "ticket_ids": ["20WIn0SDZpojaCOi", "DcX9ZOPBZV92fg16", "zcLLmk4wJXP4Aoed"], "updated_at": "1978-07-07T00:00:00Z"}'
"""

result, error = queue_session_handler(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
