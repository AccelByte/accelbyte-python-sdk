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

Example: '{"client_version": "ebVmBKNEa9uML40b", "configuration": "pSxEZeQAMcwgrF1m", "deployment": "eLWxCkje1DdsUsv2", "game_mode": "nwG23li0MRdcZasE", "matching_allies": [{"matching_parties": [{"party_attributes": {"51T2kAHWbOWcKt2n": {}, "6sB5TgEuBFausA8m": {}, "bzCcHleZjITBRiEl": {}}, "party_id": "tkk7OsnXum9t8aql", "party_members": [{"user_id": "N1HM9VwrmNip4mmA"}, {"user_id": "6hOhFNKNwgR29BIl"}, {"user_id": "VqUxy5kG6zIv4J4W"}]}, {"party_attributes": {"6J2FE5zBkaZVxav4": {}, "GQVghsVnabeRmxZk": {}, "DpsPXUEglxMxP0WW": {}}, "party_id": "vXjfucWTY9oG4xkG", "party_members": [{"user_id": "GamXbIedWneBGqNn"}, {"user_id": "aaJOLrVeh21e0J5Q"}, {"user_id": "0fQKSQod7zT7mmbE"}]}, {"party_attributes": {"ieOklANqFkvk8Y5q": {}, "c1nvO7d4XlngKrxH": {}, "47kiv6x21aSWcBte": {}}, "party_id": "Bfk3t24pKDLYcSmL", "party_members": [{"user_id": "7aJeMzmZRE52CTMf"}, {"user_id": "ukAr731DedY6NlvT"}, {"user_id": "7elj6ER7VsGNaUNl"}]}]}, {"matching_parties": [{"party_attributes": {"1Ifpc9KR7EVPqQ8J": {}, "nydvnzyBxp9Fhnyh": {}, "1IyQJCIWs1I4iGET": {}}, "party_id": "FYFiwqoD19ObUhOG", "party_members": [{"user_id": "YbEm7BhFcz7TUBje"}, {"user_id": "2rEhwJxzCVG2lyNh"}, {"user_id": "TiXS4INkcutJsTdH"}]}, {"party_attributes": {"4Y9BEZP1NYWYZwUs": {}, "EFh0JP5KYGROn9wl": {}, "hS7DbEOv60qFuYHZ": {}}, "party_id": "A7JiqV6M6Hqv0efo", "party_members": [{"user_id": "YkkyIv2Cor4p2VvK"}, {"user_id": "t7GH5IGRprFQMB2G"}, {"user_id": "8MRHChFTZr8zmmle"}]}, {"party_attributes": {"LZ8P2dLrCdrPKcZv": {}, "znjTWBtnN32bsrBf": {}, "4STmYefXeRfUvvuU": {}}, "party_id": "GAjdi5Qr4gcY8a6G", "party_members": [{"user_id": "6crQay1TjNMTtmWs"}, {"user_id": "1Xqjt20fbX2vaHfY"}, {"user_id": "DTP5zmPuDtuzpEWJ"}]}]}, {"matching_parties": [{"party_attributes": {"WyEPKx8BjNlCqn59": {}, "6mltzXGG5pIaubFX": {}, "arSmaZ1LrYVeDvyJ": {}}, "party_id": "bq53qBS9GfKdZiT1", "party_members": [{"user_id": "1UIctYYMVVw5c1U8"}, {"user_id": "m1Ti88pgdgdAbpe1"}, {"user_id": "QlntFhAuRCblwHzU"}]}, {"party_attributes": {"8RL2qO3EwXTyHNr7": {}, "dOA9gv2bD1nOSClQ": {}, "UQKrQm1KWjnYFgAC": {}}, "party_id": "CPyuf80ss6cpM3VN", "party_members": [{"user_id": "9CJ89PkE4861UgCD"}, {"user_id": "A8xo7LAqvYIHBGZt"}, {"user_id": "qNyu1sTBs2SB09x0"}]}, {"party_attributes": {"1m6KUgsHgbNt6yKp": {}, "T5wz3C7wW9aLiJIg": {}, "v8qvjR0OWZT14d9n": {}}, "party_id": "ymuJXqqGqb6iq15Q", "party_members": [{"user_id": "rhMIXuMaz0SpEHkC"}, {"user_id": "R8JJ6j8maqjBPlwc"}, {"user_id": "cxaDwyGQeprGQP4A"}]}]}], "namespace": "eOnLbnuMEbXUM5T5", "notification_payload": {}, "pod_name": "w2nVBM4TyMAEdgmX", "region": "tAFxJwhjRkqy8N3u", "session_id": "0ubDndjn5LWxhkZL"}'
"""

result, error = create_session(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
