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

Example: '[{"field": "EMFsBEoLezuFUkL9", "validation": {"allowAllSpecialCharacters": false, "allowDigit": false, "allowLetter": false, "allowSpace": false, "allowUnicode": true, "avatarConfig": {"allowedPrefixes": ["NeUFEd4yK2dGZ9Ew", "gq7Zzb7lLpEQdYrL", "V3J6h9cmaLh4OmTA"], "preferRegex": false, "regex": "TdwNXYCUkETgvlAV"}, "blockedWord": ["WRLWhqGJ0mFs9zX9", "E3TDxEntvuHoMvDX", "4VAcVsDSWBZuTSyW"], "description": [{"language": "2nD1xp9QGw6Z3Jhq", "message": ["ltsfFYt0PxJs7pM5", "DXCbU0IBPpwyu3vU", "b2jwrGulPkXsthBd"]}, {"language": "wQciOr5Z1KHYrPIP", "message": ["jlHtprlqM2tH2hTZ", "IwCD8Qx8cOl16z3x", "KGisrHsHY0k2kxRR"]}, {"language": "nLg6fac3d7WauAUo", "message": ["CEtmojZS082ZUFjA", "U0Wjb98TmEIveqC8", "qXPNn08wPov8bQH1"]}], "isCustomRegex": true, "letterCase": "d1DTwSpOdqDyHF4a", "maxLength": 59, "maxRepeatingAlphaNum": 13, "maxRepeatingSpecialCharacter": 53, "minCharType": 64, "minLength": 7, "regex": "lXywAaCDknd2w70W", "specialCharacterLocation": "pVkq5hZ5vC6yV9Vw", "specialCharacters": ["9llOhesSF5K6ZLSY", "NzbHT9MR0EVRCpN1", "RbwgyrxESD1id6W6"]}}, {"field": "WwHGGQL9AKjdNhme", "validation": {"allowAllSpecialCharacters": false, "allowDigit": true, "allowLetter": false, "allowSpace": true, "allowUnicode": true, "avatarConfig": {"allowedPrefixes": ["oRrZuUdvSOm1PMEv", "jzrEPR3aWdwogHMp", "LYqu50yYKeQ0jHlc"], "preferRegex": false, "regex": "SjCyKEwINJxbRkOD"}, "blockedWord": ["tiNGsDAd5QO6YTt5", "JIikYMnMHHN6w5Ge", "0bqGB5fYQVVzmDCl"], "description": [{"language": "fu9b28jF8VI5FaJT", "message": ["UB7YrUIu3IKAfhfk", "F8mg8zmJ3JLgUqTj", "5By3hoI1vcLRSp3z"]}, {"language": "I7Jb8D5nNzSz3J2S", "message": ["35yKLbQZEyavpkOO", "4htfSpyWo5e7qxfj", "aquU6xDAtezOFd9Y"]}, {"language": "LBgrLhufPmrqjywm", "message": ["G5WDFYnPEKYeCRDY", "4Nc0nqS766VoJyq6", "Vxy1tCg9UNsfGG0x"]}], "isCustomRegex": false, "letterCase": "L1vhZNCKFgphTjJw", "maxLength": 67, "maxRepeatingAlphaNum": 59, "maxRepeatingSpecialCharacter": 98, "minCharType": 2, "minLength": 36, "regex": "RIlymneZB6DJlvFj", "specialCharacterLocation": "shOzpC5PYQ6zLncJ", "specialCharacters": ["5SZo5ceaWDBqFL8F", "Et4utl6KJngyTa3D", "bmlrS21QJiu8ZaWM"]}}, {"field": "a4g646Es1y6D5Ra5", "validation": {"allowAllSpecialCharacters": false, "allowDigit": true, "allowLetter": false, "allowSpace": true, "allowUnicode": true, "avatarConfig": {"allowedPrefixes": ["qz029NoBBzMd7LI9", "TfuKent4ZUL5Vkuj", "ap7DHFLEJ0hMgr4U"], "preferRegex": false, "regex": "V6LNcF6GNgh1Rggc"}, "blockedWord": ["o9OAffjFGn2d7Wav", "nK4jIKF0xoii1XZT", "me5tuC34CJOoAobd"], "description": [{"language": "kl6pe0dcXPNsdKIt", "message": ["7QxS9RdxOQZd9TcX", "OlInctijYJwIT8fO", "PP6ICFUFf617Lscb"]}, {"language": "jvRKLXtOlTZHGyr7", "message": ["TbUVHV79fViV1R5W", "04GvnVzav4F0bxK9", "H4CTwwEItLGRAfnr"]}, {"language": "XE0i94veN1S58UqD", "message": ["ymJiARiolIPIOGzF", "Il24NH2qu3YBY6lD", "09mEm1ay8zdGUzoz"]}], "isCustomRegex": true, "letterCase": "fSuDDQ6mg78WW6pB", "maxLength": 17, "maxRepeatingAlphaNum": 63, "maxRepeatingSpecialCharacter": 10, "minCharType": 19, "minLength": 44, "regex": "BRx8oZMwLLq7SyXs", "specialCharacterLocation": "8iRp7rbYdgE2Iin9", "specialCharacters": ["uFzmDXsO3AzXi81l", "l4kQonsAGPegaLMS", "6fbYBcCGV9bOuh6X"]}}]'
"""

result, error = admin_update_input_validations(
    body=body,
    x_additional_headers=x_additional_headers,
)
