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

Example: '{"attributes": {"L3VvTbPyrzXpdyz5": {}, "0M9Ju5aICpkaI03X": {}, "QOUCpqyH7pHIhPyx": {}}, "autoJoin": true, "backfillTicketID": "5JMXfFYmB66Fa6Mm", "clientVersion": "mf1LlsJcGjXwo5h9", "configurationName": "o6MXcEl791ue79nK", "deployment": "MozdiKFcfocNKrS8", "dsSource": "Aoy4aHmElkf5JZrf", "fallbackClaimKeys": ["ff5DtBeP0n67Y15d", "IJgN70wp9y2zBCiJ", "TZ8X0hjeIVjoAZjH"], "inactiveTimeout": 54, "inviteTimeout": 60, "joinability": "6oBADzmecC9zt8XH", "matchPool": "txGXrB79hoxF7nlU", "maxPlayers": 59, "minPlayers": 75, "preferredClaimKeys": ["9C29qHW9rpPVM4dm", "Xh1WDDSwJjr8liKB", "8ITiS0itKAXAEv8N"], "requestedRegions": ["1dyP7XhnY6edk4ph", "yfwqmz3qZSgjbCA4", "RsaA1wZl4NAMIZdM"], "serverName": "DoPdHNOvfKj5s3yL", "teams": [{"UserIDs": ["xtyUiBu4Vrc9oC3w", "MTzmwy3tSV8qFnhG", "5BxqK6JE16NAT4q8"], "parties": [{"partyID": "j8yNZcqbUvMIm1Ii", "userIDs": ["G6rT9evjsvETJ4E9", "sBrDhvUWYUMhXRW3", "tT5K8sU93T33JdWz"]}, {"partyID": "uKeL202OIEde3kyT", "userIDs": ["speWHpN5z0yU3vsD", "DdUN490vgovyIJ2f", "IHNCk5hHRlwR10uy"]}, {"partyID": "XCoxAyAKZmtiSHKc", "userIDs": ["ieU6fl1JIidAK3s2", "czBrPjfeUXpkpwtO", "FleVXUwawuyT6YiY"]}]}, {"UserIDs": ["xGl253mXPrWKwQ5e", "rVR7ggwF2ABfvmMW", "GTPxoyYiWyIjXa0t"], "parties": [{"partyID": "IVHYaSMa1j9SL0Xk", "userIDs": ["0SRujT78U7Y6N7gC", "bPz51hoY6jirynJr", "zXkFdGudSdEpz712"]}, {"partyID": "qMFkeLuvTQYpdRcB", "userIDs": ["WsLeA1qXy5NWFE7u", "8f4lm31YSUnT4YG5", "y9h5vBykhocy7ICr"]}, {"partyID": "UgnibzgUMo4xDPIP", "userIDs": ["GnY9f3cYSzu0qjtO", "EYAuhspiN8XQRP5Y", "HZdw9ZPoVklbbxdN"]}]}, {"UserIDs": ["YXKxCgsKCsx2T6MZ", "GDyj41uKGRTacVfu", "2FN7hpW0dNGxPcq3"], "parties": [{"partyID": "YWr5PUCRXZ1ovOhD", "userIDs": ["IssNtkq717rzo8cL", "XHzVQAkiip6k11la", "gjuPZpn8cdL8379Y"]}, {"partyID": "JTIVvwCPGKhfTZ40", "userIDs": ["QB6CSAdWd7cEEmBM", "11Gl1VMHf8A7NM0n", "Y6AyMotaj6XXIVUI"]}, {"partyID": "fEOx9AQZQ4VH7jWY", "userIDs": ["OshBXwMDhqoQNA1o", "iA4JWHSQ2pSQlCxs", "Fy7V5VoJSNF9oult"]}]}], "textChat": true, "ticketIDs": ["lcJOpyRRYvMjeFjo", "fsgw88O3LJGrQzJm", "XKNOc09sBanjluIQ"], "tieTeamsSessionLifetime": true, "type": "oHLPU09yuC2BYEv5"}'
"""

result, error = create_game_session(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
