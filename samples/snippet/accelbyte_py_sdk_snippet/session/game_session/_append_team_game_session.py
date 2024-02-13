import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.session import append_team_game_session
from accelbyte_py_sdk.api.session.models import ApimodelsAppendTeamGameSessionRequest
from accelbyte_py_sdk.api.session.models import ApimodelsGameSessionResponse
from accelbyte_py_sdk.api.session.models import ResponseError

"""
body:
Definition: ApimodelsAppendTeamGameSessionRequest
additional_members: List[ModelsPartyMembers]
Definition: List[ModelsPartyMembers]
    party_id: str
    user_i_ds: List[str]
proposed_teams: List[ModelsTeam]
Definition: List[ModelsTeam]
    user_i_ds: List[str]
    parties: List[ModelsPartyMembers]
    Definition: List[ModelsPartyMembers]
        party_id: str
        user_i_ds: List[str]
version: int

Example: '{"additionalMembers": [{"partyID": "agWhNfN42jdeJ3SG", "userIDs": ["Cg0R1yOM42MvEbWU", "uNg1sR031dPmGpKc", "wZkNdp0pJQB1gZlD"]}, {"partyID": "gEj8DHF5WwReA4X4", "userIDs": ["xV1xabKEUBqC8TQq", "fDuDRDJdF3KZOaVm", "5zb0wV2FI1XIehpD"]}, {"partyID": "udn0SMeBEh73CwSG", "userIDs": ["3EuIkiKmto3KqPB4", "ay6bn9y7p7pDrjlh", "YkAKpLgUbYPBlXIl"]}], "proposedTeams": [{"UserIDs": ["IuGKTxZup2ODqwp0", "dzPqxh62tb0SuZFD", "8dJd0u9tbyTgtocH"], "parties": [{"partyID": "rbyXvifjH2GhkQEK", "userIDs": ["PZY3ciwGxQQ7082R", "4vRnYzUTVplra8Ip", "OR57u4R2G6mXcXE6"]}, {"partyID": "v5a5m4Y27h3uqdde", "userIDs": ["XZ0HaAtPHJiKjcJJ", "DERDEOIIl025Yhzf", "TvSixxyMWhxlXWGD"]}, {"partyID": "wRbpTFIO696dZnyC", "userIDs": ["XYmxnZp2G2QbWTVX", "vWRH0SrXnzty1WKY", "mZpGdxpsBegOhueP"]}]}, {"UserIDs": ["zOjL5wHAyAx1jckO", "78UjSz8G0ZyVQgud", "yAeVlXOeMD9p0vIv"], "parties": [{"partyID": "gU5NT1jaT555mBEK", "userIDs": ["WZyxPFXrXg8AzrhN", "6s4PqofHJpYM5ZN8", "u2eVg4TkyHL93wWC"]}, {"partyID": "6ypqeSo9BMolTb9e", "userIDs": ["ECUmJCDXJ2C4vde4", "qKgXy4iTfo6dhwqr", "WkidhSqLAzgqcwk7"]}, {"partyID": "Vmpazuo3a5HhynsL", "userIDs": ["ElCbreQ3R14vQLdk", "9z0zB7TqWc7rils2", "da1glSJfG0RigTCJ"]}]}, {"UserIDs": ["lHG73IXhuFWgH65Z", "YHw7oczApwsiEkqq", "6qmEexTREs2Y9ZPy"], "parties": [{"partyID": "knSoaOiWYEH8095D", "userIDs": ["NuTWUnN9mXu126DP", "98iV3QVK8kDkFSpt", "Dx5YGtcS34fqU3EK"]}, {"partyID": "88T9XfRye1tncIkm", "userIDs": ["a9YUKYesuQhHDO3G", "5cQ2GdNa6C3P6JNV", "lGdFR46KLZAzlDop"]}, {"partyID": "5qdwFjD8RvF60dfL", "userIDs": ["FnpKdQ5zelG4FJAo", "DZG9wBUNXheQ6Mtd", "edOOkcHkrl9rb5Ee"]}]}], "version": 61}'
"""

result, error = append_team_game_session(
    body=body,
    session_id=session_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
