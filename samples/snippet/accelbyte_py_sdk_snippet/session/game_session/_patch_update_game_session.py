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

Example: '{"attributes": {"y6e1pVjSXPqmycxR": {}, "IEKblVJmHeTw7fp6": {}, "u3F7aFRiSxRQtwFw": {}}, "backfillTicketID": "l3DQe9Y2jStfhZCL", "clientVersion": "sHspJgPnd1qTRVRs", "deployment": "AgUO5aJpwwXyDp5s", "fallbackClaimKeys": ["kWq0Gtrvc41EJ8lf", "uIzPhs2BmLulpNEa", "wjd7h3kWUHpsxiHN"], "inactiveTimeout": 45, "inviteTimeout": 54, "joinability": "hGpHAIHqoydl0nBp", "matchPool": "tbD7BCWIfZplNZQs", "maxPlayers": 21, "minPlayers": 72, "preferredClaimKeys": ["yA2aVU4U9o0XemM5", "wiqh4UhZtPQeVEC0", "G2mS4HGaw4opMJLf"], "requestedRegions": ["PwFYIQeZxWsXvndL", "tDE1H1YW3x7CKws6", "F7oDB0LO9ahzMHjl"], "teams": [{"UserIDs": ["3zXTGKa44796JPta", "xdMOAuGu4yblriQu", "K0kRV6X2iihSItEV"], "parties": [{"partyID": "gdZnTtqmoTSs9w8L", "userIDs": ["nMz1Jqr7mqika6Fh", "yi3a9i23vMDMavxf", "53f253ldVaZiUZDu"]}, {"partyID": "u7zm61hvZqC1XPeM", "userIDs": ["bhwb0DO3UzUzKqP9", "0OKwRLioo51NvAK5", "zJYRLMXGOkdkmCHu"]}, {"partyID": "wZB5Y5Z53u28NbIq", "userIDs": ["drh6X4uhb6V61rUS", "c2Uqaq0oY0GdugOz", "1ed3NIbfSDlBEvcB"]}]}, {"UserIDs": ["A03M7wCgrjSkl3PW", "mzVdXj3e3lFbTGTa", "45Puc8EVmipgIPk0"], "parties": [{"partyID": "YpzFM76XGQAzrV5e", "userIDs": ["1kuxT2cuXuXAU1gM", "cXEKdbEla6Ou35We", "qImkT0BBf4jRPf8o"]}, {"partyID": "nV1heqioV72opIcZ", "userIDs": ["tScTPubSh5nLvo41", "GdsyTZKlXDK1rAxz", "jn2ybh7YyWzTMJhO"]}, {"partyID": "a3WubRvDtXw9uEHU", "userIDs": ["j5DUgSdBe2sCqOUE", "aqDRN9yJ3LmLbFvf", "cJZK9T5M2tpiLVff"]}]}, {"UserIDs": ["LRqRY3XFFRtPqLM6", "HLgu9DRhJQLZu3ew", "6v1AkPjJSWpAknux"], "parties": [{"partyID": "K1vinNeFyCiAEmb8", "userIDs": ["RvqLhRbzL754NVYn", "JXl7nC6vMUjOxmp1", "YfIMSL6xTxQqe5XM"]}, {"partyID": "EvXCeEGa5I2LHobn", "userIDs": ["LCJ8PXouHZERrpen", "iIRQos2LLXBJBMwb", "Ya2AhGWIB5UTjisl"]}, {"partyID": "jzZQ7owDXwhCIYKC", "userIDs": ["1aOnbGL67IyqZwex", "l3eVWOM1IesIxQec", "G4KgsSsWI1lfQeOM"]}]}], "ticketIDs": ["BxVLw93imFez29ot", "jYWyJwSezN4Skv1a", "29hyWfqAvQ2Pv2X1"], "tieTeamsSessionLifetime": false, "type": "p1hCw89SwrhL7oJA", "version": 95}'
"""

result, error = patch_update_game_session(
    body=body,
    session_id=session_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
