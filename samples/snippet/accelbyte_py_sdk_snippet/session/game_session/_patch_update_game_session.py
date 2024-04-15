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

Example: '{"attributes": {"N3cZxCcifv5WWw2I": {}, "5sSCMG3vd6sTTa7h": {}, "Fm4kE5PtsJduk7E1": {}}, "backfillTicketID": "Q0WIdUbdEMJGtInQ", "clientVersion": "TpaFMeQb9TSJmKVn", "deployment": "kqqXXOV51WmGfVRS", "fallbackClaimKeys": ["Y3uWre72THweb5cT", "lz3OudbbahQS3LOJ", "lAysPFY65BmzjQRy"], "inactiveTimeout": 6, "inviteTimeout": 16, "joinability": "wOC13mtjspvc9H5G", "matchPool": "yUoNLLhpXBwDfk2u", "maxPlayers": 46, "minPlayers": 80, "preferredClaimKeys": ["S6vGSUENn1IFCnBg", "RqViWPNy66fWnTbx", "RONlgadxvXlx40D2"], "requestedRegions": ["hkJuxnrEaPtxk9aI", "srxkpTI8PLalTimp", "rh5hImZOVcW8nWeZ"], "teams": [{"UserIDs": ["x2KLVHlqZtn5np6S", "CoRk17ictFJ3L79b", "o6yPZaYVclP8ZRxG"], "parties": [{"partyID": "i5lGIAPb9KtMrVDA", "userIDs": ["bVSa9IG0K5cRALoz", "wxG8YG0FJCiUz75S", "lzriaO2BlaXVmywd"]}, {"partyID": "uHtlNinwNzt1bK9L", "userIDs": ["ZwN4pdf1c9K5Vpjm", "U6pJyW1h58K3PFTz", "3H5aOf15jerUuUYs"]}, {"partyID": "q9R3JGkrrQS6cchF", "userIDs": ["zOdDI6xaXBCdsz48", "aGDNcGy4giP630x2", "kocBi1Px2ftu3ZUT"]}]}, {"UserIDs": ["xb8KRTUaL3jmyteP", "KmmlbUnf9EOkeIRt", "CyghM5UNmi6MscEs"], "parties": [{"partyID": "Z46kOLiYneWfzcN3", "userIDs": ["CH2gbXrhomYModgy", "E0awZaj6UD8qHz9m", "SIvw4IeIouGYB4li"]}, {"partyID": "E2WBxUhJLQQcGQ8N", "userIDs": ["8foWzkCvNmWaOk71", "tpvucaXsC09jUQVE", "bzYchYe2vOjCr2jN"]}, {"partyID": "3glj7BUwNtJ1pmBJ", "userIDs": ["f2DbETxm6vlAPczC", "VR1vNQcClNhmO7wL", "qykwaox6Og35AtPK"]}]}, {"UserIDs": ["MFKaSJT4Pb3jgaf7", "YgpVYUkCwzaKGPZd", "Mxp9iw9Fj8y4Lejt"], "parties": [{"partyID": "eZKoS6SrXJNG5JbQ", "userIDs": ["ga6F7libijUpOxvC", "OUQwENpjbwDVkaod", "BxpjVsFI76p7hz0c"]}, {"partyID": "4ieYLDqmdKWnO8MR", "userIDs": ["hyjiaqxqwgCZq9jA", "YahlU85P5RZAJCRi", "O8MRdm6FdyVplGcQ"]}, {"partyID": "ql6Z6PqqNbPWQnXZ", "userIDs": ["OzRBj38Wak6HrEsm", "lgk2DY33YvIwZ4ml", "FTkYIgTMUaBn4qvd"]}]}], "ticketIDs": ["pRyNEHBO2eqvousr", "qsgClYTPcfSZmUkQ", "9pfsU7uJuoWjGBP1"], "tieTeamsSessionLifetime": true, "type": "eQfLAEJ9W2XqVjEQ", "version": 8}'
"""

result, error = patch_update_game_session(
    body=body,
    session_id=session_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
