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

Example: '{"attributes": {"G3UMcbznwdwLIOjN": {}, "LQV1KVqFr7VCIloN": {}, "YUxh4xtt1DA9UHd4": {}}, "backfillTicketID": "Fhi51xEFmtE0xaqG", "clientVersion": "ylDrZ4koatQ184yj", "deployment": "MiZ5mOL2rcH4i2dX", "fallbackClaimKeys": ["NusQfwScWdwr9iJT", "u2Uw9dlT7GguKxeL", "ECXOVrJek2jZqMlP"], "inactiveTimeout": 91, "inviteTimeout": 97, "joinability": "YWtxOANy7KDLEeFd", "matchPool": "yMeHgOdLzqprjYmG", "maxPlayers": 9, "minPlayers": 18, "preferredClaimKeys": ["P8t381lB9oWl4Xgi", "SfxoRIAJwX25GJb3", "yal2LgTDBeoOxOoM"], "requestedRegions": ["YuDnLQvFI7l2w4Fb", "306ueZdAH6SKZ0IH", "eFuV4cpRueMqAxkw"], "teams": [{"UserIDs": ["YYXKlCi9PqCYvGRR", "3yvFH3I7OYLREvii", "amZv9crkpn6oV0sE"], "parties": [{"partyID": "fMvvMMDbS3EK1nOK", "userIDs": ["gui1xqzg5Kpz1kwW", "ytd1XVjXyyH2G9eu", "5zRC2yGwEBCvoYD7"]}, {"partyID": "BYxyrKyElvpHkJPk", "userIDs": ["zuAKdjbNra7h3TYG", "CJGlyWGxiZ2xzd6i", "0Z5Gq3Jr3ufe4Y6S"]}, {"partyID": "xCrjBOXlz8EZTuHU", "userIDs": ["H2OVWPROOLcKKkbW", "JJJZU8qVLpk3u5mq", "rUbjWxkvLqRzDPJ5"]}]}, {"UserIDs": ["NX8tiOYlHuxqSncB", "qFblQ7xDs3oS4dWG", "iDk7CG3j7EuDXNqp"], "parties": [{"partyID": "o9p6pViteZrFd411", "userIDs": ["LXEYmUvtXiTVHUll", "vGEkGIILtc70ETQN", "FMjVFPkbDgDG9TBE"]}, {"partyID": "AWj2OHWDleyntXTe", "userIDs": ["zPPSPfrm6PFFWwZC", "VNyBQeV6TXp0VcCR", "W1QpOxB0cOyx7dXF"]}, {"partyID": "DVCmd7LQRK5EQ1mH", "userIDs": ["lsWo74tUgVB6OiYt", "ouULG5YvF4F3r3PU", "NqswHCIL0VPi79Hu"]}]}, {"UserIDs": ["wCTYJXrtwrYBlNbL", "GtLu903UbsdMTs9s", "f8h2QhqrHBA0mbau"], "parties": [{"partyID": "vVwaMSbQB73uypZR", "userIDs": ["v4a2ExcljMv1WewL", "udwu8Q0b3LTQ36cj", "NUfwukpnvwoP2oEF"]}, {"partyID": "RmvOy2Ht3QdWL2yt", "userIDs": ["E8GhtNLn6QD3BzKh", "E3trkfYKByL13G6O", "24hfzE8kQwNpQyHU"]}, {"partyID": "dtgsJNPi9dC6WxK3", "userIDs": ["dsbt4do7uiuWJLld", "8HsSFbl2GeSRsuAZ", "FERRw0Zh4AwrpRbD"]}]}], "ticketIDs": ["3RXvqTT76NGHCTtN", "fbStHQHJxVPDVGWb", "JaW9tsdhLhl70tK6"], "tieTeamsSessionLifetime": true, "type": "8sMyXThUMNmRC6ES", "version": 44}'
"""

result, error = update_game_session(
    body=body,
    session_id=session_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
