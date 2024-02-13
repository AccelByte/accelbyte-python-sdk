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

Example: '{"attributes": {"stnsJRxRJ2UHzzvL": {}, "aAmTQQ052SqcGJcF": {}, "aiLsEbutyUGtJQzH": {}}, "backfillTicketID": "Tgox4gt5kgmjeNou", "clientVersion": "I8ndFXggPGE7XLbw", "deployment": "eERZswfFLSbIKPSR", "fallbackClaimKeys": ["kvHJVYH4PscBrT6w", "4LoPVk4QqnB8stmH", "pW586sZXXB2EDQAh"], "inactiveTimeout": 63, "inviteTimeout": 49, "joinability": "w5M7lsgZsy0b6JDM", "matchPool": "Mxuga3AFVL46FyJP", "maxPlayers": 30, "minPlayers": 63, "preferredClaimKeys": ["EUCiuio7udFP04bL", "ZL1PTqvQpeJg8IfS", "zC3rVGRPCHhO0vwd"], "requestedRegions": ["iVCal2N2sMW25JFT", "2x5s7fmNiwynMgEf", "fEW11kHS9N6fJiqC"], "teams": [{"UserIDs": ["TojrLPD58rwAsc3s", "mtrVut5ynpTcl1Sh", "FvcjifqBzTbbAhwf"], "parties": [{"partyID": "V84iF5T7bLfuOlaW", "userIDs": ["eMlrUTXS7vUPb85o", "gvi2r6z5XfcWZiKU", "7tyPaNoeVw4tWaBA"]}, {"partyID": "9XyRWYKEzoC26nqQ", "userIDs": ["69A8Mp1yjXrEAwF7", "YlCSF52t5WEGif4h", "rLO8dfB6c9vY1VJu"]}, {"partyID": "v6aDMhsTjU2xwjfF", "userIDs": ["xFNH9MM4TrfxmDJY", "BHeNF02Dgp8W1icK", "bYxL6WmefvQboSH3"]}]}, {"UserIDs": ["hvD6GyYDEAZ6PHBT", "awn7MTk5XwXJKxtQ", "oExk3SKqjNiUnfoW"], "parties": [{"partyID": "AdT2gudlOSKcfsFx", "userIDs": ["BlIQ3KKwd37SQbBA", "cQR7E3D9SaaYrHQa", "7Hxf7BGLbrA8tpJQ"]}, {"partyID": "DvG9VpgDtpb3Xtm4", "userIDs": ["Uhvb6TwNZGxDfNn9", "NiKZIpEcSpQejxPp", "H1thg0szfXdZ7qFD"]}, {"partyID": "9re30MQc4EKDWY4U", "userIDs": ["rd9xAd0Nwdff2vSm", "rkeJu6WBnQIDEcXi", "4c7qaNfv9E9FCWQ4"]}]}, {"UserIDs": ["ymaUAiLtJ2LYuB8B", "uQwRltqh5yY1zwNO", "7Kpx1HlvvatQO3az"], "parties": [{"partyID": "bVCkJHyYp3fu7uwl", "userIDs": ["ibOUvw2KFO5dVNKZ", "aR8rNLRv0xPpMb6T", "L1cfBV4E383nCkEh"]}, {"partyID": "BmLvw025Edv7bW1E", "userIDs": ["1bUkUYGZTreuWv2e", "nwDDEpT0f0JJb3UB", "hSH5oXjgQqASQE08"]}, {"partyID": "CstotCcV8fz0emNG", "userIDs": ["G469KQJVlWAE4GL8", "eevrWPeF23UYhXVn", "pdyLNCDyot3CPotC"]}]}], "ticketIDs": ["1tUmwxy0xvFtY4s5", "NgOSfHr7xtsSrPOV", "GbC1y86fhtuB4raR"], "tieTeamsSessionLifetime": false, "type": "OHGIxRkGG97wvHQM", "version": 85}'
"""

result, error = update_game_session(
    body=body,
    session_id=session_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
