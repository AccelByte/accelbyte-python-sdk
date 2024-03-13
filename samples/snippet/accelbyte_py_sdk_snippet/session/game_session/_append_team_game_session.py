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

Example: '{"additionalMembers": [{"partyID": "S6MYtbKkPfvVWv4G", "userIDs": ["GEHaC9dozstjDhQ3", "22F5hQeXRPM7AEIL", "omlAENZRZKWJbDfj"]}, {"partyID": "WIvXoBxJBTygO8y3", "userIDs": ["bwv6arDBjq5iDq7u", "gazfv0zepxvFr9Yw", "C5oIWHevabGSP3Kc"]}, {"partyID": "PepqAltYTo1R6XHJ", "userIDs": ["Rx53d8sT1DtZXVrA", "nsRyUC6B4VHKnejs", "14bHj3mfY8PcCjYK"]}], "proposedTeams": [{"UserIDs": ["KbwHQLr63TWaWfns", "UVcnvIznljksx3xa", "yXOnP8Ik0nbXTRg4"], "parties": [{"partyID": "kFF6gQpDiJb89a5d", "userIDs": ["xjdAAocNHTBGlhFR", "OYoEuYa6duhzlnqe", "jeR4aCXX4GJUfTgD"]}, {"partyID": "y0sGuDRSkVRzD5El", "userIDs": ["HT267IyU2vafbURO", "7Fm7OVnBV1BMk1xg", "23BafScwafAQVJm6"]}, {"partyID": "iAIdsy50rkI3xeno", "userIDs": ["dWfIb0kOvY2hWVsR", "m1Fzy8wnUwxE5I56", "OsFMUF2NhsqvTnkH"]}]}, {"UserIDs": ["0nbIhswkgJqh1ymr", "DeAprBI2a1PMMGAh", "sBFzXXgZcIhiy5Fj"], "parties": [{"partyID": "gZPsyJNQl8X7g77i", "userIDs": ["qel7pLUpy4XNx4ng", "sTWL8k1kTlbMye1H", "tLYQ91dZRzsiWCeo"]}, {"partyID": "1ZQWZg2a24U3ACIP", "userIDs": ["MkJXkFPjW7JR6r7U", "g7N1Z55eA71P2Vti", "UCVLKro71j0Fm5P1"]}, {"partyID": "iFERHMWFa30dLcbS", "userIDs": ["qU1j1LahYegzvjft", "dj4KFf1AregCe1GO", "REJuf6hNYmEcqrWp"]}]}, {"UserIDs": ["3xRMOaZv0tazbsXg", "P5sCTDouD37Mth34", "12EDdTTugtitiZZi"], "parties": [{"partyID": "MihaxyltM0OaNIfI", "userIDs": ["y0xaO9k8hCJiuTIP", "ZvygpFO4t7JUQk0N", "QQXj5nVZaBnE4OEn"]}, {"partyID": "T6XU73YByB7FUV47", "userIDs": ["C8Z1dUXuSIYlNvM3", "BhriNo9be3tmOXEj", "T7QzY0cMdXVQmOqP"]}, {"partyID": "vFBHgwoPnOSzy1PR", "userIDs": ["KP5HMxhtEihposa9", "Oz6tAH5iSlwjgMyE", "zFTmNqdDSx69IoTs"]}]}], "version": 31}'
"""

result, error = append_team_game_session(
    body=body,
    session_id=session_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
