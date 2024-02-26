import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.matchmaking import store_match_results
from accelbyte_py_sdk.api.matchmaking.models import ModelsMatchResultRequest
from accelbyte_py_sdk.api.matchmaking.models import ModelsMatchResultResponse
from accelbyte_py_sdk.api.matchmaking.models import ResponseError

"""
body:
Definition: ModelsMatchResultRequest
match_id: str
players: List[ModelsPlayerResultRequest]
Definition: List[ModelsPlayerResultRequest]
    results: List[ModelsResultAttributeRequest]
    Definition: List[ModelsResultAttributeRequest]
        attribute: str
        value: float
    user_id: str

Example: '{"match_id": "RmYQQtkhhOGvVv3D", "players": [{"results": [{"attribute": "eWtKJEsimbtGQFsu", "value": 0.288744719375319}, {"attribute": "F7ETXZbC6qo8tzfs", "value": 0.39743974018749684}, {"attribute": "rvDsG2ScyPxxPgiE", "value": 0.8818814075657719}], "user_id": "esFZ4I1vEin0D4dN"}, {"results": [{"attribute": "FwFBKsycB0gVihOK", "value": 0.4259651095808965}, {"attribute": "UyzEpRMt13oTeLOo", "value": 0.7345557325993506}, {"attribute": "BzhDiPimXB9Yk9Gy", "value": 0.46017172560818564}], "user_id": "DpppidTCC0hV5iGf"}, {"results": [{"attribute": "VrpngbFOV2HLXIzx", "value": 0.8586964595055127}, {"attribute": "Yrgir4TPGcJRNEeH", "value": 0.6498079351814847}, {"attribute": "8ltIabW4YaGtOu98", "value": 0.005743916130535931}], "user_id": "3GNU68E2qWDBD4bN"}]}'
"""

result, error = store_match_results(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
