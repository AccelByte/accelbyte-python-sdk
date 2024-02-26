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

Example: '{"channel": "xKWoRGy7OtYvJYOY", "client_version": "DGoYfTzDqqKdmRjJ", "deployment": "5GcEAbHGOn2FCQAo", "error_code": 29, "error_message": "d5DmpwYXnRIHgmo3", "game_mode": "2bbDl48R6Kigx1N4", "is_mock": "WUAFOB5kHAZrvIO3", "joinable": true, "match_id": "on6uWrv7QhpV3CTI", "matching_allies": [{"matching_parties": [{"first_ticket_created_at": 62, "party_attributes": {"7csIaRyWpT9F8sui": {}, "q4LK5SLgTBsLM2mz": {}, "xh2aYuW0otLagcjh": {}}, "party_id": "KNGqeJHg3a7tBfGP", "party_members": [{"extra_attributes": {"AFqrr4bVFVKTkJd9": {}, "UEL95BHqTeHyccPy": {}, "QaflLMkduWgAcBq8": {}}, "user_id": "iXeBPNurXfAL2Uv2"}, {"extra_attributes": {"DqAINDwuXpdXGEa9": {}, "HCaNxSa2Ea6lD00F": {}, "7TJNqB5cp50SQu0c": {}}, "user_id": "HqJG3fk6xcANHzuT"}, {"extra_attributes": {"unq0WLOwogRmc9Mo": {}, "JHzc8YkoUazZ7VML": {}, "uRckHJBlgebkpubH": {}}, "user_id": "40tQQ9VdUFPWToAJ"}], "ticket_created_at": 59, "ticket_id": "YUaEzG3Tub6qbvWg"}, {"first_ticket_created_at": 67, "party_attributes": {"q2IldzajXOmmHlCP": {}, "PpcE9J2xxtOty14S": {}, "pSWWo3JLwlkcXxyD": {}}, "party_id": "p1reWFbZKT3KJ05V", "party_members": [{"extra_attributes": {"8pHrd51X8VR9h8CF": {}, "kuL5zdokvSYlHbLZ": {}, "zbl2F5pjdnYgzEtP": {}}, "user_id": "90J1wfs1UZ0WT3dD"}, {"extra_attributes": {"W0saYEzga9MIymh5": {}, "iVwla7ZdtPa6H044": {}, "z5a7guu0d6abrXCi": {}}, "user_id": "VTgjoKuExwoH8p6u"}, {"extra_attributes": {"OX3zjBXAP7pawSPd": {}, "9GGWCGUxyV6ezpUq": {}, "cInhYG7ZqsV1RVrz": {}}, "user_id": "UIMI6KtfUDYM6Sn7"}], "ticket_created_at": 94, "ticket_id": "zEU4YjOtAPHMeVtk"}, {"first_ticket_created_at": 98, "party_attributes": {"te27gUS2AwrFNeah": {}, "nPHOmE1uSiZ8HQKU": {}, "8xhcKmRzYj6IE4hn": {}}, "party_id": "xKELoXrpctDuN40z", "party_members": [{"extra_attributes": {"3AGppdVeHoTdPsEN": {}, "2pxVxnUGDh2tQr89": {}, "tCauHxBiJNCSgyz2": {}}, "user_id": "dJAMbbZUv2kbTs1n"}, {"extra_attributes": {"zGRNDFd8bYacHmda": {}, "pYnEualO4W6nn1dc": {}, "kHRCg169wUErmCkS": {}}, "user_id": "FyfWf6f0MXB0eoNX"}, {"extra_attributes": {"kzA38C62fEARIMuE": {}, "DDwkwiTOj6MhiXrF": {}, "s7DORLcl9KwksWZ0": {}}, "user_id": "SorvnjGqzFtjzJbx"}], "ticket_created_at": 81, "ticket_id": "zP9v88sxFNaYhGMS"}]}, {"matching_parties": [{"first_ticket_created_at": 59, "party_attributes": {"X8sEqXamS6xqDzpA": {}, "daD9GuMHgwU7H9Zr": {}, "WDqlRvJsmuu5YjPv": {}}, "party_id": "KmY1080YWG7ds7QD", "party_members": [{"extra_attributes": {"tVjxkKRjouxKcmI1": {}, "Kys6KFR3Incg4ih3": {}, "rtOJnJ4oJYfbFGsh": {}}, "user_id": "rLIqAICXQWnsM3Hi"}, {"extra_attributes": {"HPEnlxu6PMkYBSRr": {}, "jk6G51T82u8EvsIA": {}, "yyAX4VFmrZdRDrjt": {}}, "user_id": "TUUYwflLfFNHGa2o"}, {"extra_attributes": {"whR5l6LUggyuBGBJ": {}, "RAwhHzzZzVRRcRJ1": {}, "s5BVtMiBMyHj0YwD": {}}, "user_id": "Vkle9LzJSSnZOHIw"}], "ticket_created_at": 59, "ticket_id": "Onv7Fh2chAtWdset"}, {"first_ticket_created_at": 9, "party_attributes": {"GnGICmkytjXUVhAl": {}, "r3cLd1ulPqS6hhAi": {}, "HEz6n3xoOnoYyisB": {}}, "party_id": "e1ow4s2XkNWSyGaP", "party_members": [{"extra_attributes": {"2o515wDCpqNyMLRG": {}, "tVIyRXEdomD2mePG": {}, "66CVP30zVPxyy0wJ": {}}, "user_id": "78869CaoJUs71Wa7"}, {"extra_attributes": {"thfjWH5cvnlu8RXB": {}, "DYKd1bujixpPWBEP": {}, "ttxU31tNmRI7xC52": {}}, "user_id": "4NxMbaVSBxhTP479"}, {"extra_attributes": {"YfU3pizvrvXZuCWP": {}, "c5lDcCoWevw5z7i7": {}, "W9Ecl0XHsCcXHdwa": {}}, "user_id": "iASog5In9KbUsA5H"}], "ticket_created_at": 40, "ticket_id": "leZUdMvJkDWUhA9X"}, {"first_ticket_created_at": 95, "party_attributes": {"5Q79o5XNGLOwOARU": {}, "KRNPCx3t5kzpUMHl": {}, "yKT0glbxtQQyfJck": {}}, "party_id": "0g4FHfd5esLjKdM4", "party_members": [{"extra_attributes": {"Nni9BKqA5DxGDcrN": {}, "qtP04gKGpSbeHYYn": {}, "d88O8Eoscvj3MTW1": {}}, "user_id": "BKcuBb3qHJ9djwvh"}, {"extra_attributes": {"6ETZvRZr3ZOg5izb": {}, "O2YlNi1N6Bf8rjRI": {}, "N7dkNqFLJR1qnCg4": {}}, "user_id": "zovjaS57BUeKkhk0"}, {"extra_attributes": {"u61q6uzoHyFCsjBS": {}, "xWZKL0Qlg6XP40Mz": {}, "tshzW2vHCrulLQf7": {}}, "user_id": "jvmGJXvNq0z4aaPn"}], "ticket_created_at": 91, "ticket_id": "StWcFYtuzmL21YqR"}]}, {"matching_parties": [{"first_ticket_created_at": 39, "party_attributes": {"k6xRDDkdrsG8e0Ir": {}, "wfyd2xuh33RG6Zi1": {}, "87xOoqaVLbLEaDuL": {}}, "party_id": "RO2E8NllqEHoiQAX", "party_members": [{"extra_attributes": {"19LmMGRONd4ua1wh": {}, "ndYev2eEmn1iirdR": {}, "MNfyUrsVGD3NV4hD": {}}, "user_id": "W6DMGGIDXA3Es28U"}, {"extra_attributes": {"ekeCfZyDTqBCZy41": {}, "BiBHT2XH4iagbiFz": {}, "QpKL7iVmbBJnr7de": {}}, "user_id": "ZX3RalsuHkEIvYPS"}, {"extra_attributes": {"orQvqYkSK4uqvBUz": {}, "ahPSegwho1gICT0p": {}, "Y3p24auYezKS5I1K": {}}, "user_id": "7Osp4LC4WzsBuwB8"}], "ticket_created_at": 79, "ticket_id": "q1oLFhscd5u0h9d9"}, {"first_ticket_created_at": 73, "party_attributes": {"kPH9BT4UV7vdvKmI": {}, "T2iY5InIhDCMQZSS": {}, "s08i7r0SZMhl3GpF": {}}, "party_id": "dhQQCB0hYi3UayfU", "party_members": [{"extra_attributes": {"7tgz9NrY4Qq3AMe7": {}, "iDtStLJx1RVySVcT": {}, "lDQtD7b5WpTFwAYs": {}}, "user_id": "4KlpbI9Trvlnh014"}, {"extra_attributes": {"L02O8Cb0HtG6AQ5N": {}, "uQ4YZQBxlOlIkeKZ": {}, "fIF53P9vfrytcTmB": {}}, "user_id": "DnMBmqg61JAVukaG"}, {"extra_attributes": {"0QH9dx7JR3qm3zVP": {}, "IgTdj9Upu6K34SyT": {}, "No7vDfqgjIvZ9Ugb": {}}, "user_id": "WReBbvEcPwUAAoxj"}], "ticket_created_at": 88, "ticket_id": "vdyIkwb8uYNI8CMJ"}, {"first_ticket_created_at": 82, "party_attributes": {"uKTY6qiZbjkjrNLy": {}, "64BhrKbwTqlXuSqu": {}, "e6P6Mpa3jaUam2TD": {}}, "party_id": "dY8zYmEClOpNSgiG", "party_members": [{"extra_attributes": {"UlvO0NVomFS56Uqj": {}, "0UnCp3kbfifcvIRR": {}, "JTr503FjttyBUcJS": {}}, "user_id": "tnS6vtxxDmFgUk5x"}, {"extra_attributes": {"HHxiklUiwFy9s8vJ": {}, "uAqbGdQKJgUeecia": {}, "jf13ahgKLmZ8avYN": {}}, "user_id": "mAhSbulvNyKUZpqw"}, {"extra_attributes": {"UVKaJZh2PJ1382X4": {}, "t0veyGEGELjLEv7K": {}, "OALnJfEfFOjPJNU6": {}}, "user_id": "dUoEBaul2Gua1W3j"}], "ticket_created_at": 70, "ticket_id": "z1vydHqm5UvjbrFk"}]}], "namespace": "bIDjVD67L2ntOlyM", "party_attributes": {"mPCcpnBMVoBrg6Lq": {}, "DRpNpj5RxlYDvny0": {}, "qoBhwbizOHwDjZvD": {}}, "party_id": "QtL36Q0bu7dlO5da", "queued_at": 85, "region": "8OPMke9SKbffQ2He", "server_name": "MIlq5FyNzWRerAjV", "status": "kDF3D3XY400YyNSb", "ticket_id": "PB6CgbN1u1c9Bjgn", "ticket_ids": ["4cL436NdOjprWpdF", "Foh9muK2KBMj1Wzs", "tM5aBOwJqjhuIdAL"], "updated_at": "1981-09-07T00:00:00Z"}'
"""

result, error = queue_session_handler(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
