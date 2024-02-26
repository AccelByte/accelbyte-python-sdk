import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.session import create_game_session
from accelbyte_py_sdk.api.session.models import ApimodelsCreateGameSessionRequest
from accelbyte_py_sdk.api.session.models import ApimodelsGameSessionResponse
from accelbyte_py_sdk.api.session.models import ResponseError

"""
body:
Definition: ApimodelsCreateGameSessionRequest
attributes: Dict[str, Any]
auto_join: bool
backfill_ticket_id: str
client_version: str
configuration_name: str
deployment: str
ds_source: str
fallback_claim_keys: List[str]
inactive_timeout: int
invite_timeout: int
joinability: str
match_pool: str
max_players: int
min_players: int
preferred_claim_keys: List[str]
requested_regions: List[str]
server_name: str
teams: List[ModelsTeam]
Definition: List[ModelsTeam]
    user_i_ds: List[str]
    parties: List[ModelsPartyMembers]
    Definition: List[ModelsPartyMembers]
        party_id: str
        user_i_ds: List[str]
text_chat: bool
ticket_i_ds: List[str]
tie_teams_session_lifetime: bool
type_: str

Example: '{"attributes": {"pqEGYyeKPal53MYC": {}, "Sq9oPQ6Aqjlqr9Cf": {}, "A4aFF8qAmYsmUNJP": {}}, "autoJoin": false, "backfillTicketID": "OOJTCOVzDKwBL1bB", "clientVersion": "iwY7JzPSyW2WKSCi", "configurationName": "b7g51YhuQ290h2d4", "deployment": "gPZoIBUnowHTHeb4", "dsSource": "OIgiO0ZtHvn5OOMD", "fallbackClaimKeys": ["oanH1NXvraJBz6cn", "RphEDLqeOb1nMzRf", "wiA0WtScRYe4x4me"], "inactiveTimeout": 13, "inviteTimeout": 2, "joinability": "yxMajb9nEPUPT774", "matchPool": "id1tnulXt2ebPIEk", "maxPlayers": 58, "minPlayers": 26, "preferredClaimKeys": ["uynjWLDLioKH1lTz", "LSOAQd87UyX4fkkL", "ULItlhAifg0YdhPC"], "requestedRegions": ["rUOBhG9perLZXFJG", "XRIcUnPaAzq8tjQG", "MYe1sivHLVBCRhms"], "serverName": "ovxPszAJzOSRog00", "teams": [{"UserIDs": ["khJH7QS5RKC3NT6A", "fNzGVgv9jySmc2qv", "H2lgHxCcEZZ5yUvV"], "parties": [{"partyID": "wuf30nu1xaLF8ILL", "userIDs": ["3whKCGnMjtKpVr50", "uLquqfqQ4uDQH0hP", "dldBK0bUmyfPGbFn"]}, {"partyID": "7hlzQENHrEqgx8af", "userIDs": ["eMw76g04spef8KOn", "rR2xsFh1titYLTLD", "1fZr83NtSKiHJ04V"]}, {"partyID": "nj7ioKW1jNoFWOgA", "userIDs": ["hIntuxZqTwGAyttU", "rqFRGNSqXfsfHP2P", "abQH34KFCSxGvumC"]}]}, {"UserIDs": ["JrF85GDfqQU5xEXW", "Zod4zDfKjuRMNyuC", "CUJ5poFOQKFgoBWe"], "parties": [{"partyID": "GL3Ivk2ytgnQaCTy", "userIDs": ["5U6QlkYWQAZIAkpl", "Y7OjYYIbn2H2ipCV", "hrAVn97KY9sVWrhD"]}, {"partyID": "OECxIGCVcJsXvZcN", "userIDs": ["yaZ0ddb4JCaBlVaD", "FTT47SxkzrR0oZfC", "1INEUZfAdhZHtNkr"]}, {"partyID": "z7SM2zq4Ged3hMtB", "userIDs": ["BNgukWCDB23xKkAW", "8e0fvruDrgOzEf7K", "tYtlBsGH76iQXIpk"]}]}, {"UserIDs": ["U1EaS4MHE0L6yGM2", "95myCiTIBkrAxVQB", "xF5T0nSZG7h0cTkA"], "parties": [{"partyID": "3vRYlQAOUhINnuyp", "userIDs": ["U3dCMae7SXkTfgaZ", "NCXgieAbSlJBzAcN", "ljmJdg1b23WmER6e"]}, {"partyID": "B2ML4tSVb2WWSfez", "userIDs": ["1ui2eemmE8VvN6BR", "Nx0wWS5Y0tRMv1UD", "Zr3nM33B1bhZ6UTx"]}, {"partyID": "bgCPa4XcUnGH9beO", "userIDs": ["1tiCrP1Z3Mj26SVy", "XROug2EKS2r8qdQ3", "7TA4AR9DEENuaSAC"]}]}], "textChat": true, "ticketIDs": ["WrMjrEN1S4v0BGdG", "j1CicX87Yepf38WG", "SmsmnSgNs9H3cme8"], "tieTeamsSessionLifetime": false, "type": "pR9jasiseeoOSgsT"}'
"""

result, error = create_game_session(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
