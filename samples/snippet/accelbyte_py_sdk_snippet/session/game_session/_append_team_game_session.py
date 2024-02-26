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

Example: '{"additionalMembers": [{"partyID": "rDjKcmIEjNb1Azqh", "userIDs": ["njZnAzBb1etgj13p", "IlbjB70pAHaZ1v5J", "PAFUIfRgmwmdQvX3"]}, {"partyID": "QvIJ7U7hp44XoFzW", "userIDs": ["PM9lhmtmVmHPaG4I", "a84bvHxwxQEF0hsc", "0bRs0FjsQGTbzPtL"]}, {"partyID": "xF9BlIZjlSE5M9HC", "userIDs": ["1L35GS461I8SgMr3", "C6fAuBXSbQOBC1o9", "llm89vq8MuaR6IQx"]}], "proposedTeams": [{"UserIDs": ["5eqKPG5RPejQ6rsj", "agqFtGIxrOzGGO1e", "xt83Knb3bsDV1VqZ"], "parties": [{"partyID": "kHV9ST8olxQA7Mke", "userIDs": ["BK8fwDl1iPPH8mky", "krb3WK8GasGq21V3", "6vY9IrSEgPIB17nS"]}, {"partyID": "NnejtxJQjtTgnJOA", "userIDs": ["l64fEYNijj1R7AMK", "I1xAuVNE68YnzORb", "cWuKFmjJYSR23OOA"]}, {"partyID": "e895oWUzm37PyWe8", "userIDs": ["FTSMfV38jpqgGyNv", "VCGKuAbwFK04MMUU", "ThF24pRy6eEHNXgV"]}]}, {"UserIDs": ["22mJBS4ZyuQv2U50", "0AlwJK2ersUsW8C3", "NEM7Iiz8wIRxvEXT"], "parties": [{"partyID": "fDbCBOCKndEhlMoa", "userIDs": ["89Ea8BtgxcNGn8HY", "i5WEEDs3JrKgk08Y", "o0f4zDTnyatsmEeK"]}, {"partyID": "GVXMkyTdNuYgZWVa", "userIDs": ["utZCr7zOC9cLcz5J", "bAC5TaC5H6FqfuuX", "ExHsjIGB8H0XSaig"]}, {"partyID": "Jg1ofKoEJmkbRM5C", "userIDs": ["Bw6pAX9lXvZvP6a8", "ShN1saJVrP3A064E", "hrf529cuiBxf0ZNA"]}]}, {"UserIDs": ["6uPeA3FVB5PnvzcX", "s6KJAopmBEbqyJm7", "RSHbcB78hDf3O3jF"], "parties": [{"partyID": "keB2mVNCDjyDrJIQ", "userIDs": ["LQy9uOwU6PIUa8PZ", "u7l6xUStL9ZfTBUs", "0AT9RESaDDjZDn2g"]}, {"partyID": "tzVPJzciWislUWBu", "userIDs": ["Spfunhx2kVoEHZ4i", "U17wURUfGRDeaF2c", "aPg1FAZPiBz1UmSD"]}, {"partyID": "AiSlhfgPvL6NSuWR", "userIDs": ["2mJ1RCczq3tJSb6Q", "kQqVTfCRTIGANPNn", "eFQY4q0rmaNDp583"]}]}], "version": 24}'
"""

result, error = append_team_game_session(
    body=body,
    session_id=session_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
