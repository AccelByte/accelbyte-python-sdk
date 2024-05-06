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

Example: '{"additionalMembers": [{"partyID": "osUr6XcDCm0dkK5N", "userIDs": ["ybL22nqWCuy70X7Y", "PhkZFI6qlAvSbyLs", "Q8JX3BzNHtTCsUv2"]}, {"partyID": "IaFwvbs0N4E2Zdo7", "userIDs": ["9wGd5TazjNjeAGBz", "RuBe7Z3eHWhaI53q", "ZUYnRyzP0kJvuNBO"]}, {"partyID": "BnzoCDRr4JFduvDJ", "userIDs": ["nZKxScNGldhRyoPy", "5p5Qme4IEBwTiQLv", "rJbtrycRJbjoy9Nx"]}], "proposedTeams": [{"UserIDs": ["WFNFIbgA1RgZrNqT", "mxtFPZbEsaJ7M3Qp", "xswgJLjM9iOOOFms"], "parties": [{"partyID": "ZzOCiisY0MkFbWZy", "userIDs": ["BTM5R5rQ3KXojVoF", "GZJ50EqFmUtDE82P", "6P2TZjBRiyQkHKMG"]}, {"partyID": "E9OstnHzkfmAWdlg", "userIDs": ["dorLOk5i33Kn81ou", "hUlkRCvVM2og2y1s", "QX40HXpIXjAVA70q"]}, {"partyID": "vuvSCUru82S4nWC4", "userIDs": ["zWE6TXrBL0AP8wYh", "W8Cm9x2a5r0g7Vek", "vyDgy6zP9XWk5H4G"]}]}, {"UserIDs": ["jpli5wKZlCxH04ub", "xJyaeQXsLQyKRUo1", "al7LVjtUQaD2GgXl"], "parties": [{"partyID": "nWoA4XFZqgIVpPLF", "userIDs": ["wsElx9A8Di07U0TE", "nDNxBwoTVKPYzkNN", "OhjL8zMqcysiAhnF"]}, {"partyID": "8SdNmZojLGERpglS", "userIDs": ["sKuOqRPcKUtbh9Om", "diqblvkyI01pmP9x", "8oF3RnknQrp5euJo"]}, {"partyID": "Yum1lRuXZCdXHUnQ", "userIDs": ["As1UPIpxGIFRnrbz", "Yjon1afk42X4s3KI", "D3GAp3bw2pZJTovB"]}]}, {"UserIDs": ["xZnX9c1VmiEXeA2C", "vaEiUF4MoJOc7Tga", "9ggisR9YHO18gxiR"], "parties": [{"partyID": "XwLYtFLoFix8OkPB", "userIDs": ["1NI0PhlDHovyci20", "T2IM0DWiQSukRNqI", "dxRsNDb0FyqP3xzh"]}, {"partyID": "IvsWraPDYIsCgDxB", "userIDs": ["XNRcuwKaDevVx5GG", "t4oWzWA0yd6dOaVk", "KMymktZ3rSda4at9"]}, {"partyID": "48YeLToKecn9Yvqx", "userIDs": ["v140YQxH4PrS39uq", "O8oujM67jjwnT2Iu", "4kWjsOjd2UdB4S1x"]}]}], "version": 97}'
"""

result, error = append_team_game_session(
    body=body,
    session_id=session_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
