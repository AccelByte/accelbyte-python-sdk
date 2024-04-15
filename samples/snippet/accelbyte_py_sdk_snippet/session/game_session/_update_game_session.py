import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.session import update_game_session
from accelbyte_py_sdk.api.session.models import ApimodelsGameSessionResponse
from accelbyte_py_sdk.api.session.models import ApimodelsUpdateGameSessionRequest
from accelbyte_py_sdk.api.session.models import ResponseError

"""
body:
Definition: ApimodelsUpdateGameSessionRequest
attributes: Dict[str, Any]
backfill_ticket_id: str
client_version: str
deployment: str
fallback_claim_keys: List[str]
inactive_timeout: int
invite_timeout: int
joinability: str
match_pool: str
max_players: int
min_players: int
preferred_claim_keys: List[str]
requested_regions: List[str]
teams: List[ModelsTeam]
Definition: List[ModelsTeam]
    user_i_ds: List[str]
    parties: List[ModelsPartyMembers]
    Definition: List[ModelsPartyMembers]
        party_id: str
        user_i_ds: List[str]
ticket_i_ds: List[str]
tie_teams_session_lifetime: bool
type_: str
version: int

Example: '{"attributes": {"l33PkHxx93r4wcwm": {}, "QeDv4UCwo8qoJWG9": {}, "bxZEcXMfHi8olGjY": {}}, "backfillTicketID": "uxVB7MMPJxX99yN8", "clientVersion": "6MKvEPWcJOcz6XL5", "deployment": "ll52ikTDM0pzzASd", "fallbackClaimKeys": ["4giD2sfxp1AoU6YU", "60eJEVyZqIvZAhnO", "iMHWYxP6sMllqEdV"], "inactiveTimeout": 70, "inviteTimeout": 93, "joinability": "SwRjEBNOs6Z0BqFk", "matchPool": "MctgKIIhfiTa0V9i", "maxPlayers": 35, "minPlayers": 15, "preferredClaimKeys": ["xClW0WAotkhcOvbW", "Rg4kGShPdeSqHpSE", "EvDJkphqQc4tM8YQ"], "requestedRegions": ["Pm5I62JioS0Of5g7", "tFfQx49Fxv83JFJa", "hqw7tCRgnk13qSMm"], "teams": [{"UserIDs": ["QmiVMDINUYVsvja4", "kmk2gBhQz8He2MWc", "8SLvtOJTZlilIWw6"], "parties": [{"partyID": "N7n4eqPjDgXWrv48", "userIDs": ["ukiPI3NxlhbMljwT", "bxT0RG7jmopmJe5Z", "bE5v4wAPgHIEHAEL"]}, {"partyID": "AW2ixpiEpSI2gfX0", "userIDs": ["4PX25nR8fETS3Hyy", "xlYsJmnDvdoE1iSl", "thBCbjdI9Z4j2STh"]}, {"partyID": "bCz7EYUbdC1h8Xvq", "userIDs": ["4BOciH00EJSAzVa9", "Q2gttarQeNCwYWWh", "49HSduWeJpummOb4"]}]}, {"UserIDs": ["2AQhY9Yqaak5QfSI", "Jxq7NUOUz8uPPVhU", "76M6SfJUQ15TgoUC"], "parties": [{"partyID": "OLOxRoh9YozswFw4", "userIDs": ["JLKTMoQ9QbnTWiQ8", "qgBP4ATZpQPQ1sYJ", "9KkHxwb2oAVWdI3F"]}, {"partyID": "DucGmWQeWUerpNxw", "userIDs": ["NOimS72ED9eIW97Z", "w4XW8wpEOzyCRKOv", "aGOhchrZkEFyTV2d"]}, {"partyID": "LEw3RXec7iChjCJp", "userIDs": ["qwSWE7epm0ubwYPL", "U7dn1VFt51bOhFMW", "ybnAT0Xa8YSZa7kw"]}]}, {"UserIDs": ["hEvBsc5Mdg6jOxn7", "e3nhxfgeevk9BKK1", "bMsu3yo0Cbt1FC9h"], "parties": [{"partyID": "JF5D1i0hgNHVP04e", "userIDs": ["l59aIF30DvVzYBh7", "qdDErItrqbiaxgg1", "GX7KO7uUycdygpKw"]}, {"partyID": "hk5XYkdCewIcmkDV", "userIDs": ["eHOal25DLOBqO1Pm", "XI1X3qoCDMBQRVXU", "o6CLfyqQO5uJCflN"]}, {"partyID": "M0IL8zl5zut57N2S", "userIDs": ["me9IW1gu3W2ItyNp", "pn03M6Ojvt7dGxfN", "fvv4kydLAzXB8Aki"]}]}], "ticketIDs": ["6BvbE9UG8emRDOda", "tNr6SRHtFz1IKnFz", "tp63dttFYi14bQwp"], "tieTeamsSessionLifetime": false, "type": "gAIowNNjBariPXtO", "version": 34}'
"""

result, error = update_game_session(
    body=body,
    session_id=session_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
