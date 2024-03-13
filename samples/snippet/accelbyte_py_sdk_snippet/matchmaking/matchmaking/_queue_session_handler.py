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

Example: '{"channel": "CprdqTmxJEXZIB4S", "client_version": "E8QipQBYHNEXxFSa", "deployment": "68JFvMtBfAaevV5M", "error_code": 55, "error_message": "kNqNxKoT1c6SUxgB", "game_mode": "rtoccSorhCSWjiMY", "is_mock": "3Twyv7iQRwfOlHu7", "joinable": false, "match_id": "1IsJtga9c5IZgTt5", "matching_allies": [{"matching_parties": [{"first_ticket_created_at": 6, "party_attributes": {"913FD6F61A3ZouvX": {}, "CZxYB6fkwRndAful": {}, "Eok0j3zlbtcc2iqy": {}}, "party_id": "ruukF0RgtECmtFly", "party_members": [{"extra_attributes": {"tpEa3H66KRiz79OS": {}, "8w0CKZlAG6Pfs9S3": {}, "9LiDmK6Y9GlklJuT": {}}, "user_id": "KxH5YddTOYKQmjot"}, {"extra_attributes": {"T7gUTrNC2PnWAYbV": {}, "SqY4Jz6xdcKEmWZG": {}, "Vy1lDKMAzMoxiqru": {}}, "user_id": "JJsXbFpfJUEIoUpG"}, {"extra_attributes": {"5qVG7rdFsaozeIE1": {}, "Z4Xt1jTuHEUYbEM2": {}, "tdyXqnOyWadY9ud3": {}}, "user_id": "0RbySL900iaB3CY0"}], "ticket_created_at": 63, "ticket_id": "QEKE5xOduFACBYRe"}, {"first_ticket_created_at": 31, "party_attributes": {"2XUFQ7Zz0sbfnp5b": {}, "7hlFZbL6hus1VwF2": {}, "tEYQPLwQZ6ubu1jT": {}}, "party_id": "iy0J7oKdHVYiNsti", "party_members": [{"extra_attributes": {"BT4rcyah556bRJUZ": {}, "vXp65scIwj4DbAt9": {}, "JAWsa6hDQjgUwyG2": {}}, "user_id": "y1jM7yO1pAwvDDwL"}, {"extra_attributes": {"bQ4yWzV8UuuEfTRF": {}, "FI0us7CWZKja3BRi": {}, "xJt62JqEiI8xUxfF": {}}, "user_id": "v9J3JvJDD0oRKawk"}, {"extra_attributes": {"nJALSL5xSjfF2SZk": {}, "kJ7YDsxlhuF8jH5G": {}, "86hMg3BxkcD5ZUCc": {}}, "user_id": "Km4geUNn6WelLmO4"}], "ticket_created_at": 87, "ticket_id": "thbLbyw9f4BTDy5u"}, {"first_ticket_created_at": 82, "party_attributes": {"6o6OhH8U0CM2pQiW": {}, "6NUD2nX2nIZrk8VF": {}, "Jrbg5O1fvBKRGwAU": {}}, "party_id": "yjH1RlaziwVCOe38", "party_members": [{"extra_attributes": {"cyOeTIvWajiAxrgN": {}, "jy7ZbP1EbuMSwVN9": {}, "N6wR7rMAQVxHoyzn": {}}, "user_id": "rFvNxNRp4bponvP9"}, {"extra_attributes": {"En4OGh6rITKS2kRL": {}, "JapIvxb1hmyR3FtS": {}, "ySCEHbUmhvdlBEY3": {}}, "user_id": "9OkxpUZDCp1BHkWE"}, {"extra_attributes": {"gnIXZhdT8DZmdAGx": {}, "0MMOFsS689r8LRBo": {}, "pK41qR3dPtfIJHPK": {}}, "user_id": "y5OVUtplX8FeWseP"}], "ticket_created_at": 21, "ticket_id": "wde2CbhiYl7gvjqV"}]}, {"matching_parties": [{"first_ticket_created_at": 12, "party_attributes": {"lDeeEbM29wKni6iE": {}, "KdlzC55ojHQ9m9R1": {}, "zZHLVJiScI513U1G": {}}, "party_id": "IN9pzLDqeTqDyO6z", "party_members": [{"extra_attributes": {"bF8bzZOJsyqLWz4S": {}, "JeWMVHIsEH9Bd7ZQ": {}, "3c6KfWsaDbTUfQAU": {}}, "user_id": "djXZ5HkCmL2IdPPy"}, {"extra_attributes": {"I1eCzgPmS3Y13u5Y": {}, "8NsYTwl3IMyslaMb": {}, "iFt9pP9Vh3nDUhlm": {}}, "user_id": "snYyo5GEQkrzUaZ3"}, {"extra_attributes": {"SCztXulNqHSHlip2": {}, "wmTDofNEq78u6Y73": {}, "R96bqCULw1qbEYDC": {}}, "user_id": "lHANO5b5WKyj6Opc"}], "ticket_created_at": 25, "ticket_id": "ji1cpSJLLqtrcnVC"}, {"first_ticket_created_at": 90, "party_attributes": {"mombI1mMacYjsu6L": {}, "KbA5Wrwk2QMoNsnv": {}, "eFVqNVfAdaWmrkxe": {}}, "party_id": "ZuNP02kuKEler8ke", "party_members": [{"extra_attributes": {"XUA88pquJdxXCRZW": {}, "SoJZIfw5qgtoUveR": {}, "t7bQQkE69oaNptxr": {}}, "user_id": "rpHW8hbQBC1cLCO6"}, {"extra_attributes": {"5gEovj01EMyHABGh": {}, "VWTaHCtN5EIfNtUB": {}, "mWq8klvdB85Ba9Pp": {}}, "user_id": "7trauNoNwC3lRWJ8"}, {"extra_attributes": {"wwZvt6vJPL4uCDPq": {}, "HKd1kE5YgjPIOn7r": {}, "ZJ5S7Cvdiw9k83GD": {}}, "user_id": "KCBXK9gZ9kx6PcKk"}], "ticket_created_at": 7, "ticket_id": "hd6sPtnVJjDfunVE"}, {"first_ticket_created_at": 95, "party_attributes": {"MldmywD6KgigQpru": {}, "qVf8mZO707ZODptA": {}, "eB2lXl37toZUNtwr": {}}, "party_id": "IwvcRLmWWfUeabXB", "party_members": [{"extra_attributes": {"HImCFwLlPm16RrUU": {}, "W0BFVX3ASkmLsGSi": {}, "bv2aVpklhYcoI7Pk": {}}, "user_id": "JNG3h943bsFZJbFV"}, {"extra_attributes": {"MHuFuAyVwrbQ1yAE": {}, "1353MEx3V78DwFlx": {}, "3Fjz4TESdmL4vMeL": {}}, "user_id": "LZqiL1WgkSI18nbl"}, {"extra_attributes": {"FeBqbTNAHOdcURxR": {}, "Pg6yd6bTp43doirm": {}, "uwjKuarOz7aCwMJe": {}}, "user_id": "ySvD5TOfRYDIrY7v"}], "ticket_created_at": 50, "ticket_id": "vdz6tisMTduFzP6e"}]}, {"matching_parties": [{"first_ticket_created_at": 80, "party_attributes": {"i6yTGN3JoNDTHBpO": {}, "sNonx5QcRuYFTVKA": {}, "Zcfy1h3QAdXitZHB": {}}, "party_id": "uGWsStm8PtfWR0yW", "party_members": [{"extra_attributes": {"1FMRZw0tT42tFAGT": {}, "RLSRn8021YITyEYw": {}, "sCAT3hcB7hHyoNvj": {}}, "user_id": "JGHLzaeufoTznulX"}, {"extra_attributes": {"qSXr0Adh3SpK2ggy": {}, "Px0nTuFmriStwweJ": {}, "SStt66DfFmZqw9YW": {}}, "user_id": "B3r5XnSKrPhExWqh"}, {"extra_attributes": {"NVYie8r8frZDToch": {}, "DLf4kEWXb8TuPjyQ": {}, "q0TsHefzl2sBqYgM": {}}, "user_id": "w1UwVFW3oZVqX8GW"}], "ticket_created_at": 71, "ticket_id": "OKW5ZeKfgIx8Cm0j"}, {"first_ticket_created_at": 67, "party_attributes": {"CgZty86bZ9BUNwQS": {}, "5oBEXBHPeSqEdj76": {}, "j75TRTG4h9dH3VFI": {}}, "party_id": "6kxhmP8PbXTRIU1C", "party_members": [{"extra_attributes": {"xES4zbCHDNZALNX5": {}, "A4ZcGAvuiyCoK4Mb": {}, "mfIBVlKAPPpsHg0K": {}}, "user_id": "yZ8UPOqx2OwxrGGy"}, {"extra_attributes": {"KJQUHhg330vLqxoQ": {}, "X1oUBL0hBDIjZOYT": {}, "Dk2P8VfY5rUpYxel": {}}, "user_id": "ufTb4YuJHBHMda6F"}, {"extra_attributes": {"JgNERFy4UoLP7oJE": {}, "Pyeh3W8yMOPlZeZk": {}, "wW7pW1kVRBAiMqjp": {}}, "user_id": "7UE7VPR1n8zzEJ0W"}], "ticket_created_at": 59, "ticket_id": "VOc1HfRdF2TjAfvI"}, {"first_ticket_created_at": 64, "party_attributes": {"BYtx0snfPYFc6WIZ": {}, "BxCLSP85CfQ9JaMW": {}, "qCfR5G6xEpDf7RnP": {}}, "party_id": "waijULevWj6RWzo7", "party_members": [{"extra_attributes": {"wvoKOlI8n68e4F6o": {}, "ndo0svtlokynWJ5J": {}, "xMook74r7nRjnNtg": {}}, "user_id": "SoYuK5kDCbGRMqdl"}, {"extra_attributes": {"D25TIxponio3ajz8": {}, "m8BqnNEglDDiY2Z0": {}, "9zGY100nOe410YoZ": {}}, "user_id": "TXGl1WdPUIpfBsde"}, {"extra_attributes": {"cb07hBfXBok8J8ZG": {}, "2WGbPU2SjRivqx8M": {}, "kQNJNUwoPOKl162c": {}}, "user_id": "ftyHjTcGw1xaKv5W"}], "ticket_created_at": 72, "ticket_id": "U17yxKNNPeJFMSjs"}]}], "namespace": "5wq5eJCEVu93u7KE", "party_attributes": {"4PPe7voIjDBTeKE7": {}, "HV6wrRtclJtBC1cs": {}, "JccTOxmLUt5c96Eg": {}}, "party_id": "v0PWfQlmVSEISv3o", "queued_at": 96, "region": "e1J1vVDgQ8CnepBF", "server_name": "Aab9ZO06XEn7Ierv", "status": "tSVVCoaGnjWhTAHZ", "ticket_id": "lE9t8cpqqxrC2KwN", "ticket_ids": ["ry6CU9SO2TBTRIpV", "ndtlfRDwB93Ze50h", "DJ7m2CzuPEnWJYBe"], "updated_at": "1995-12-29T00:00:00Z"}'
"""

result, error = queue_session_handler(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
