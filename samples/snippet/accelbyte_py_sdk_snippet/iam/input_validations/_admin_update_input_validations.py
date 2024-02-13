import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.iam import admin_update_input_validations
from accelbyte_py_sdk.api.iam.models import ModelInputValidationUpdatePayload
from accelbyte_py_sdk.api.iam.models import RestErrorResponse

"""
body:
Definition: List[ModelInputValidationUpdatePayload]
field: str
validation: Validation
Definition: Validation
    allow_all_special_characters: bool
    allow_digit: bool
    allow_letter: bool
    allow_space: bool
    allow_unicode: bool
    avatar_config: AccountcommonAvatarConfig
    Definition: AccountcommonAvatarConfig
        allowed_prefixes: List[str]
        prefer_regex: bool
        regex: str
    blocked_word: List[str]
    description: List[ValidationDescription]
    Definition: List[ValidationDescription]
        language: str
        message: List[str]
    is_custom_regex: bool
    letter_case: str
    max_length: int
    max_repeating_alpha_num: int
    max_repeating_special_character: int
    min_char_type: int
    min_length: int
    regex: str
    special_character_location: str
    special_characters: List[str]

Example: '[{"field": "qG8WwBtxe6BfKzIA", "validation": {"allowAllSpecialCharacters": false, "allowDigit": false, "allowLetter": false, "allowSpace": true, "allowUnicode": false, "avatarConfig": {"allowedPrefixes": ["OOParHIAWxP41tV9", "v6V8rF7C7lkOrGgj", "5c1qi6OHcRJ0x3Xk"], "preferRegex": false, "regex": "q7dFGfUJbxSEAl0B"}, "blockedWord": ["zglr0KEeRv4KaAHF", "eRaupQjzfraoz6zD", "TR81uTy6EIckJuyW"], "description": [{"language": "AuU1E0z2AiXGsWbt", "message": ["AhzmswMJ0f7MIzWE", "Nj1lrtaZ6K1GZ5eA", "acjuq4fwNucg76vp"]}, {"language": "PjnBW76uHZhjseGW", "message": ["H4MP02e1gQaos0OA", "0hz6gWsHyfZazo0T", "dTAp7CgeMM5BOH1a"]}, {"language": "FSAIY7sbuLYQejLk", "message": ["u0A0esFyEBz6IPLr", "bllTM8ddGfSVBSvj", "B8AYxesbq1VtplBl"]}], "isCustomRegex": true, "letterCase": "pEfj1Z7l3pf6S8bG", "maxLength": 65, "maxRepeatingAlphaNum": 57, "maxRepeatingSpecialCharacter": 54, "minCharType": 19, "minLength": 75, "regex": "FpwSqwm450ivuwy8", "specialCharacterLocation": "xjCfuiTT3yjwSTBo", "specialCharacters": ["7KPWV0eLn0qVRr0O", "5GJGr7z8vgoFqQlg", "vjdOy8LNPfniHGRU"]}}, {"field": "6LqKj1nD88Iw27OO", "validation": {"allowAllSpecialCharacters": false, "allowDigit": true, "allowLetter": true, "allowSpace": false, "allowUnicode": false, "avatarConfig": {"allowedPrefixes": ["cgRb4r2LPv1PvRau", "y6TjgbACEzlz2lI1", "p7guoaNdza672VDg"], "preferRegex": false, "regex": "Wo3XLK3SAxmQyHwQ"}, "blockedWord": ["VsomJzHBhi3soe0z", "1bzruKGHGrsQfi02", "yWYMb1eZkqlkzUx6"], "description": [{"language": "WOVPJSWaejbr7gyS", "message": ["BM9EEJsBFOIgBrX7", "F4Dlq6kXhjHQSaAN", "dXG2XUeySO9dYrnT"]}, {"language": "dS44LyRZuM2tyQC6", "message": ["ZmBYJEXIWF3MbbZX", "9HNvOgtwc201O13J", "YSWjsKEbGDDTWwwz"]}, {"language": "wGtxIxPJQJne2pQi", "message": ["LgDSb9gCvoQVwXz6", "Ox4OTPCS6WtCzj9o", "ABjGgeR6q7SQ8UmX"]}], "isCustomRegex": false, "letterCase": "5rN2oeGTIKKfY1If", "maxLength": 69, "maxRepeatingAlphaNum": 34, "maxRepeatingSpecialCharacter": 72, "minCharType": 72, "minLength": 70, "regex": "6MaGZyYdPJpBN2hd", "specialCharacterLocation": "TNB5S8XK6pbFZRDQ", "specialCharacters": ["e73PfNUyTXSQANfa", "ADhKx6eBZq0abt3w", "uMA0ZOsNdFhVxISC"]}}, {"field": "sCS8rW39hNmOGUKR", "validation": {"allowAllSpecialCharacters": true, "allowDigit": false, "allowLetter": true, "allowSpace": false, "allowUnicode": true, "avatarConfig": {"allowedPrefixes": ["7PxMvleQrgkURlW1", "Td85amV45HDxQ0ml", "tseGa5Hg4igpecHj"], "preferRegex": true, "regex": "IlFdklWefdvufZi2"}, "blockedWord": ["1CuDyOfl1UnZTgOf", "KsIyzoyBILwpj4Mn", "h74jEVFVTcleWAHV"], "description": [{"language": "NaXD1xffTia6nqNa", "message": ["TxZpamqiN733wDJU", "KNdL0KhNmArQN5p2", "83P3NUrXxm3Ud4Im"]}, {"language": "Axzws5KvAeCXq8xp", "message": ["R7bE7DhUiJ5RtfaP", "7N0moATf3ityERQn", "ASijoccsDtIQGGGA"]}, {"language": "J9EkcLyYTXZDCvJv", "message": ["nM68VuuVdwwnKrYF", "i4JRTdVYKQCuCTnf", "b7WnNBMNlQbRSGm3"]}], "isCustomRegex": true, "letterCase": "xKcR4QqqzKKqZh2I", "maxLength": 75, "maxRepeatingAlphaNum": 82, "maxRepeatingSpecialCharacter": 92, "minCharType": 89, "minLength": 3, "regex": "eMCCZQRsBq1ZvUl0", "specialCharacterLocation": "frfVdQX3tmjQNfJA", "specialCharacters": ["ffbentR4hnj117sY", "MENKpnigZUUtOybL", "SrLO6pLzvF9CRQDs"]}}]'
"""

result, error = admin_update_input_validations(
    body=body,
    x_additional_headers=x_additional_headers,
)
