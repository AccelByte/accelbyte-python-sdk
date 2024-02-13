import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.dsmc import create_session
from accelbyte_py_sdk.api.dsmc.models import ModelsCreateSessionRequest
from accelbyte_py_sdk.api.dsmc.models import ModelsSessionResponse
from accelbyte_py_sdk.api.dsmc.models import ResponseError

"""
body:
Definition: ModelsCreateSessionRequest
client_version: str
configuration: str
deployment: str
game_mode: str
matching_allies: List[ModelsRequestMatchingAlly]
Definition: List[ModelsRequestMatchingAlly]
    matching_parties: List[ModelsRequestMatchParty]
    Definition: List[ModelsRequestMatchParty]
        party_attributes: Dict[str, Any]
        party_id: str
        party_members: List[ModelsRequestMatchMember]
        Definition: List[ModelsRequestMatchMember]
            user_id: str
namespace: str
notification_payload: ModelsMatchResultNotificationPayload
Definition: ModelsMatchResultNotificationPayload
pod_name: str
region: str
session_id: str

Example: '{"client_version": "eHW8TDm6YaI3bJbm", "configuration": "qzkKDumNaGRFytiu", "deployment": "GP4Qm23g0GV7AqDC", "game_mode": "NHn9WMuGACTIreHR", "matching_allies": [{"matching_parties": [{"party_attributes": {"f2ng1ULrC6M2kGGV": {}, "SYJiMozDIDLSf1AG": {}, "cIdO0PtoVRlmnaSs": {}}, "party_id": "RkKxpAzqxfkAO50R", "party_members": [{"user_id": "b0xh3voySxKTjKyq"}, {"user_id": "OFBNTMO4XtN0Tmwi"}, {"user_id": "DfvqF4lFbWhXf2pk"}]}, {"party_attributes": {"f34uwe0jc0g0KTcG": {}, "gVUn2SGjalIHORd5": {}, "MSc0wh9f8IYFWexR": {}}, "party_id": "IkB600BwPMXupgMu", "party_members": [{"user_id": "06QaQhKRlsfdod7X"}, {"user_id": "XAaTPG9iYX9KmWgn"}, {"user_id": "2yrsXdLpY2ANfVfO"}]}, {"party_attributes": {"vbWVT7gjSyJgvH6S": {}, "XgnYmRghSY0okV5k": {}, "GqlHJlPx1btQQzb3": {}}, "party_id": "cPY7qRh6Gcu7Wmee", "party_members": [{"user_id": "WDETtWh74AGOHhNo"}, {"user_id": "9uhUX9tCZ7G2456c"}, {"user_id": "K86p2lPW33kOlDVK"}]}]}, {"matching_parties": [{"party_attributes": {"9jqA4azABoECjfj4": {}, "uLVr3IEFKPxgmrGo": {}, "NfKwvyC4NjxBvCRg": {}}, "party_id": "EceOxAzTUp7dkP2l", "party_members": [{"user_id": "4BWSUVZo3Av2vvZL"}, {"user_id": "J85HXF5Q77JXLrJo"}, {"user_id": "4OGdCCsPWYnz0v4v"}]}, {"party_attributes": {"iW98HntqEWwQ6zSZ": {}, "cwAOZrPuS6LqHKd0": {}, "0gN5iBZf6uUZ7NYz": {}}, "party_id": "R8x2Jij2oLqarisn", "party_members": [{"user_id": "pIh9PDZpMPOVuAAi"}, {"user_id": "E7Dd5Aayu71QOZWC"}, {"user_id": "WTwPuMQrK25frLCS"}]}, {"party_attributes": {"yIjU2sZK9XFdmJWn": {}, "30oDqcmKlo2SUV0K": {}, "I7ZOEE18pBNWwRYJ": {}}, "party_id": "IiXKeEs8hMMq0UKf", "party_members": [{"user_id": "wCv2alRpnSQKMTz9"}, {"user_id": "YJ2DaDseyLlMtx7E"}, {"user_id": "YZWsdTM1BqLYttSZ"}]}]}, {"matching_parties": [{"party_attributes": {"f8kstNnLdytjoaKm": {}, "VHuTXTdLoExthEwP": {}, "fYfwTHKpgLIFe3FP": {}}, "party_id": "Mt1cWIjXmGqRcwkP", "party_members": [{"user_id": "y3LAHYByBERUvFvA"}, {"user_id": "Lu962bJinNRRWDTY"}, {"user_id": "K9XEApAtSSUXq6rz"}]}, {"party_attributes": {"Fr68mcrwXtqZYH4W": {}, "khqXeRybqXgdNhVK": {}, "wl16WBXsGSSL3LPC": {}}, "party_id": "0BhqhlIA4hvgSdjq", "party_members": [{"user_id": "bFFJLbxrs3KS2rJr"}, {"user_id": "rS9h87u1wEKtO0TW"}, {"user_id": "RoZ8ymrH5DHD3Z9G"}]}, {"party_attributes": {"98njE7DHuelKGnvr": {}, "lBnQljal1o8IDkGo": {}, "bGnj2fzUAPPoufH0": {}}, "party_id": "ryl0CGxkkEKe8D5s", "party_members": [{"user_id": "FK5CAK50eX4JYk2V"}, {"user_id": "zvy5hUpDKZfDQ5HZ"}, {"user_id": "wUkCoAgqlaA8XO8R"}]}]}], "namespace": "x6IdpVPi4ZosqCk5", "notification_payload": {}, "pod_name": "GbBMKClm8RpeNQaB", "region": "mHV6sFFfHmauNwMT", "session_id": "DRQnVeSlTBKg0A6p"}'
"""

result, error = create_session(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
