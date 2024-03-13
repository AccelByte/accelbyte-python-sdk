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

Example: '{"attributes": {"vL3OkYuBp44DZK2j": {}, "ZYFcnvrOBRX003SF": {}, "WrCcvtXHXgz4vkNl": {}}, "autoJoin": false, "backfillTicketID": "WPkXyyzCqVzMJMmm", "clientVersion": "LQ7UMvIZ5twXMwBj", "configurationName": "0XHuVeZxRSiKR6XY", "deployment": "RsvBouF3rHZp48zd", "dsSource": "sQmJWcem5ag6x0CY", "fallbackClaimKeys": ["9yM4AuFVxQIOIJDz", "4HB4zqLsUrBYwqK1", "O0CI9AuySL05bZlF"], "inactiveTimeout": 59, "inviteTimeout": 16, "joinability": "n0mc4OwlMJ1d9JXJ", "matchPool": "816MXdFLTOxE3MxK", "maxPlayers": 51, "minPlayers": 39, "preferredClaimKeys": ["cJVPH9VDPYLFddVR", "a65AyqzWi99MYhRF", "a62CUp20BiLDhOgr"], "requestedRegions": ["phKiuwO6UxlysLwv", "JBAlTceQF8pyF27P", "fWnv56LVVsf7DxqG"], "serverName": "8qDLLLoaUhc2oNjI", "teams": [{"UserIDs": ["M14sh0b5sxMwaV06", "7EGxwzDKFN16kBd6", "nx5flTCZ1LPlaaW1"], "parties": [{"partyID": "skmbNH3vG6AvI7Dp", "userIDs": ["LO93yjxTIlnTCxra", "sT30CaPCS6tCwDAk", "edo9r0RcRJla7LiU"]}, {"partyID": "io6D3tvOd1aqLNrG", "userIDs": ["RqdQ39Vlh8oAkgxI", "xcjOnQJm5b34NTMT", "aofeAyE1usUgtAFw"]}, {"partyID": "hGZeWqoeVNOGgU6E", "userIDs": ["xAkUrR2dfA7tB9FZ", "Aenq8DHaEJFdO26Y", "kl5WigzQoZz8q7NI"]}]}, {"UserIDs": ["ivAgbTNnupV08ws9", "2NrETQmGPnrAN4Pd", "geAuMHWqbFyfPEVW"], "parties": [{"partyID": "kwst5o8O7Oc6TuPg", "userIDs": ["cWG7s1MaNwuSxZtx", "yXitlSJEQmbDEk5O", "oHDxobJuAz8GpEXk"]}, {"partyID": "xmqKwxJVD5Y2qemI", "userIDs": ["RQ2hPghQnZ3Bb41y", "pCuGOLaslvZxyk1U", "0n4V1M97p1AillNg"]}, {"partyID": "hRWKWTs5AGsGergp", "userIDs": ["JVoTMHetxoi3EfRM", "YbUMmcxLF5Mn35pu", "B3m9NX1PEEwWFuBZ"]}]}, {"UserIDs": ["WvZIrIGbPi0jCGLm", "4KeNMK6DKYanNr1W", "j1FxvWDKlZYQ6MGn"], "parties": [{"partyID": "td1lDiGLL4U03TCi", "userIDs": ["GBHn5pwLijT1UBl2", "Otup3h8KSutdwvse", "cdBLphTLOU2cVVd9"]}, {"partyID": "mtUxMdi5FDqTMfen", "userIDs": ["ZRQgKpkMcKw8HdhG", "2xvJkfmF6BcRxEtM", "Qlihb8cRuSWEUo4p"]}, {"partyID": "aR1Qnpn6gVoBiU6s", "userIDs": ["pvGus3lDFbIzcVxc", "bqzXQnXwWN7B1YpI", "30RB3nUrQuSFLtk4"]}]}], "textChat": true, "ticketIDs": ["Kgf0wsP0PWwqr3Lh", "NiBcbg278qhl5e6j", "9m453FM2pvn3Zz0S"], "tieTeamsSessionLifetime": true, "type": "ePHRwHxefiAkl59Y"}'
"""

result, error = create_game_session(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
