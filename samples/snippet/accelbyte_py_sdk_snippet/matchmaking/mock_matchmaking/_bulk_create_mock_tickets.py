import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.matchmaking import bulk_create_mock_tickets
from accelbyte_py_sdk.api.matchmaking.models import ModelsMatchingParty
from accelbyte_py_sdk.api.matchmaking.models import ResponseErrorV1

"""
body:
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

Example: '[{"first_ticket_created_at": 32, "party_attributes": {"pvte3on7sR0eE882": {}, "g8L0qDYO9mpYbuBD": {}, "7avHq1L6tgcWdB4Q": {}}, "party_id": "cibF1gGKbnGyzOLp", "party_members": [{"extra_attributes": {"YpJg6Yw7h2KCubk6": {}, "v5f3lQk2B1pwMCHh": {}, "TrleFx24ooOgrYjx": {}}, "user_id": "JeV3qWhE0HLjmWNu"}, {"extra_attributes": {"DJMRb9X79nSwrTIZ": {}, "zplTo6otDY8gLfg8": {}, "DFopMJIlVqC7UvXd": {}}, "user_id": "41RxVAETUQR5u7L7"}, {"extra_attributes": {"Ow16lmnc7WQ5kaeF": {}, "ognZKoKmotC0HmNm": {}, "0RhWJgXDjWy92Y0q": {}}, "user_id": "iwQbHcepNeBSNXA5"}], "ticket_created_at": 35, "ticket_id": "fmjNYdLY0Jc06aMM"}, {"first_ticket_created_at": 23, "party_attributes": {"q2dvSm3lZ5uwZcSj": {}, "WXoq6L6B3lLkn43p": {}, "dWhYcVJ3BJjlLEFt": {}}, "party_id": "TAzl5r0VBQPdTC8D", "party_members": [{"extra_attributes": {"KAX5Yw2TiqJIPnYk": {}, "2T49lepOWTkloovF": {}, "70DS3CtL5xYvGIp7": {}}, "user_id": "IdBd4yEpmOfVfWzn"}, {"extra_attributes": {"NUzxPNVMykBns9Fp": {}, "7ryrSYMrOLPSzUtl": {}, "eqnpC1JJGHmWxuip": {}}, "user_id": "JwaRBOAWvlXgfVpR"}, {"extra_attributes": {"GmoKCIbOwB1OC0Gh": {}, "ZLl68VoyoaoKsMSV": {}, "RF4PvMImv0GFecPY": {}}, "user_id": "ZEj8j1agQ3V6VIaK"}], "ticket_created_at": 72, "ticket_id": "d1vT5vWQEmwC8ORl"}, {"first_ticket_created_at": 17, "party_attributes": {"i8bVwIpCjTgS1ms0": {}, "GAsv3gRIeekrQHWC": {}, "K1Zb1MxZNwM6HeFS": {}}, "party_id": "i53FkdBQGNetLMUm", "party_members": [{"extra_attributes": {"9rr9L3zAwzJAbSSO": {}, "ShjZpRXYN9aErXTU": {}, "34nh5iHyDgdoDfrB": {}}, "user_id": "ankUSlyNxHQGkl7z"}, {"extra_attributes": {"qyjGU2e2colMetOo": {}, "pJoNnU0Max8KP5ho": {}, "J6Q09fR8ezH92rCu": {}}, "user_id": "rF1ehXuDzYRfVMsO"}, {"extra_attributes": {"PoGEiheUO4PfYQVh": {}, "0LTsIBA56ZQuFXaL": {}, "2xicoVDQ1xZRSYYa": {}}, "user_id": "2622bdu8MfdTiK3v"}], "ticket_created_at": 19, "ticket_id": "077RXsW7A9uSZnMV"}]'
"""

result, error = bulk_create_mock_tickets(
    body=body,
    channel_name=channel_name,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
