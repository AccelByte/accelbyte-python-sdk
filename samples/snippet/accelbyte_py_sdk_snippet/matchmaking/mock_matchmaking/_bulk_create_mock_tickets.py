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

Example: '[{"first_ticket_created_at": 58, "party_attributes": {"NDYrRcxGUlBMFT6A": {}, "RqUZeONtGwSmtOHm": {}, "Zn1ib6ZYUnBiMHkS": {}}, "party_id": "HUVDcfsaP0DWsumV", "party_members": [{"extra_attributes": {"OePPJYMX16YPZqIe": {}, "GXmAAVzvgdN52lEp": {}, "5xLG3X1O2coQrK5m": {}}, "user_id": "LzQxZ7jS3dPoLOic"}, {"extra_attributes": {"PhzAxEHT7ZnzRnvh": {}, "54xzlT9daOP3ChBG": {}, "sJvRyHeZ3x6upZ5f": {}}, "user_id": "Jglie6FjMI1DgLaA"}, {"extra_attributes": {"wGhp7Am5jjMjGxNK": {}, "tkzWZYDd0OkekFzv": {}, "FyWtwUzWidE0E67D": {}}, "user_id": "RFoVEaHuPH9wsJ9k"}], "ticket_created_at": 52, "ticket_id": "KmIwP7jOPV2VNv70"}, {"first_ticket_created_at": 65, "party_attributes": {"rTiqUZaFMM4BHqAC": {}, "bMvtsbAIY5ycUn9K": {}, "rAGLtVNnflFPTwyn": {}}, "party_id": "5DJlr0UCcpwFMuVm", "party_members": [{"extra_attributes": {"TFWxxYWfV6EMbWjZ": {}, "iB1dlw3z3R2gDcgL": {}, "Y7JIiAT5DJVZTDl7": {}}, "user_id": "YqukGzKTiyoU3sBY"}, {"extra_attributes": {"vhsgAS8P8BhVPX8x": {}, "freS6O0VybAwOKRa": {}, "TRZhZqqm21orgpE8": {}}, "user_id": "Q6xQKXecdJW59wKn"}, {"extra_attributes": {"bLs4YqexV4fOhiWU": {}, "HKQBz1KuSMzj2gaP": {}, "OQHf0eCA0Q7GFf5c": {}}, "user_id": "XYECvwaodV7Mp7kR"}], "ticket_created_at": 96, "ticket_id": "7OuufHSoEzzIp0f5"}, {"first_ticket_created_at": 30, "party_attributes": {"Mf4XgcYI5RxsDogq": {}, "wbILPPDt0qdjgJvp": {}, "ysP4iqKby8n1bSGy": {}}, "party_id": "xfz16GPXaqE9PheN", "party_members": [{"extra_attributes": {"zzdt8rNvLmISM7aS": {}, "zbH3BbKQxWeKp1Jl": {}, "aXTlH7fi19On2HzM": {}}, "user_id": "91FHvg10VLBCLDqz"}, {"extra_attributes": {"NJvvaCYlZXRwPkxT": {}, "2z3KLfItqE1Mx3FP": {}, "Yj6Wa6GbulKEx7nO": {}}, "user_id": "RVW1vLMKNUPFp5De"}, {"extra_attributes": {"X7gP1010u1hdHnkA": {}, "QysTzsRs85B5O1OU": {}, "blNCnPBBvsA9qlln": {}}, "user_id": "kVWlSO5C1SzacT1l"}], "ticket_created_at": 31, "ticket_id": "Iq7SNqzDcfM6g4RR"}]'
"""

result, error = bulk_create_mock_tickets(
    body=body,
    channel_name=channel_name,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
