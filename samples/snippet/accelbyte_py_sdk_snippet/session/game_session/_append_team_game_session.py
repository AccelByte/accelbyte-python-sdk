import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.session import append_team_game_session
from accelbyte_py_sdk.api.session.models import ApimodelsAppendTeamGameSessionRequest
from accelbyte_py_sdk.api.session.models import ApimodelsGameSessionResponse
from accelbyte_py_sdk.api.session.models import ResponseError

"""
body:
Definition: ApimodelsAppendTeamGameSessionRequest
additional_members: List[ModelsPartyMembers]
Definition: List[ModelsPartyMembers]
    party_id: str
    user_i_ds: List[str]
proposed_teams: List[ModelsTeam]
Definition: List[ModelsTeam]
    user_i_ds: List[str]
    parties: List[ModelsPartyMembers]
    Definition: List[ModelsPartyMembers]
        party_id: str
        user_i_ds: List[str]
version: int

Example: '{"additionalMembers": [{"partyID": "7P7OmCnzSwQN8BlT", "userIDs": ["REdieyi5NSSkd6y9", "6psSd2Ei5MPMLANu", "mFc4JpCcXtydK0Hr"]}, {"partyID": "CfKXo4QGZ3UnZzq3", "userIDs": ["9Pa1CIUm2AfdqbXw", "d5tfB81raIg6Gfq3", "T8NTllf0RZ1nCY4n"]}, {"partyID": "9HiuKE8tdnwVSHrk", "userIDs": ["lMSWxGsH9BNNN0Au", "7NwREoJ9qiU0lJMR", "982ZZz8CSmK3Twoc"]}], "proposedTeams": [{"UserIDs": ["98KyKwbMCJcqWQi7", "NKF8lU4DUTTHLlTE", "gpbZjNLBRd0tH9k6"], "parties": [{"partyID": "AmI1NDEPp5Yzdrqe", "userIDs": ["5vm0BkCIwv8T11UQ", "2YshLWQqSZKKxHsF", "XVSXGaveOiH3w6sQ"]}, {"partyID": "T7K2DcHIM0tstp4j", "userIDs": ["nDa01oNW919Z7Emr", "ibaxwXlTfevfXJOE", "3vw3hwVkTjkejpSJ"]}, {"partyID": "CgshR9kupQaMAcyT", "userIDs": ["HelyHAmGpLulLYNG", "WMjNi4JuP6F6OKnt", "QJXxKrXP9qFBiIKi"]}]}, {"UserIDs": ["pRRwv8HPG37m8JPx", "jAXhAhGy3QRlk2qA", "fOePQGE8SmerNI47"], "parties": [{"partyID": "pAlyV8okjyQ4yAwD", "userIDs": ["TFz8vMI3F0qOUFMV", "vY3tA2LTAZksFmKs", "NreuhjUDQ7TIxORM"]}, {"partyID": "hsbzvLp78MJmZuew", "userIDs": ["39zd2MHoxPdzaWSs", "zUWIufgWXRRVLhAK", "PhsAimos94V2HWM8"]}, {"partyID": "EVtPNqp70odXqfIw", "userIDs": ["eu2xClxS0AC5SnMn", "54zarmvlnuhawWuL", "Ax2HS8QI1ma0sU4t"]}]}, {"UserIDs": ["tysDONvWu0bGj4Q4", "zYejzSO1p5eJt0eO", "Tza8i00BNssaBnEl"], "parties": [{"partyID": "oVShUaeo1uotVfeM", "userIDs": ["Jbn2jOVwf8FDx8MN", "2M9XYuY6xtwalqP3", "h4URWu5CpzpRi9oJ"]}, {"partyID": "214baSDdnkJ9bGDp", "userIDs": ["RAyAsi2bUHWwbSjR", "GixbHcC0hPHVcA7c", "FOj5ymRe0WNRqDXj"]}, {"partyID": "4slGYHsZYGmtPVD5", "userIDs": ["BjiA5tOxqS7oCO06", "P6RC4Rx4WJJZ9mqi", "jBQEgxmvPunFfR0u"]}]}], "version": 43}'
"""

result, error = append_team_game_session(
    body=body,
    session_id=session_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
