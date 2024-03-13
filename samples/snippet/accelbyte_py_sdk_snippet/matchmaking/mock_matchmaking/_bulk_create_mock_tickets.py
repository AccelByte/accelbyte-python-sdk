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

Example: '[{"first_ticket_created_at": 76, "party_attributes": {"tzGhezixzE9hwvVw": {}, "p7nZH1Aq9bSs6q8Z": {}, "kkdWoSmuT2RTcMZC": {}}, "party_id": "WWTj5fr9o0cMKmeZ", "party_members": [{"extra_attributes": {"7FXXlDVzun1lGT6o": {}, "C0KixSq6Mzhucide": {}, "UYbHI1rXSGp4eEuA": {}}, "user_id": "ScZiVu9O0EomzteV"}, {"extra_attributes": {"4lHDRvyRSicq2iPj": {}, "0i3LqBQPBUaU4qwc": {}, "cg6JjHSnWJbWyM1p": {}}, "user_id": "mYDIVVNIyAPdobXw"}, {"extra_attributes": {"gzTl7RRGEFXnJAmO": {}, "vQrspNpRBJoFb7kw": {}, "lUNcaGcPOywkje48": {}}, "user_id": "CDoML7oICHZChvWU"}], "ticket_created_at": 4, "ticket_id": "h1FOQT3pBOfnCDZp"}, {"first_ticket_created_at": 94, "party_attributes": {"ohKvpJ1e5RY0NMrl": {}, "iIJdd8iiia4Z02zL": {}, "Puhck5GiTeuS7ZUa": {}}, "party_id": "hWQwxpYonDpDQBiz", "party_members": [{"extra_attributes": {"Hal9fZ7j0uFFN1Jh": {}, "iqSgvtBD9s62Ye2Z": {}, "sXD3WqHSLlcbPFIx": {}}, "user_id": "GUewiFknKbbW6fDK"}, {"extra_attributes": {"kwC3Grn8wsHgga7A": {}, "Fwd8uL1SsgVt0sLs": {}, "KRygdAtRHNcaBZiB": {}}, "user_id": "KG0cLM06boF6TVmC"}, {"extra_attributes": {"d7glXlxsWHuOBQXb": {}, "gqlKkv0WLbdTkNeZ": {}, "t0FuZog76DKBG2Fi": {}}, "user_id": "CrDgLEgfAEFdJZUB"}], "ticket_created_at": 53, "ticket_id": "tHAYcogFMRJ3tznG"}, {"first_ticket_created_at": 25, "party_attributes": {"RulT0XKG9FUaV6ME": {}, "IYruMNE8tBemlyJA": {}, "XF99KmOxrzNCMlB1": {}}, "party_id": "K0ptNPD2Y4KBIe4x", "party_members": [{"extra_attributes": {"lsu9wp88md5fKC7U": {}, "v8nqJ4URVdfnqswG": {}, "PGPChe7ep8qpultL": {}}, "user_id": "BivUxECMNes5WfQY"}, {"extra_attributes": {"SSDlmEiq4LpjEx5P": {}, "FlGeH2NcrddAU1Hw": {}, "pnqiO7fIAMrJGK9h": {}}, "user_id": "BDDKIyeXDce6yXnq"}, {"extra_attributes": {"PswGttNLKUQySNoi": {}, "SpgCPYQl4BujZUuv": {}, "J0qkySQHK6Cau2jn": {}}, "user_id": "Ic796xa0B1KdrGFK"}], "ticket_created_at": 86, "ticket_id": "HxvyTxkeTGWhxjYS"}]'
"""

result, error = bulk_create_mock_tickets(
    body=body,
    channel_name=channel_name,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
