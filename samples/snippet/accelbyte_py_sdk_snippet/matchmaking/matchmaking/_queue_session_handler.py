import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.matchmaking import queue_session_handler
from accelbyte_py_sdk.api.matchmaking.models import ModelsMatchmakingResult
from accelbyte_py_sdk.api.matchmaking.models import ResponseError

"""
body:
Definition: ModelsMatchmakingResult
channel: str
client_version: str
deployment: str
error_code: int
error_message: str
game_mode: str
is_mock: str
joinable: bool
match_id: str
matching_allies: List[ModelsMatchingAlly]
Definition: List[ModelsMatchingAlly]
    matching_parties: List[ModelsMatchingParty]
    Definition: List[ModelsMatchingParty]
        first_ticket_created_at: int
        party_attributes: Dict[str, Any]
        party_id: str
        party_members: List[ModelsPartyMember]
        Definition: List[ModelsPartyMember]
            extra_attributes: Dict[str, Any]
            user_id: str
        ticket_created_at: int
        ticket_id: str
namespace: str
party_attributes: Dict[str, Any]
party_id: str
queued_at: int
region: str
server_name: str
status: str
ticket_id: str
ticket_ids: List[str]
updated_at: str

Example: '{"channel": "2Ya11r1GY10Oivvg", "client_version": "8FJeMNsqz7MXpezN", "deployment": "asToxngkPr1vHZSQ", "error_code": 98, "error_message": "GQCEeMQQ7s9MSmVt", "game_mode": "E15Al0MlpkM8AMjT", "is_mock": "jOTIuLOm3uGAt4L7", "joinable": true, "match_id": "FvRGG0tWzXNxSGkM", "matching_allies": [{"matching_parties": [{"first_ticket_created_at": 89, "party_attributes": {"fWYpSNGpHnmpYvUX": {}, "FkHmyButLkOL9JoO": {}, "hc4igIF8WmPQ3MIC": {}}, "party_id": "oe2ms9Kk8BeaXP5E", "party_members": [{"extra_attributes": {"5JB4HaBQynUvzZvn": {}, "0NUEcJzOsJaGebQO": {}, "YNKYtnkQzBtTigd8": {}}, "user_id": "JfR2a29eh3ggwB9w"}, {"extra_attributes": {"qFfTAL9EfLc6mFEJ": {}, "cfhdcAb7qi14s90F": {}, "LcGxkksq7aQaPLpu": {}}, "user_id": "yMgWY77fMsoJ1I7w"}, {"extra_attributes": {"eY2vQMljgzubTSgN": {}, "5MgAGLhHDbLKRMRs": {}, "exhX0tgE610KwIPc": {}}, "user_id": "25JM5fOV66ynCccm"}], "ticket_created_at": 63, "ticket_id": "3iEZS8RgPOXWEWP2"}, {"first_ticket_created_at": 99, "party_attributes": {"KIX8BIYcHYKvTDMJ": {}, "6wU7zZMs9m3Wk1UD": {}, "Ezi2dwv7SZKR5hk1": {}}, "party_id": "KV3jVjGU32mHm0SH", "party_members": [{"extra_attributes": {"AZzp8fhQSEpW6U0P": {}, "MqkprQSpMKJVkCPF": {}, "i0Jtb13G8oPQ0Voz": {}}, "user_id": "IJwuOpWGiosbQza1"}, {"extra_attributes": {"jJzDM5m1TlLjnjMo": {}, "Hlu4wXCZ8Mfg6Pma": {}, "Uzk73KTiePNc83Ir": {}}, "user_id": "kdN4B6lp81MbGxex"}, {"extra_attributes": {"hCGJmbzjRD8sdszl": {}, "PpP4Wfz0LfbSu7iG": {}, "GjZX9cK4oz61TDxu": {}}, "user_id": "3MfMU1OjKpTxnEOy"}], "ticket_created_at": 79, "ticket_id": "WrwzwJm3Nsfqz8G3"}, {"first_ticket_created_at": 24, "party_attributes": {"ifsGCy0Wv0PBMxnO": {}, "oU0Mk3Ls4rn3idzH": {}, "cpAbieM9wYT28r89": {}}, "party_id": "WPuA2niTfTagBgYn", "party_members": [{"extra_attributes": {"kuHPrNJCGmSIOdbQ": {}, "pGlx0I9rFNeK7ST4": {}, "AQDyBVBigysx2xmq": {}}, "user_id": "HiIc2HwaN6Rx2wiG"}, {"extra_attributes": {"DmSaWCdIl3zQvwSX": {}, "4brXjN4FyZYNhqEN": {}, "A8WTMeRfj5ou8NU1": {}}, "user_id": "J3svArDQyYUbXFAY"}, {"extra_attributes": {"bd31hBSEVR0UJTGl": {}, "I4YpR0paD85Ocvye": {}, "5BLesvQwuksBJHA1": {}}, "user_id": "3uCHyaP86Hjwt75q"}], "ticket_created_at": 26, "ticket_id": "yvJiTTXIkXI7rzcA"}]}, {"matching_parties": [{"first_ticket_created_at": 30, "party_attributes": {"pGrQJ5Gvc6Me05rk": {}, "tSW4ocpeMR1szSl5": {}, "6dRHfbFRtMurBjYF": {}}, "party_id": "1IiFIlmCv7hBZtCO", "party_members": [{"extra_attributes": {"Y4fglIchOAl130sU": {}, "5ZAkI2csf4bC4pWZ": {}, "QvjHvhvi4SW7ES98": {}}, "user_id": "7d2n2wtDpNFwAXDG"}, {"extra_attributes": {"OUEQvpDDceCQgo1D": {}, "hV9M2rHwt7jObKdf": {}, "MCUfz9VpTJcemDhZ": {}}, "user_id": "hhDTQMGMQDVyzgmM"}, {"extra_attributes": {"nbUVLiIJXe9dB7IH": {}, "KBDXIHkYnoCxcgaj": {}, "38eh0IU8BCVRjTrj": {}}, "user_id": "ZzvbeldG3GM54vT9"}], "ticket_created_at": 31, "ticket_id": "xaw0Kbgos9TXfQ0E"}, {"first_ticket_created_at": 83, "party_attributes": {"g5F48N2MDvg5Nc4h": {}, "wlILngXw8smDWmmL": {}, "dBL7VjltyVj5emSN": {}}, "party_id": "es617n4TZalo1j96", "party_members": [{"extra_attributes": {"plaEkhYQpFcioSA9": {}, "SRYCjougKz5dIKdC": {}, "TPxPMg3pWO3qvGKX": {}}, "user_id": "UBE5OJpthS0NJlij"}, {"extra_attributes": {"eabFoZKEX44IKhyp": {}, "hD7mvh94VDTdYKX1": {}, "bW90ipeUXa0RsMFB": {}}, "user_id": "sT5LoKyi6ItBiLbW"}, {"extra_attributes": {"YWcNXXPsJHCKqUl9": {}, "0pbSWjkq4FgEr1V7": {}, "ASrprJyQhIrZYDSa": {}}, "user_id": "WEV6BK8ak5Dr0qcW"}], "ticket_created_at": 93, "ticket_id": "Sx9j1HmXLuRr3Rjm"}, {"first_ticket_created_at": 39, "party_attributes": {"5fbA2I628kpOltu1": {}, "48LxzVNEDt4oLNLY": {}, "N1a1Y4iSzMrQOyhn": {}}, "party_id": "bpFF4k5TX96cobbl", "party_members": [{"extra_attributes": {"CxBxq2M2E1LiH4Qg": {}, "6JywsWOBjnJBEnvQ": {}, "WrGDoKix4Ze3zeeS": {}}, "user_id": "wbeJtJWfDk24zZul"}, {"extra_attributes": {"9T3Q1AvTOWwBuqHM": {}, "FGIGHkUM5H9ef1QI": {}, "MfRzOGYoM9MIgDmX": {}}, "user_id": "8x98H92rw75Z3npR"}, {"extra_attributes": {"KodNg1AolKQ6ZXJs": {}, "yrwZUZuurDCeiDd0": {}, "B5CsS2luSrmybdsz": {}}, "user_id": "c6E7DOzMQx0X3HJ9"}], "ticket_created_at": 20, "ticket_id": "a9KfLemxiVzCHUMa"}]}, {"matching_parties": [{"first_ticket_created_at": 50, "party_attributes": {"nB2QUqO3Z4AykfQk": {}, "U3fAoWejxzk27z06": {}, "84iEan9Hi9WYQTCQ": {}}, "party_id": "pqPTxAiuMJzpGr47", "party_members": [{"extra_attributes": {"63RPEGdRmtEzUXOY": {}, "3cFFf7bCfPEkcqqw": {}, "LrTOqqCE5s2w5s5H": {}}, "user_id": "E8eTzMJFLK47tsaF"}, {"extra_attributes": {"ya3G5dqgizXkbVmO": {}, "A9sA7zKBe1idv3JI": {}, "60lXYKado1GwJDXW": {}}, "user_id": "rL98xj0jldrroMej"}, {"extra_attributes": {"wjKuTsogBwD5LmuK": {}, "oeglQbacFsE8gGL6": {}, "5777uKSTOZPsQJad": {}}, "user_id": "evgdOdCgxcnIIJ8U"}], "ticket_created_at": 39, "ticket_id": "90g9HHtWedfiJuM8"}, {"first_ticket_created_at": 33, "party_attributes": {"qHd2mYoSy0HlKFi3": {}, "PXnmBqhOpfbRiolu": {}, "jerGCnLTYhvJZLFN": {}}, "party_id": "cac5aEhhCcsSHmbH", "party_members": [{"extra_attributes": {"x4wP188chveI6xs6": {}, "isSSMp8G3Jdn7PAN": {}, "iSDW3y4drXBCISQp": {}}, "user_id": "U6XRvSxPlHwBSpqw"}, {"extra_attributes": {"lk6CxHnOkj9eRczD": {}, "7H6k3LVEm4t4esoF": {}, "NMksSnoBZJnzUUUa": {}}, "user_id": "NIGXYqvijfoMwFVF"}, {"extra_attributes": {"j8QwS55D9pIKxOtq": {}, "CnLASy0vJ62lyfcK": {}, "xB9oFOMJSIjmKKHN": {}}, "user_id": "28Es3UfYtxE8hr6D"}], "ticket_created_at": 45, "ticket_id": "y2AnDIFmFb0PBZxR"}, {"first_ticket_created_at": 52, "party_attributes": {"t9KTVdfSszUNF1a0": {}, "PQHEg3G3v6dbTQlf": {}, "YHjeNrpYaUcGbEhg": {}}, "party_id": "WACwUdsKPEvr93si", "party_members": [{"extra_attributes": {"cUVZmNFgFWqu2e1w": {}, "eTpBkwdwFBuuH0zT": {}, "CDkgAVgZVcIQDKfn": {}}, "user_id": "58wQsE8VHmTOKlYn"}, {"extra_attributes": {"bFSWJUrmnnZo3F11": {}, "HeJDXrXKFh7ohE0K": {}, "B9hYRzrL1UAY7RrD": {}}, "user_id": "BjTGbSH9DviPUdNq"}, {"extra_attributes": {"06bpAsQD00VIJJpU": {}, "NJ1JYv2ruj75fYK8": {}, "xE6ifhEhV3SEb8cS": {}}, "user_id": "2TVmrR6AxAQV9DiE"}], "ticket_created_at": 47, "ticket_id": "uphbbejuQFqNbnVl"}]}], "namespace": "nmaj0cM4zgrx9pur", "party_attributes": {"U1IenEt55iv9BSjz": {}, "4HO3EHu2JaDyRDkW": {}, "LGYdN9XxIDFBLFx8": {}}, "party_id": "a3adYZMKnvsxxvfh", "queued_at": 8, "region": "ORWFzydEu4IKVTxh", "server_name": "7D3r3dLFY9fjPvds", "status": "4LBkcdKQsHq3xIge", "ticket_id": "9mziIOi6Wqg9Qzjd", "ticket_ids": ["Cea8aveXxBiq89EF", "L0yBZNqoy9fmHaFJ", "oPfECaJj6rTcNM1J"], "updated_at": "1990-08-02T00:00:00Z"}'
"""

result, error = queue_session_handler(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
