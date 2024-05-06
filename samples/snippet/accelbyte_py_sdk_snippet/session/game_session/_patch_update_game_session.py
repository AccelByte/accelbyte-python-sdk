import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.session import patch_update_game_session
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

Example: '{"attributes": {"nfm9D5t7ulVNj1SS": {}, "iTVD5QLiFLatyOSG": {}, "CyZb7H8151XXbHXM": {}}, "backfillTicketID": "8R53cgn69flKWnH7", "clientVersion": "vfuYy3bgHMGPKvT5", "deployment": "GNTW8P7QwsLHzp9N", "fallbackClaimKeys": ["xnkiPE2elmZhAbvM", "N87I64NXjonEzbwC", "2xIUnRwdhquNS7tY"], "inactiveTimeout": 46, "inviteTimeout": 35, "joinability": "aUGw2izidEpXgAgP", "matchPool": "4xKRkryElUWkq9jJ", "maxPlayers": 64, "minPlayers": 45, "preferredClaimKeys": ["jOqlcuxcJI5d61ft", "4mgzl2SX6MuJtuHv", "Szxqg5YioeQiy2wa"], "requestedRegions": ["CNGQruR5AGKkXZND", "QRAcw9Bp60eXz6kP", "97bMEszMbpELcDP9"], "teams": [{"UserIDs": ["Knp9nlzCvzTlYoXm", "HLkZDXuoNvMxtX1O", "fHFqLsc6DsYXgvsy"], "parties": [{"partyID": "iakpNHLaWYaMGO9N", "userIDs": ["BTkEhAefbAZUE2GV", "cniAKeJV9cpIz4Fj", "RakDPOs5KdqUg0If"]}, {"partyID": "7VL8VOFHE9fl2itg", "userIDs": ["QVlSqaf72vUpeBGs", "2dUVjZZYNIJXbUrv", "CfU0X52iPgvgdhhz"]}, {"partyID": "OOj2UM80dKkWE79L", "userIDs": ["q5O6fBr8K6EfJxX8", "1UbmxtfyVdgqa1KU", "bmQwXbd9YPaxmaY1"]}]}, {"UserIDs": ["5wsgiAN4YBlMnR0r", "VqKdsjtRN47aV25T", "DngwqGt5CDLM0ocI"], "parties": [{"partyID": "OnkBOlLnYLoI8GNI", "userIDs": ["VyqKOpumjiGbz12a", "FUoGvKxqUYSq2vFt", "eiRjes86Psxdvxfm"]}, {"partyID": "9NcH3LTX9UqcsnWu", "userIDs": ["aZPt5sEAPZ5EQV9P", "nn6O0L4qNdXDQ1oV", "WGthSZimcH5Xu1VM"]}, {"partyID": "WwK0T4DsNjHjT3a2", "userIDs": ["0VcRCTweh6KL3zIP", "1CTTeVs5Krr4fmuM", "dP85DLMjtC9C4pJG"]}]}, {"UserIDs": ["OULLzOcmJ8gqTrYW", "nvURuWZ4C86CC17M", "bcvXfIFyorw7VDZe"], "parties": [{"partyID": "UerTJfueiY4WjNZ9", "userIDs": ["vYAwBNH9GVmPaiC5", "3wMEaSfvWQlWHD6V", "DSexZIGlP5BIvHTW"]}, {"partyID": "FuLxxuxGgNEyczrN", "userIDs": ["CoQzHaSKju29IRLF", "2evsrf0OCtyVxQXn", "5NRKkVRwetNXu372"]}, {"partyID": "pMCW3g7NBPE49iUI", "userIDs": ["AFsADZ2xVPxwVOJ0", "F8lss9TB5Xvp4aRO", "Fh9xiYAw5AXx2fL8"]}]}], "ticketIDs": ["mQYMBqIL7dsZFXT3", "vK9Ppcbxry3oWaVO", "GRx9XBQCy7yJ3Lu5"], "tieTeamsSessionLifetime": false, "type": "3OEN3Lek63kFz3zp", "version": 30}'
"""

result, error = patch_update_game_session(
    body=body,
    session_id=session_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
