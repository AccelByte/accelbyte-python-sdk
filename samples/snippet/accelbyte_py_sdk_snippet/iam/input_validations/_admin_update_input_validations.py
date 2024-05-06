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

Example: '[{"field": "9ojhhhqfIAl07qpj", "validation": {"allowAllSpecialCharacters": true, "allowDigit": false, "allowLetter": true, "allowSpace": true, "allowUnicode": false, "avatarConfig": {"allowedPrefixes": ["Dh6scluOYzFEcGQV", "nGPJAUmH3Q50zxn2", "vR8h05zkN03VxIRC"], "preferRegex": false, "regex": "Z74pyPhwEyMYtE1A"}, "blockedWord": ["ifuCig4vSavhojBg", "hmXHdqFrWQoc6M4m", "CmxqKQ3HUv2gT6Jx"], "description": [{"language": "ocVavYADjxb2YqPd", "message": ["jJvJebMcDtotL898", "R6Il8zzaihTWGPFr", "nEIaat4lqNx2CuKb"]}, {"language": "TQkDnm3pBjNbu0Ra", "message": ["7z5kIG4aWjziiUCi", "yQ2ZDm6RBc4xEc4I", "tmwnbf57z78YAeLr"]}, {"language": "Tu3RBseuwd3lwhLJ", "message": ["FBJGtkMsBukBmGkI", "5TKh3bMzQU1d1Mcm", "JBgkzWvs5YB2eyEL"]}], "isCustomRegex": true, "letterCase": "bnbCX7SDi6ln318R", "maxLength": 19, "maxRepeatingAlphaNum": 13, "maxRepeatingSpecialCharacter": 48, "minCharType": 0, "minLength": 85, "regex": "pZtYwyZGJk6wYep1", "specialCharacterLocation": "eamDp4VlJ7wWtCb0", "specialCharacters": ["3oJEDRilK8NBrHYi", "GbamhgDEOx1ODLfi", "6f0suqthuNI0xPKB"]}}, {"field": "ftFlzZnEkCjBEmnv", "validation": {"allowAllSpecialCharacters": true, "allowDigit": false, "allowLetter": false, "allowSpace": true, "allowUnicode": true, "avatarConfig": {"allowedPrefixes": ["bYquGZo7h0cfpJKS", "ajVBn9NNBJLcT1Fb", "bCX7LCjkmRfInrgg"], "preferRegex": true, "regex": "oo03y8YNW8IqztKs"}, "blockedWord": ["fpIFEG4LWorpkAYJ", "9ZoFzV2NZKP8hCcR", "BYx8hPr1vGfPqYW9"], "description": [{"language": "xwl3gVppfX877heW", "message": ["9Uqq8iGOMz52VcrX", "pmcaVFzwWQKn3oJ2", "jaCOWvpOIG3VZeDO"]}, {"language": "1VCpxZZKuT4VEKjJ", "message": ["TNYdarnafgCHfUE0", "XYEKC5UQCumXgS7V", "7CnblvTsBppDxmrr"]}, {"language": "6TiTNVyIunPH1JvN", "message": ["4sXoTZmhSUNzXdVa", "TbXfU894Nt3x948C", "ouHof7C6Btd89TMP"]}], "isCustomRegex": true, "letterCase": "Ut25npbExNOAsDDQ", "maxLength": 19, "maxRepeatingAlphaNum": 94, "maxRepeatingSpecialCharacter": 86, "minCharType": 96, "minLength": 43, "regex": "asv0oayQnQuHyNYo", "specialCharacterLocation": "gyLCYsovpRiSvYHG", "specialCharacters": ["HUDmbMkdDizOrBKz", "xUaDmbMn04wUE9YW", "ZCkn4njdEkwpAyd0"]}}, {"field": "eD4qt2QmeeEFxePH", "validation": {"allowAllSpecialCharacters": false, "allowDigit": true, "allowLetter": false, "allowSpace": true, "allowUnicode": false, "avatarConfig": {"allowedPrefixes": ["PmXEn8wuR6L7AWY2", "7HK8DiRn7y6RP2wD", "YSPuijXVeEBzUMHI"], "preferRegex": false, "regex": "MlO5ZvNAi8HfJoiO"}, "blockedWord": ["arWZoUNUa3np4thD", "XSraUB1Tk1o0jJx9", "YW4zB3TNEGXDUvVA"], "description": [{"language": "IBBXf1MvRdEjxkfD", "message": ["mn5150Wq9fHSn9dc", "cdRiZKyTzLuv3MSO", "YYiw6PDnOno29Xlc"]}, {"language": "zZYGwvCebIo1YPb3", "message": ["T1AVLkUTnJqKJqv4", "EpPHseRIwfmaNawa", "RYAfosZ7Rf84lAdE"]}, {"language": "rWtHjIHeSTd6MqJu", "message": ["Kb1DViPSWXY1z1p5", "6T2DLSepbyBknzAm", "zCVpWzYFJ9a1ND1q"]}], "isCustomRegex": true, "letterCase": "L0F91CM0sFd8EixM", "maxLength": 100, "maxRepeatingAlphaNum": 75, "maxRepeatingSpecialCharacter": 5, "minCharType": 48, "minLength": 33, "regex": "gycVLHcQRzc0241n", "specialCharacterLocation": "Xqhco3RCrfu3JbLo", "specialCharacters": ["jPZSUAQwNNHwvKfM", "NznQZJ1G8OBkLK0Y", "lVYhzJNQp5HbsN5n"]}}]'
"""

result, error = admin_update_input_validations(
    body=body,
    x_additional_headers=x_additional_headers,
)
