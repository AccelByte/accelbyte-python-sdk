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

Example: '{"channel": "VNZ4jGF2N49itDeo", "client_version": "3jlea3WmMG3R22wo", "deployment": "bblVUyv5xrylD5mC", "error_code": 36, "error_message": "gR7hidUoMJYPKBGo", "game_mode": "DWFy0ES6j4pHBbYA", "is_mock": "TDSEY22nO6BGMxjW", "joinable": true, "match_id": "P3GsoUoqFNg5Oy7h", "matching_allies": [{"matching_parties": [{"first_ticket_created_at": 46, "party_attributes": {"h95uxMegXAxIs1Fw": {}, "JywswuGin61MZDit": {}, "9I1gjHNeshRz2Qpz": {}}, "party_id": "ltqrkPpmpNa70UgG", "party_members": [{"extra_attributes": {"QmdiWxjMvWYvlzdO": {}, "U0VvwYpPo0apZaeq": {}, "Ml9TamcBm32Hzqkc": {}}, "user_id": "vk4BkeDFYXFjzMRA"}, {"extra_attributes": {"ZoyJHVGtcKyavwKt": {}, "8CyjZmOKJ2Svh60b": {}, "13HMkdLSlPcDmKWs": {}}, "user_id": "VCpQSa4ASHwujGkE"}, {"extra_attributes": {"SsP0XjXvH58vN4Yt": {}, "NDKFhOIVhUtwnCxa": {}, "nSkcseSTzFrkAx7j": {}}, "user_id": "9SiTmepLtZaKR7Xe"}], "ticket_created_at": 51, "ticket_id": "5bzred1dmQQwfDwp"}, {"first_ticket_created_at": 95, "party_attributes": {"5Cu3iIo74Negv0tX": {}, "kq7mdm4UmdC465Ry": {}, "rc9Z8EsIqYGx6uf2": {}}, "party_id": "JgM3wofOvYuTwEF5", "party_members": [{"extra_attributes": {"GkADpjjwsXqiqZgS": {}, "9HvEbApbFxH1y5vl": {}, "JWdQ3AkHYNPeRhoF": {}}, "user_id": "GhV5Kn9ECSm94WTM"}, {"extra_attributes": {"Z3olwD2068dxZtM8": {}, "hhSXEgfowrbM0yRy": {}, "Th0RX3Rq7OGWSeHH": {}}, "user_id": "iunkOgpbJboBPwnT"}, {"extra_attributes": {"JPsUxzmcO7IJjLum": {}, "Q3PEeSkeuTxGzaQv": {}, "f8hsEhJCgTq8PRZj": {}}, "user_id": "1iRrsXLxJE6M1CNK"}], "ticket_created_at": 96, "ticket_id": "VHpvne1tEsyKGE4l"}, {"first_ticket_created_at": 21, "party_attributes": {"MiSagr58m0gOL56z": {}, "YMzeGZ3DgBelY7OC": {}, "QukvtfYKFGIOP0xJ": {}}, "party_id": "U4uIBS06DvckpRCn", "party_members": [{"extra_attributes": {"MQzL5NP5OGUAQoBu": {}, "rDMr2HV5zBFfN6jJ": {}, "3WeH38W3bcFHptu7": {}}, "user_id": "argEZ2uFA5CjsOSu"}, {"extra_attributes": {"zVUYUgMhZwnwheZC": {}, "PBYKzeVjqaScnB4L": {}, "RjD4qA0OwXqWyBZJ": {}}, "user_id": "RZDIS2g63Ke7wMnk"}, {"extra_attributes": {"COpTdxV0BopUxGB1": {}, "0tv8Jf0hiG3pckq6": {}, "lAVTispM6opl7X2V": {}}, "user_id": "s4P3kJZGLd0OocSk"}], "ticket_created_at": 34, "ticket_id": "VnvOM3W6DmlUoRGL"}]}, {"matching_parties": [{"first_ticket_created_at": 32, "party_attributes": {"riZqXzgCUOXBXbRn": {}, "bo7gLbxX9yTUDBrW": {}, "BaSsHKah4bgVno0U": {}}, "party_id": "5bBsbOlhPkRD7eLQ", "party_members": [{"extra_attributes": {"BBfeN1WcDIHFRGC9": {}, "nzxbB7gr1M0tTgFm": {}, "TSjIZumGLAYzW5Uv": {}}, "user_id": "LTol4OQrY6nzq2gs"}, {"extra_attributes": {"HqwQgpSUHszEIp1K": {}, "2i9asZIpIPI3TFxH": {}, "CAPdoqtTFG7HuYYg": {}}, "user_id": "qgY0a094VR3v1Lkb"}, {"extra_attributes": {"72KH2q32vuk0JeOn": {}, "3685J830ea4dF8RG": {}, "ld4ODLP0QvVnuLqt": {}}, "user_id": "UguXETWWo9CArFSF"}], "ticket_created_at": 42, "ticket_id": "KjlikEFB5WSpk6hI"}, {"first_ticket_created_at": 65, "party_attributes": {"qEvvl3iOv3hK7XEY": {}, "TLwrDiDZr46ynb6T": {}, "YwUSLUgx00kB0m7K": {}}, "party_id": "NnmBbtR1lDsv9k61", "party_members": [{"extra_attributes": {"s2kQbJiuerDac0P2": {}, "d8mOu9j6oZGRJRfw": {}, "PcGLjzGAKDvEAMzN": {}}, "user_id": "qyJmDzAG6cu77hyR"}, {"extra_attributes": {"p1PtwLaijo1NykOo": {}, "jwkYwOrJo828PqrQ": {}, "i6ojetK4e6mMRh9e": {}}, "user_id": "BavaoJalN7IjJoCy"}, {"extra_attributes": {"0ERD6BADoWOOUSQr": {}, "QYWaJavEOx4i3Da1": {}, "QqJLWmt2vIBRE2Io": {}}, "user_id": "6boq16t3ONRyUcfk"}], "ticket_created_at": 56, "ticket_id": "isptDggodDxCbfaQ"}, {"first_ticket_created_at": 71, "party_attributes": {"NtnJgQ4tlaaZJV96": {}, "E2QL48S7zVAZj9Rk": {}, "3zY01oDr0KklHvv7": {}}, "party_id": "RELQH6IWxQ6dAfEU", "party_members": [{"extra_attributes": {"s5cpN4Ejd2HnIqIq": {}, "VmkmPC0bXjsBPbz2": {}, "1bJGzcq8IlEm5ppm": {}}, "user_id": "NHS3mrUt9J2DE4ls"}, {"extra_attributes": {"0kHrc7WiUbkQ3JBg": {}, "8SpHQrU8vd29rE8p": {}, "4oayiYal2I1TY1yx": {}}, "user_id": "Es65ZugiTzTjWSEm"}, {"extra_attributes": {"thoFx9Udy1jSN7g6": {}, "ti9uYCucavhEW1AP": {}, "37TihIsKybZHh1pG": {}}, "user_id": "TxOBqtaHSsKUtF1k"}], "ticket_created_at": 58, "ticket_id": "70U6Ua7rahODET2K"}]}, {"matching_parties": [{"first_ticket_created_at": 9, "party_attributes": {"goGZtW0kXn5r5hlz": {}, "HXZd0IDln1n4dhrb": {}, "7bkGIWOVzYAdf4dw": {}}, "party_id": "GbSYMPG8XmETa5Yj", "party_members": [{"extra_attributes": {"HwXTsoI7LEWVMbCC": {}, "jw5vuZh8MlOHVZjp": {}, "eRdhhT68tL4vY7TY": {}}, "user_id": "dJExdkzwt3xPMPyZ"}, {"extra_attributes": {"YjnOts3RtT3AyjbQ": {}, "pbRU1Gp6IW5Ef8JR": {}, "Nmt7tFqgj1VTaDk5": {}}, "user_id": "mvMtgtCt38987Q7x"}, {"extra_attributes": {"2IqpEKFsZMtusV0L": {}, "IfVq3LiLUsIDWdWB": {}, "cry1Wqzad9KGn7MK": {}}, "user_id": "8AZCUN54QGG3A3ty"}], "ticket_created_at": 49, "ticket_id": "jtmo5w5uWfDSDBFG"}, {"first_ticket_created_at": 8, "party_attributes": {"g34gnW733DI4Ddbe": {}, "yPwU7rKnL5JNhu81": {}, "MIMnvI8rewVQQ4Fk": {}}, "party_id": "4OdxWfKJf9BdZm3s", "party_members": [{"extra_attributes": {"Sk4KkmviKFotOMlm": {}, "bIWQYKeuL8YAPqkY": {}, "9SzdWRpF5hGKW0bz": {}}, "user_id": "3dTqBaCzRE3txkVN"}, {"extra_attributes": {"OmvYWEFxzuz8QFTn": {}, "KKJLtWTiI84FTbuy": {}, "Ke5FhPm8vgV5HO9c": {}}, "user_id": "JGLIsOJhHZx0J0SW"}, {"extra_attributes": {"hclFIT5isXn76teC": {}, "4FK2YwMKhpBaowL3": {}, "wK3s8MLUG4jMCZdp": {}}, "user_id": "OWwibGlyHQd4kyGx"}], "ticket_created_at": 28, "ticket_id": "yebdt5lhMNvoIgDD"}, {"first_ticket_created_at": 13, "party_attributes": {"DrWF87r0LY2qRiqG": {}, "TCgcgf7fHzXUmKAd": {}, "xAEkVxzbnUzVrOpw": {}}, "party_id": "gvpQ3rujVpDIYqyK", "party_members": [{"extra_attributes": {"0Ft9xUOXPfNTQ8rm": {}, "RxKHgqyIZQRXbm7e": {}, "oMSUOvmobYkFLSPf": {}}, "user_id": "tCAsoYBb3qy21LSn"}, {"extra_attributes": {"VsqQmMIV3ekEzUcZ": {}, "UYnxXpScHH6XjwHB": {}, "L8vs0Zu2Q9mBZCLk": {}}, "user_id": "s8Rqos73thqGHeOr"}, {"extra_attributes": {"CyltIGsbUv8oq5ze": {}, "U2YuNjKWILrvpC4B": {}, "XORNNoJamsaAyFKz": {}}, "user_id": "qvVsqglix0y3B9L8"}], "ticket_created_at": 33, "ticket_id": "TOcou8FwJCsi6L42"}]}], "namespace": "bYHP4NugaporfXJz", "party_attributes": {"JnOZRVDPpB7LH0UI": {}, "5QtuaX3L3dLenGYA": {}, "RWqvp36sy5hEuepi": {}}, "party_id": "Q1Egpah97Bdv8WmV", "queued_at": 69, "region": "DY0Nx3VsiTyP0aD7", "server_name": "7X8uHRasun5pzTji", "status": "zxORcJkRcdsBZgNY", "ticket_id": "FHl5Oo66WYypTqq2", "ticket_ids": ["DfnRpcaJq4Td5Kqm", "7hP3eO9GLqd20sHh", "FGvSINHFFRN89rvR"], "updated_at": "1989-08-09T00:00:00Z"}'
"""

result, error = queue_session_handler(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
