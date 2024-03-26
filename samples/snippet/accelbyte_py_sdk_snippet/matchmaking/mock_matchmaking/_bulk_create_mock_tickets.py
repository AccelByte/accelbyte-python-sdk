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

Example: '[{"first_ticket_created_at": 67, "party_attributes": {"EFN9fn9jAFO0hmF1": {}, "k6l28aXpZSutLedN": {}, "hcORcab4hsbqmlul": {}}, "party_id": "jc0RuZiUDVZKO43f", "party_members": [{"extra_attributes": {"KKVpO2qC4pBJxgCY": {}, "MXuof914UZ762K8Q": {}, "Xmc4p9FuBYvyu4DU": {}}, "user_id": "hDzcw82s16Aky0hL"}, {"extra_attributes": {"mVpnROZQ9mROgjRY": {}, "xiolCocuerLJH6Jt": {}, "KnJfImO0UDPQ2XOV": {}}, "user_id": "Z0afWT4Qfb2QqMvd"}, {"extra_attributes": {"WQfRququCjtiumdO": {}, "tBheCP0xsmkSkE3I": {}, "8JOsJZvOpiEjH8mH": {}}, "user_id": "clQaT6g7WwAMTi5c"}], "ticket_created_at": 63, "ticket_id": "5SicWYYJgQ3LGWn1"}, {"first_ticket_created_at": 32, "party_attributes": {"O8d9HF5mUMnQxMc5": {}, "bfBepD79jlT20d1c": {}, "76a8LlAIbj1h1sl6": {}}, "party_id": "H6fRj1ucnRAelzbd", "party_members": [{"extra_attributes": {"KlTAz95FTeX05gZ5": {}, "9e1wx7okjCoNEkEE": {}, "Q2NFjclPOnuF9MXw": {}}, "user_id": "HwLjjQRKK4NaRC4v"}, {"extra_attributes": {"BWfgSmLjR17T3ftY": {}, "nh4VjL54bcZ7C0FY": {}, "xLfUuFRQA46ARdQA": {}}, "user_id": "hU25lFoEb1O6SpVR"}, {"extra_attributes": {"yZ5rQnZBsHPajjvv": {}, "e6yCc0dS964tgivo": {}, "cgJLjmdJnVQYeosj": {}}, "user_id": "ZXroqFq8KzzbLmnP"}], "ticket_created_at": 91, "ticket_id": "BbaO2yXV58d8LCnd"}, {"first_ticket_created_at": 11, "party_attributes": {"kAV5NnPFfXt4b2sk": {}, "IFzu3fReUvb0SxoQ": {}, "qPa3ycrPZkYSwKAj": {}}, "party_id": "teFjJK513s7MO3JQ", "party_members": [{"extra_attributes": {"lhvGTEaGeMYTnGsM": {}, "avnw0g6C9mmQ4GiN": {}, "FF1mKMz1msldYnoW": {}}, "user_id": "9a5rEc3edYXWQNVf"}, {"extra_attributes": {"dSGzLnWmlmzfik6P": {}, "Ibrfr5BwK9j0FbPK": {}, "jD08Nm7SSyJ6rSes": {}}, "user_id": "hSxAbvZPck5aUfjk"}, {"extra_attributes": {"XCwBLpfVpVLPuXUa": {}, "OaE09mT6Agg0NjN8": {}, "Y1fohLpliND1qW39": {}}, "user_id": "EWeSIAC4uh2HhbfJ"}], "ticket_created_at": 53, "ticket_id": "vQwC6rv5C8uPuf98"}]'
"""

result, error = bulk_create_mock_tickets(
    body=body,
    channel_name=channel_name,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
