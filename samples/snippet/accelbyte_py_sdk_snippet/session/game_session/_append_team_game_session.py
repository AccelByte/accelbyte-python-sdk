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

Example: '{"additionalMembers": [{"partyID": "6cBljzkqVCHgsX1l", "userIDs": ["BVw9zGKdgXeJM1I4", "XQLssuy2xbQLqpGi", "bKLYIIg15wgwOOzQ"]}, {"partyID": "Rtli4uQSwwhcb4hI", "userIDs": ["eny04HHkIbG9OxAJ", "gdXUu3SiHiEVT4xa", "adp7tA0LzCPhccFj"]}, {"partyID": "agxrUO4tHmp7AU1I", "userIDs": ["INGZEym6ss8HBdnt", "WAiXCReykPUjcnri", "pFiPFC0Xgk2gvh6N"]}], "proposedTeams": [{"UserIDs": ["Zm7Y3QaewFioFA6n", "nJuD6adJ4pksl4ls", "ZOLfV4JOIKloOkRQ"], "parties": [{"partyID": "huGJ8m39mTkBDbjE", "userIDs": ["oNfJpp7FkntPUjxH", "OXnkzCp2A3TJkqLZ", "S2QzIt8hzfg2OUIV"]}, {"partyID": "xLc68YSoFhGSxAVm", "userIDs": ["ql5EyrC2yLBODp1J", "xoKAIbwtgqCGGOOi", "qo1yENiLYkqhHBV4"]}, {"partyID": "DOnS89OyUUvsJNcr", "userIDs": ["VxfvRVuo7wxQ1Tkc", "l5uu5YHqGVqMlvtm", "l75jREc44LWAs49Q"]}]}, {"UserIDs": ["eQ11Kx1sww1S4R3f", "Wf5hmndPYD4vSFeA", "vPQok2m5ulnUxRGd"], "parties": [{"partyID": "cYOdf7P6Bav09s6u", "userIDs": ["2WMSi29JEULYgEqf", "1xGCcoSlfmKeH0Ga", "zsEUPdKZboAcxJLC"]}, {"partyID": "0gy2Dc7Ul5acSLNJ", "userIDs": ["uyf8d6cYM8GKKmPy", "EyJpdP22rHmtHeHS", "tWGChPzmWaHJDcQx"]}, {"partyID": "cFT61fIEU3AOQUM0", "userIDs": ["AZN31bBbTFTZxn8J", "pIOBoFp48WNWoEwP", "ddP3biFA9HmNR6Wi"]}]}, {"UserIDs": ["64C0TFpCK53vRd6M", "9pjSdnhZIKiRBBpZ", "tmkISYHjDh5aVLMl"], "parties": [{"partyID": "8klliBceQFuz0Ejk", "userIDs": ["KoG40DfLw5LAMXA0", "64LgOc3sKptsY3tS", "M1k8jeO03zSn8z2Q"]}, {"partyID": "of0UBsyDlitsRCbs", "userIDs": ["stQ4YFbWAuVJGr0a", "93w4H9vNlQpNlO5u", "VKXrlV22wxxUHFHx"]}, {"partyID": "rv7fMldLtEYsE24u", "userIDs": ["2l67nrkBP5fuNBgC", "C9K7Xdwf9YqoQMQc", "KJrVgJgEvbXhKA0A"]}]}], "version": 39}'
"""

result, error = append_team_game_session(
    body=body,
    session_id=session_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
