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

Example: '{"client_version": "3F7Cw0xRHP9B8H9i", "configuration": "wqExQwgNEuHYWoWR", "deployment": "iAvi1RC49stSEJI9", "game_mode": "CKsNAYe8czbLzABT", "matching_allies": [{"matching_parties": [{"party_attributes": {"eMgTIXUorBuwI8Nj": {}, "BgeHUNvY9KMvmD0E": {}, "mdIiAfov5V8OYqZe": {}}, "party_id": "IQQpeER7hlSvIYcg", "party_members": [{"user_id": "dxZlLGFEbuDSHPWv"}, {"user_id": "3aEY1Ri64pAmOxSy"}, {"user_id": "hQCyRG3Uur8TAftm"}]}, {"party_attributes": {"utkHNmiNF1ZMS1Gk": {}, "90DiOry5XUHZ4n6n": {}, "HoXPcIQkT75irmIn": {}}, "party_id": "1os8als57MNhmzlr", "party_members": [{"user_id": "42rXjW5VGM0Gie1n"}, {"user_id": "IcTngE5CKVBsML5M"}, {"user_id": "lab90W7xBV718Y6m"}]}, {"party_attributes": {"6aqhVB4nLmWY945H": {}, "7iAE4j9XPMPhQigu": {}, "6zSQLC3cPV87abT6": {}}, "party_id": "iZt3C8LEYfXWRfrb", "party_members": [{"user_id": "EVf2ehOcGl5Vd9cS"}, {"user_id": "2PnMxfbkHDUayCaN"}, {"user_id": "vXrEMSZsT33z5aAB"}]}]}, {"matching_parties": [{"party_attributes": {"pR0cMUtASZtkBNqD": {}, "IMzE9J1qhQUSR5vS": {}, "rIsSBgQMVTHr9NJo": {}}, "party_id": "wDLdProfxXPtGCf5", "party_members": [{"user_id": "UWzo5cuovY4BUf4q"}, {"user_id": "ORaETeQttaBeY4hU"}, {"user_id": "o3uLu81toOFGh6It"}]}, {"party_attributes": {"cAXu02VzLt65zjtp": {}, "Zw2ZslemVDhoYlyR": {}, "xU9NJeIAVXeqF8RI": {}}, "party_id": "PZ7Av4l6Tx2HXfzg", "party_members": [{"user_id": "b4aflWLnldao3LcN"}, {"user_id": "yBwCnm94NGicGRzU"}, {"user_id": "410m6wSt7FHF6prz"}]}, {"party_attributes": {"mvrbPCoHtvz9JWhz": {}, "FMCcUaMzrkQLq4yr": {}, "XlMpjjkPLoADUXiD": {}}, "party_id": "nHbvHTJCwcgu8EH9", "party_members": [{"user_id": "5BnKHdwYpPkjcPk6"}, {"user_id": "vPmmLIXBVWiIyBpz"}, {"user_id": "8NKlnT7ngWiDR0zx"}]}]}, {"matching_parties": [{"party_attributes": {"bo9skxkbHtQqEVrf": {}, "vKjaJRwAOgvKC8VJ": {}, "wwHtyxlE6zN9pwNw": {}}, "party_id": "j4QS2up7os5fvr5J", "party_members": [{"user_id": "rz9z5zHpBdlhRdMi"}, {"user_id": "Y7Pd6va6VnoJcm5W"}, {"user_id": "zrZ9lyADTc444eMs"}]}, {"party_attributes": {"eGtTsMs4Z0YhTC0N": {}, "llB6N9auo8WJsiIh": {}, "FqnQ7Vo5NkMA7GHt": {}}, "party_id": "HtMMRK6DPbasLZiq", "party_members": [{"user_id": "xcF6c0h9XRJQsX0N"}, {"user_id": "HNKB2vq3K1daBx6d"}, {"user_id": "mjiyqWKPA2VIxUgw"}]}, {"party_attributes": {"Ha4NWtE4Vdad588z": {}, "nPYcSYQUkXXLPxnW": {}, "COUoeK4Fzdng2DBz": {}}, "party_id": "KCZgf2DMQ770bc7X", "party_members": [{"user_id": "pW5IOJINZ0zy2vub"}, {"user_id": "V09i271mVtJMkaML"}, {"user_id": "pxvfPs25MY4EbALz"}]}]}], "namespace": "8buX6rlj0YsXe6wn", "notification_payload": {}, "pod_name": "3LjoRFdGv7Q7XuBF", "region": "31IXijyDskPABFhX", "session_id": "4eWbCpXkjms2uxMn"}'
"""

result, error = create_session(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
