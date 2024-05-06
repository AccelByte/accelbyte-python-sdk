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

Example: '{"attributes": {"IsytqtbqSp9q1vhl": {}, "IsozHzoJuURzsm0o": {}, "cIVwqfyZHn8BiOjt": {}}, "backfillTicketID": "AxwJaUQbeFhSpLxm", "clientVersion": "2Ab4WZuDfBGz9EWX", "deployment": "uFyE2Q314vvIhCzU", "fallbackClaimKeys": ["yyMk9wSqXwCSy1Vb", "N2HTnxBbOoL9rjxc", "AhGD9veThbA1tkeW"], "inactiveTimeout": 77, "inviteTimeout": 34, "joinability": "r7wTQwfQHmYgfTEY", "matchPool": "gBnULD4Jhzw4Xwfg", "maxPlayers": 9, "minPlayers": 54, "preferredClaimKeys": ["YlXTGMzLNbJVhq0E", "SjBV7FtTZ2Mb7Sim", "cCmx2knVMQ4AerAj"], "requestedRegions": ["TB7F7IQUyHaT7qzx", "DBp8VBoMUYxrEMBE", "i9Tu7w929qQDfWIf"], "teams": [{"UserIDs": ["GSYc2IMfdToxYVLF", "gOVN3r2iCjNJHhz1", "eMT0PEd4KehAMk7O"], "parties": [{"partyID": "Vb2frirIkJa0txHn", "userIDs": ["PwwNCNmLRb58Cv2j", "eGQT2euy9HlfTMFt", "nvcAhtlV6UZeY0E1"]}, {"partyID": "qNLFMsdANDHAtUth", "userIDs": ["e05kNCB4k2iEu10k", "uVaaZzBOvTa2LMpy", "i7m26RU0vq2c11HV"]}, {"partyID": "QWkIWaukpWODlCqG", "userIDs": ["Io5J0fDFVNNXeHQw", "AEh4X8GgcjHzjDv3", "gm8rjg72duWl1chU"]}]}, {"UserIDs": ["AuhAWMKPmFNYfM5G", "2Ptw8TKYfMIi2oGl", "ipqvRpTOZ2JsjxbI"], "parties": [{"partyID": "Ztg3X2RIEeXtMLu6", "userIDs": ["8F7iamDI3nZtnpF4", "W2EWyfh6LWibDIdl", "tkqtX9eJlPlvvf37"]}, {"partyID": "WedGbZOMRcEXvQCA", "userIDs": ["aVlzq7MMQTgch0gz", "3dE0u9dCl5EDg5pJ", "NvG9Ep5O6DJXwAkJ"]}, {"partyID": "QerEnjRCoIltQwfy", "userIDs": ["7zk5n1cAjI24aM2Y", "efjFxEZbV1obBnNg", "e3sdZFtdAFOn6MD9"]}]}, {"UserIDs": ["PaQ8aqELy866l6PY", "CZ0GaMBCbNPkn7Qk", "gX1ZGsypRvYmgilo"], "parties": [{"partyID": "eDv5qAKQzI666XiB", "userIDs": ["y9LeZse6ooCPR9IQ", "SxuGoyMeVPUF82eN", "gfYGXL8oXVcQpQ3k"]}, {"partyID": "fOfzv0u7hVOtXcaO", "userIDs": ["IOUIudqnsRTwSOsM", "iZ3MaEgCbAMiHfCv", "7uJpAg75uSAWU8iM"]}, {"partyID": "fmyS51IyrCtwuRYy", "userIDs": ["0YajJOAln0VknlMQ", "oAJvaM6hkCkX7pxc", "cqcYqg0zncN4Ci1Q"]}]}], "ticketIDs": ["hTr4NbTLnQBaqpAw", "dJLuZBiQ8YGVO5s6", "EpwvltkICQ9uKNTB"], "tieTeamsSessionLifetime": false, "type": "PA0qj7A7tiLrQtfU", "version": 49}'
"""

result, error = update_game_session(
    body=body,
    session_id=session_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
