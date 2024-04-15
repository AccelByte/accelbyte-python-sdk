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

Example: '{"attributes": {"TMIw2QVaI1gYnRwP": {}, "R8Z3Cd632tTnRMwp": {}, "kBS1I8zALvL6KZVy": {}}, "autoJoin": false, "backfillTicketID": "KgZbRDnrEE8xtdPL", "clientVersion": "uqRIo7N9X6ERowsV", "configurationName": "IEoRE7CfDgICjkUA", "deployment": "UGiDuiaJmSY27Xt0", "dsSource": "icqDlheBFZoC3myy", "fallbackClaimKeys": ["yyxvNb7yFXXKpWiZ", "HjRgJCDmxf5mmypi", "ssAq4CYSjZwWCIKP"], "inactiveTimeout": 7, "inviteTimeout": 33, "joinability": "2TkDKwfu6BmmeixU", "matchPool": "OZVUSmRKKo7NEMKN", "maxPlayers": 47, "minPlayers": 45, "preferredClaimKeys": ["e3gJF47H67jSG8GK", "dsfRHz5NqgATVtVQ", "sNBvWajuzFRaG3IK"], "requestedRegions": ["me0KHZWMyiGCN3gF", "4wXXMhDvwjaA3VD5", "pj0qzd3B5wWKBLXB"], "serverName": "9VPYjHbgUFLMBExU", "teams": [{"UserIDs": ["ByssgomOKxpw8qmD", "y344GM9MhKq5z4iu", "pFYZ3Hegsfig1kE9"], "parties": [{"partyID": "DG4S0H7xOjcQFGRw", "userIDs": ["RAJh3SjnH9m1TJnM", "hUsHnBvIPWiORWQZ", "KFusvQW71Msmsjy3"]}, {"partyID": "Qh4roEoNVJnnN0LR", "userIDs": ["TQLql9pp4v59SxvK", "SNynMQj7dnijwGHl", "hmYKrj22aYO2EvUo"]}, {"partyID": "glIWjkt18NtQ4Mus", "userIDs": ["k23aEjFPN5C3GF9r", "Oen4QNx9pRjal6Ym", "odCPwA2pui3e8P3z"]}]}, {"UserIDs": ["jPrSMtZgldlRsdDR", "uFHGjg7UU8sGBPCY", "b2Qlgx8aI2k2JY1O"], "parties": [{"partyID": "cckw9HyQUP5kRbKD", "userIDs": ["6lxihPjKUHOiJVDz", "J4nxXhxVI7eZXyoG", "PoFgKN6OQyXVL5VJ"]}, {"partyID": "HbUZkeHpR1hmNiNl", "userIDs": ["pNwxlpZ0URa9yBTK", "yG5H0kHwBzaX9NJn", "aOra145h6Iqrw8yw"]}, {"partyID": "xp3lTFtAJlghAUfB", "userIDs": ["M2sA56I6EBTSnClV", "RG7xvkVm9ZcKd95C", "rKt3i9pwPOdgn7QZ"]}]}, {"UserIDs": ["Sl6hZKCBPRkz9RYI", "T5j7LGuc4RJX9yP7", "dg1OIspeOOVIRUFo"], "parties": [{"partyID": "OAttzj134Y8HEtGx", "userIDs": ["UD5xfYhBHn4xJhVD", "QdItrIx5nGQ3aeht", "97eAjXjztGx7U4br"]}, {"partyID": "kJWqwiC7kvI2Lmp7", "userIDs": ["GWOAX1YbxYVk82Ob", "vggz9sd9BRhRwfcy", "MDz4JXGggPXV9R1o"]}, {"partyID": "DzCW4rHLUvB2OSBb", "userIDs": ["FYF5bvVhDQcOp5U3", "eQwS640pju9u0g3I", "h8W0ED3EF5YN0tsG"]}]}], "textChat": false, "ticketIDs": ["P6LP8fl0b1Wfmpcv", "0EBLrho02Php4Geg", "Nf86wZDlLIQkI6ip"], "tieTeamsSessionLifetime": true, "type": "S1o8hC0qrHZt4is2"}'
"""

result, error = create_game_session(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
