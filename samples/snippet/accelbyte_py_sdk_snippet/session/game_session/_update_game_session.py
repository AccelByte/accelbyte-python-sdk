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

Example: '{"attributes": {"8g7ZK6OLoxfvE3Rn": {}, "vNv4YmN5L7a7OlKC": {}, "q6OJMjFU6BewV45o": {}}, "backfillTicketID": "w85CL1dbzwyz1Bvf", "clientVersion": "Hmt7lUwubsW7gqz1", "deployment": "MSKpCuXkuZ7bgwAE", "fallbackClaimKeys": ["GwWN9FYlgbU0VfaU", "1Z0MTUUhlbiJbs3F", "WxKK1xz5zbqEjhBr"], "inactiveTimeout": 91, "inviteTimeout": 48, "joinability": "AgK1hyLWZlqDJJGN", "matchPool": "b778TdrP5CEmqweW", "maxPlayers": 17, "minPlayers": 20, "preferredClaimKeys": ["C5vnpfMz0BCvWQ6m", "XrfzbQzmFSGcsome", "hTmel56AobKE4Ik6"], "requestedRegions": ["0ukiujWYvlVpMfsd", "HlI8cNPddevSkrZU", "VcRg88cowwTJPZi3"], "teams": [{"UserIDs": ["GM7SsJbksvWX19dP", "jb7syS8fkFKcuYyi", "X2nv73OUVwZ8JSrM"], "parties": [{"partyID": "mNwmuJRHHhEFYcCB", "userIDs": ["aDosALRsbNICX0Ti", "dtRCfgqMHdrTbwh5", "KDWecHzbgx8gGo6D"]}, {"partyID": "v04Wr37Z6v16uYfE", "userIDs": ["y8tnLamoJETmExyg", "MpE3ltmUeBBKUUqC", "yYzuF1wLpsPPHcJw"]}, {"partyID": "cZNyyNoqj3K3egXs", "userIDs": ["eA3RXgVSGKJi8Uc5", "5Eu2DuKaSj68YJUS", "3fP6xsOk1MHyak6z"]}]}, {"UserIDs": ["Tqvso0TMiCO4IH93", "YQgEL7x3axf0I8II", "HPPoUvNkyObTkjGs"], "parties": [{"partyID": "wWB7eIj7WgaUYoT5", "userIDs": ["RoCrY8Gjmp4k87Gg", "kwK64fGAb54z7yl0", "rzFp6ccxn48JpMDO"]}, {"partyID": "5hkyv7Mur6dBc4se", "userIDs": ["4JAE0j8ci4hq7xMd", "M9A43x2wRm5WtavI", "LF94ePWGnLaIcXWx"]}, {"partyID": "aCgOGn8aIeCnr02o", "userIDs": ["CjZ053ts5QSqN4Cc", "ObaK8VwZypqI8cIu", "MBWz47bT6WJI8v3t"]}]}, {"UserIDs": ["C2FRM9WRKeML5B2b", "f27r5rBfxtWLwFpj", "yQTHJwk4aSKcmssm"], "parties": [{"partyID": "s1jCyG9Sv65tIX7Q", "userIDs": ["2VcIswbtnlG2MzBG", "Yu5FJKhbytDPOiuc", "JffO5v3SD8TPvwtr"]}, {"partyID": "rcbmbpOJ6xfT9sKc", "userIDs": ["mLqiNXo9ye1kbtT5", "Mac4fEyoamJhUEM7", "Ls6gphyPdfzO0UFt"]}, {"partyID": "vXP4zvm3MEkpoAcX", "userIDs": ["4tDMjDmOfL6qTXIG", "RqTPtmk5A19Sm9mM", "lgNT97Q8HFtD3Xce"]}]}], "ticketIDs": ["8wMYJZNP0045Qpcn", "LRuN3E8T8kiAfDOP", "IQTO6644Xgc6SRSg"], "tieTeamsSessionLifetime": true, "type": "T9yv47Qqy6kCbZEj", "version": 97}'
"""

result, error = update_game_session(
    body=body,
    session_id=session_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
