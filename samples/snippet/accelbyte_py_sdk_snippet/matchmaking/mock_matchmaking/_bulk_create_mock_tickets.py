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

Example: '[{"first_ticket_created_at": 52, "party_attributes": {"kCHsGW5TqKXYvhGK": {}, "RUtp19f6ERe0Da1D": {}, "mNwsWFfKU1Lp1tJL": {}}, "party_id": "LadEGNHr8hNoitK7", "party_members": [{"extra_attributes": {"NgqDf5bhNL7uLCWE": {}, "ZUTjgDq1WPwE71JL": {}, "gmTRn2yjrIFWd687": {}}, "user_id": "3MjdEDpVAirELeJD"}, {"extra_attributes": {"KoY7DnrjfEJDJCn3": {}, "2UVs2h8NIHRuq6nt": {}, "HtJmaNnlbOrEIaxD": {}}, "user_id": "4AkaBE5rlfXCcXhd"}, {"extra_attributes": {"K8q3Xv0aQuBA9sLz": {}, "4omxyKl20QNM3I6F": {}, "JFYIMSqKqjhvXk0L": {}}, "user_id": "oDWglmotqWfKi1EW"}], "ticket_created_at": 22, "ticket_id": "u5nIO1iPp7ssr8wR"}, {"first_ticket_created_at": 84, "party_attributes": {"QJ3nInRHpqPFqU2y": {}, "Tei1q5tOh3ieYekg": {}, "U091SMrnq16zh645": {}}, "party_id": "fYNemRN6sFPUIWbN", "party_members": [{"extra_attributes": {"RxYrPqB9HH8bY5kz": {}, "E8J919q1RtQw25DX": {}, "pfaaCVn2rge6urTA": {}}, "user_id": "XqW9EnTuCgF2EA3i"}, {"extra_attributes": {"cNce9vq4n72o50ty": {}, "EyofbZ51B08MuZdk": {}, "IvnuknSzMyrP315l": {}}, "user_id": "t96Y7WKomRjoXIGU"}, {"extra_attributes": {"oa0wgBnNZvRbIHZ6": {}, "9bh71D3n7UA0ZZMe": {}, "yJWDQiiWreGT0GZI": {}}, "user_id": "8w8OJbCiI1h9ywhH"}], "ticket_created_at": 28, "ticket_id": "d9AGDiz6tnXxmMRv"}, {"first_ticket_created_at": 70, "party_attributes": {"iblw7Vm7bYcue47i": {}, "KdprfdO1SKeokq3w": {}, "knz34BvPSyCG66yW": {}}, "party_id": "LMVPrvsvyPsHMSzQ", "party_members": [{"extra_attributes": {"mwGgsLJTpccL0QTy": {}, "hgSExr0Z4KRO4n3r": {}, "gZIn7hIOQbfO0qDW": {}}, "user_id": "6SNKG3bMuf6HR945"}, {"extra_attributes": {"ouOL9MWoGKZLPZ8c": {}, "K5acsHF49W5klqAi": {}, "5ijpWAsPnrE6aXOE": {}}, "user_id": "LNp43b67OfOMqjUo"}, {"extra_attributes": {"kf1wCorkN6brw3uO": {}, "PZqRXYgoSbsTNezO": {}, "DJ7HJAgtbPUMi4yC": {}}, "user_id": "QQLuqbu0spGSuTSd"}], "ticket_created_at": 5, "ticket_id": "iAPfI5qRBNxbbIiE"}]'
"""

result, error = bulk_create_mock_tickets(
    body=body,
    channel_name=channel_name,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
