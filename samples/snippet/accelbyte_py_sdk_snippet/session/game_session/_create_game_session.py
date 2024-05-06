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

Example: '{"attributes": {"XyQPuwccGceH0rfk": {}, "r4LathrhxEymkWDg": {}, "TgS62NZbGs2UnVcF": {}}, "autoJoin": true, "backfillTicketID": "zJBViO5hKo8huwYA", "clientVersion": "nv8TtteJhuSPzd3S", "configurationName": "zasllIrUBXR8ao9h", "deployment": "NbHwZbsnGfTPHGMB", "dsSource": "vsphefZ6h55tq9oD", "fallbackClaimKeys": ["SoijML7mRoBUbzeV", "R7NQg0Cs695inh8X", "p2WDozqRfLHTKiB0"], "inactiveTimeout": 17, "inviteTimeout": 78, "joinability": "hePac0MZ6qk9m4e0", "matchPool": "Tm7h8cw03YWogytu", "maxPlayers": 98, "minPlayers": 42, "preferredClaimKeys": ["E5r0p54tfpnap2iW", "wetflb8uS54aMdY4", "dlfZwUSkqMdF6oAd"], "requestedRegions": ["KbRoyMh6qHWzwU3m", "72QAEciJmZin06lm", "GkBUEhXNuaXSC9NQ"], "serverName": "TcbrR3NcDjEqGoxQ", "teams": [{"UserIDs": ["7O4hJrESfsYBzsEV", "xrhWa25Xmay5BpCY", "dqWG1AWLDqtx8So4"], "parties": [{"partyID": "5xTnqsDu9S3yAPJZ", "userIDs": ["WqFKhOhUCYYK8hUO", "YbYFE14cpDIUZRsZ", "COBk6qnaw1bi6JXX"]}, {"partyID": "fH8gGDHesMpTVTrx", "userIDs": ["Ba3EfwhDxnyMGT7t", "bMJypbJ1ONM0Q5Qk", "jBQbS6rq0bkdbLs7"]}, {"partyID": "7408PWxUnAGjBPYP", "userIDs": ["YxwbaIo6oYiNQZEW", "2iACdYaHQEvF0DNu", "rqY14uaAQq2bDNej"]}]}, {"UserIDs": ["x7GK5q9hn26Ujn4Q", "PhoTUbc32qKsp4CS", "9T7nQi3cF6qAWvrd"], "parties": [{"partyID": "CZWDe375Db4UCgKT", "userIDs": ["T4MHOOT4GpKDYFlX", "imDGykiFQt68effx", "Z1szWAuBiTXIZYiZ"]}, {"partyID": "11eP4BbEtgwy1lAJ", "userIDs": ["BWcOgBBzKTpESWiv", "kEC7i7S0Oo8cdhUJ", "N7S3kqqbLcw5QJw0"]}, {"partyID": "jFXlJbVPgpakqOP9", "userIDs": ["YL8nzhHvqoPX16XY", "TBHj3OmGDWrenPRY", "f4W7BNDOlcw8EHTw"]}]}, {"UserIDs": ["daTY4iHEs9nRUQ54", "jQN6Ed2U45KrwZKH", "s0dkEMPRIRAkUWo9"], "parties": [{"partyID": "F7lFzQtRVm1y9rpe", "userIDs": ["XAV8hZuaLcjvwI0C", "C5PGJr5yXyES2uNn", "ifPScMafuCivs42q"]}, {"partyID": "g6LJDenV4xgutlnk", "userIDs": ["u7xZgHFT0cMVnfyC", "43GiFxWRSkEonrVZ", "0BFjgxT9vvcUrVJg"]}, {"partyID": "wfaWVSqby6Id3fka", "userIDs": ["RTSCVnDxBasJqrsC", "dkkNGNjfEXwtcyU6", "HbjXXjuEzPtnH2ZK"]}]}], "textChat": false, "ticketIDs": ["xM7bXnATMa9rkIkB", "1krzfpktCe4MncKn", "i1T1OZL1D7aWdrC7"], "tieTeamsSessionLifetime": false, "type": "JnuCP4Y9BMSvmQw6"}'
"""

result, error = create_game_session(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
