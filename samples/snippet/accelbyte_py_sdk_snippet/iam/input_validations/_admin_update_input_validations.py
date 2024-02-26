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

Example: '[{"field": "qgT8YTgJwTtX74gu", "validation": {"allowAllSpecialCharacters": true, "allowDigit": true, "allowLetter": true, "allowSpace": false, "allowUnicode": false, "avatarConfig": {"allowedPrefixes": ["TsUIkc88D5iqBHB9", "NzLeEsdRZujnhyxv", "o9RWhTRaXk8mXAts"], "preferRegex": true, "regex": "pwagGJtnUXl9sojg"}, "blockedWord": ["EXkJP1ceFwTgh8Bj", "OZ0vGJoDHZaWyCU2", "kA5EfGPzYS7pfK24"], "description": [{"language": "Gx9TAyDHlzZLrU7g", "message": ["rDibNgFdBEwo9w1W", "60lNmNSxfm1ifkON", "14sZnMrl8tZVWFLT"]}, {"language": "7oN3NyVvfcDsmSU8", "message": ["qsyjxHaBzpjAEvJV", "BA6sNch9c16QU4b1", "RNFYqC6J48a3WmU1"]}, {"language": "1e53da6DFObOL7WS", "message": ["NcaNEa3vnWQYfc1s", "WNikRoUlW9ZArVY8", "aLDEfhM98WKp04B0"]}], "isCustomRegex": true, "letterCase": "137S668qpzEH7Rnx", "maxLength": 69, "maxRepeatingAlphaNum": 47, "maxRepeatingSpecialCharacter": 72, "minCharType": 71, "minLength": 78, "regex": "7n0GB8uHHGv7elfN", "specialCharacterLocation": "jszJVBzzoJhf2vDx", "specialCharacters": ["dESfrhFWl5i9FM8w", "gka1hAuBGyhoPzQU", "1NkAXsX5JSeNkKEh"]}}, {"field": "wpMFDrkF5iDjE15B", "validation": {"allowAllSpecialCharacters": false, "allowDigit": true, "allowLetter": false, "allowSpace": true, "allowUnicode": true, "avatarConfig": {"allowedPrefixes": ["fUr1ORaaB9Prv0sy", "fLnJ2iIVKYImrzW6", "kcDuvkUkaVEjTQeo"], "preferRegex": true, "regex": "rNgH95b64DBKMzOW"}, "blockedWord": ["mMGLVdpv5sItXGRo", "Rc3xpKWCMcgZMo11", "TfrxU5so48zfkJ4H"], "description": [{"language": "fawPpweFLNo42FPv", "message": ["1TQysMJ8pPHVQWtn", "v11sNFKnd9CVyC18", "s8ylv1RulGukDN2h"]}, {"language": "woajz5SB3p3lxauu", "message": ["gV5wKO8Kne8v5F4f", "hNgACFq0qag5JPFp", "g9Ye7JXM8jJLqIdl"]}, {"language": "VZZOZNsztWEnHWCG", "message": ["Dw8GfcPF6hjeM2f6", "Lrc3Mtph08A3uM09", "wX5MMWimtp5DHalK"]}], "isCustomRegex": true, "letterCase": "SdNIHCsb3Ouxp1a0", "maxLength": 76, "maxRepeatingAlphaNum": 90, "maxRepeatingSpecialCharacter": 82, "minCharType": 3, "minLength": 95, "regex": "7sMVOvFMugJjZbbb", "specialCharacterLocation": "V3CbEA7Nu5sLmsxF", "specialCharacters": ["qTEgSgTGpGGwMkZ6", "ekLsOhjHVPOybHes", "viTn4oN4zo1Bz24j"]}}, {"field": "WBw7BMJA7ylqb7Kn", "validation": {"allowAllSpecialCharacters": true, "allowDigit": true, "allowLetter": true, "allowSpace": true, "allowUnicode": true, "avatarConfig": {"allowedPrefixes": ["Zhince3gQRREePyt", "h6DJOgBa5CUyxIXm", "etYFhHHdnLzmK0A1"], "preferRegex": true, "regex": "jLlmKmv93BU7IwVL"}, "blockedWord": ["S1am0jwzMTiEBbAX", "fSadOvePDCZkpO6f", "63bgtS7KwXxtcxmn"], "description": [{"language": "xNP0xR6tNdyyUGUk", "message": ["K3dLELyKMDD6NAJr", "Rfcqm7pEr3RZRrGC", "qMnTa9f0VvxP3zVX"]}, {"language": "BAC7mmtXxOFxBa8C", "message": ["SKaN0s3nPOKMvUVC", "QjDICt9RwSx2xR78", "x9vUDGgr2GNcgkD1"]}, {"language": "W8ezt1vmC1A0TPzR", "message": ["T4IoNag5gij9FJty", "8jHeFwcqNtbX6XTU", "gWAvUC9K1o5UZJhF"]}], "isCustomRegex": true, "letterCase": "Vb1VbOBFq4HPV3Cu", "maxLength": 49, "maxRepeatingAlphaNum": 92, "maxRepeatingSpecialCharacter": 69, "minCharType": 0, "minLength": 32, "regex": "OIvqPRtZ0DnfT8rA", "specialCharacterLocation": "TCeK0iwuCiJzkGA1", "specialCharacters": ["y2YpiapMvmM1gltI", "9Dba5Tv7eq8jr5CH", "stSnBctOvBBsdLYr"]}}]'
"""

result, error = admin_update_input_validations(
    body=body,
    x_additional_headers=x_additional_headers,
)
