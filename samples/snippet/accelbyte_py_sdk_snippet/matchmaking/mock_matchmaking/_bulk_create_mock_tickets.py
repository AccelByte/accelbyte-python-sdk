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

Example: '[{"first_ticket_created_at": 87, "party_attributes": {"dPHZ1h0lGcm9Dani": {}, "V2hJfcZ33t898roH": {}, "wbc0bdyLJzJgwhAj": {}}, "party_id": "Fj6NUPdXle7djhbB", "party_members": [{"extra_attributes": {"9MzRa2I1p9BwXtbK": {}, "6xvYx46jestfRS1k": {}, "op4D9XskV5myZm4b": {}}, "user_id": "oNnqwbrb6Avmwv7p"}, {"extra_attributes": {"bRuCyP2SuFoSeH25": {}, "LbIw5iDP8hxwRGqM": {}, "OTwwFvDbqt4KgTUD": {}}, "user_id": "qLBq5WQkwKENPXDa"}, {"extra_attributes": {"23PCmZmLZ29R4GR7": {}, "U9Cws5TwUgQ141Xg": {}, "RPrfeOXqWbndZVRm": {}}, "user_id": "S5HTZvOiodtjn3oX"}], "ticket_created_at": 69, "ticket_id": "v1wZqm9wG1ZEOsv6"}, {"first_ticket_created_at": 64, "party_attributes": {"62pGML06sG1Letyh": {}, "7dG9S2EkBSxUriVt": {}, "f0ItP5QaOnhjqYYZ": {}}, "party_id": "qExOMF64GdJ2A1i2", "party_members": [{"extra_attributes": {"eaadtECAnHNFdk9k": {}, "qPm5CEfJr9KvbaFJ": {}, "aVoKULWyAPSrsQQk": {}}, "user_id": "blBE9U6rsoiVC3vf"}, {"extra_attributes": {"h8eyH4zgOgqEtZld": {}, "HYU4w13XZT7sxV0v": {}, "1P6PvxXVVbPMrPKM": {}}, "user_id": "nN7dRvclGZZ0BKaK"}, {"extra_attributes": {"zXQ9zjUEQz1u5AaG": {}, "fWMxqXsqjZbj6911": {}, "17gCzAQYZGdmA1nh": {}}, "user_id": "aOPtx0f3WhqET6yK"}], "ticket_created_at": 46, "ticket_id": "f9qtPjUqOHL6HzjI"}, {"first_ticket_created_at": 31, "party_attributes": {"ipdILgyQu8enJqer": {}, "3I6uD84GdUsOusIc": {}, "cAazRzTl3sobb40I": {}}, "party_id": "36kdaDJiYVJUMIWz", "party_members": [{"extra_attributes": {"2qMwPnERNDAhgERV": {}, "3dOrDyogsYq2J383": {}, "spjDhw75xNfskumV": {}}, "user_id": "sDS9SjK9J1bttr7h"}, {"extra_attributes": {"Tt6N19qRkXligH2l": {}, "huDIDzd6t8OrZofD": {}, "LTsxKIk2KoOh3WEC": {}}, "user_id": "k9kZaoJejT7LFgio"}, {"extra_attributes": {"Xugrjmne0tnDxt1Q": {}, "zTadyhH9d2sy0JCn": {}, "kS7bidB4MGItKLT0": {}}, "user_id": "c40WVHWVgj7239UL"}], "ticket_created_at": 80, "ticket_id": "F2klPD6Z0qLGBzRe"}]'
"""

result, error = bulk_create_mock_tickets(
    body=body,
    channel_name=channel_name,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
