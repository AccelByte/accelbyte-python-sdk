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

Example: '{"client_version": "GPRoHOIV2oXU5nET", "configuration": "fFPfsvrHEeB6Ojm0", "deployment": "zB0Dr63M8kfd8Gsl", "game_mode": "xGYxGKblx06LJpvq", "matching_allies": [{"matching_parties": [{"party_attributes": {"QXDivaXlp8ginzVd": {}, "fb0iqY5uuqe5lxhr": {}, "tB5SiCTrqRKvEUuv": {}}, "party_id": "6pwU2vH0CxBlPYxR", "party_members": [{"user_id": "SQvIz5E0Rux3Am1c"}, {"user_id": "lWRmrQUscjFR42bU"}, {"user_id": "MMY9TFaWlCN7csoI"}]}, {"party_attributes": {"7TdmVyn8ZC9jwzqu": {}, "R27xw1ESRfacM8cs": {}, "ngeQYFnehRm8C72T": {}}, "party_id": "RevpsGa0sVNHJtuy", "party_members": [{"user_id": "KcvpvweC24ENnHlg"}, {"user_id": "M4pxMJlj5BcVtQBR"}, {"user_id": "0JJ6dlz4jZRCqSj9"}]}, {"party_attributes": {"GtGXGIoqQHegNplX": {}, "rs26yHI0oGobTtVt": {}, "9N1SgDDiS3eXkdzo": {}}, "party_id": "ppk5kHf4HW7wWyT7", "party_members": [{"user_id": "QVyMepcY0Nfj8YcC"}, {"user_id": "iv7HvjmwTuMVR5oK"}, {"user_id": "lHgCNwEU9Iox7ZUi"}]}]}, {"matching_parties": [{"party_attributes": {"34z2hEDb0KEqtz6n": {}, "MPVUV3J5SgCzXKdv": {}, "6jKnYQHft30CrsJO": {}}, "party_id": "Y68yJ02SOlmtY3WO", "party_members": [{"user_id": "SswPsnDlI8FugofL"}, {"user_id": "lvW2TkHom3vWOnbn"}, {"user_id": "cUWxejxyddMQNnPm"}]}, {"party_attributes": {"OPIHAON1Xx7H8HnY": {}, "S1hAU6QPo0HsJDLn": {}, "NCLDP7pnkGdEpen2": {}}, "party_id": "QBRFfgqGSPz9BXvf", "party_members": [{"user_id": "HNI1JO9SX6b68x6M"}, {"user_id": "b9bUU6Yl2gvOnaM8"}, {"user_id": "7ZFuz9BWcXrOrbrv"}]}, {"party_attributes": {"w9He2pewzAuHjhNN": {}, "iNWZqAAzRtPwFJYl": {}, "cgSgSV12tqxeLOw8": {}}, "party_id": "UoPs3OraqA2fLfH0", "party_members": [{"user_id": "JORnvRj3UbVXobnn"}, {"user_id": "tiz2tSDJ3ZQB8Hsa"}, {"user_id": "bpR0p9vToZoHKFCy"}]}]}, {"matching_parties": [{"party_attributes": {"f9ZR4DTVQyr2boSE": {}, "FZyZTGXsd7sRjCzP": {}, "CBJyonks5HkJuyGX": {}}, "party_id": "6dyBGjwMuN5g0jNk", "party_members": [{"user_id": "2v5zNxB8nZkRkKjy"}, {"user_id": "S8YeXAOXKBHoB5zt"}, {"user_id": "PcerXg9aXJz9hG9p"}]}, {"party_attributes": {"0ZxjhpleAIHtS36S": {}, "TN5cTFKblahKkHCC": {}, "VH9CQZBEIqQE8xTG": {}}, "party_id": "bcch3kg4JDFJOKto", "party_members": [{"user_id": "VMqBA5jKcYnqgzEW"}, {"user_id": "AWGKxcKUbMcwd8CG"}, {"user_id": "YM4FrvghSzCtNMLQ"}]}, {"party_attributes": {"LmtxuxAhQWJXaeF7": {}, "C72VaL3KRl4E9Rky": {}, "uMpgBrqZjnSjIPSU": {}}, "party_id": "mpYYCsSbMgZGmGYw", "party_members": [{"user_id": "PbZTgxc65Jlvi9e1"}, {"user_id": "6e5S1YURZQfGtWQT"}, {"user_id": "0Gk556hHMcfo9YDH"}]}]}], "namespace": "fjyJd5MEzLvxHPWK", "notification_payload": {}, "pod_name": "QK8xKzzerxypSWPk", "region": "xYaXdxnVxtf8fHav", "session_id": "S5Up2ctXssyJriG1"}'
"""

result, error = create_session(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
