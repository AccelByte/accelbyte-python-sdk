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

Example: '[{"field": "dKTJFj51Tp0q852C", "validation": {"allowAllSpecialCharacters": false, "allowDigit": false, "allowLetter": true, "allowSpace": true, "allowUnicode": false, "avatarConfig": {"allowedPrefixes": ["skXVVCQGmyWY4IrD", "vZvNJXncFyVFLThr", "RBECWfnVrUp8b2Hp"], "preferRegex": true, "regex": "kxvzTS0ZYA7mwlCF"}, "blockedWord": ["0qeiGVEzax5A68sm", "a00Tc4Pn7ilKrn91", "POpRZkUYIbnW0Zny"], "description": [{"language": "cgn7nd4ftwuO9xCp", "message": ["iD2oASdfgEQKFLuP", "r9G9BinsGAgwHVWP", "TEzi5yNAG3Lep2VN"]}, {"language": "z7tIGqclBBfkvdQ0", "message": ["85uJQ7dgLQ0FfyU4", "yQxmKqVnxNi3Qbtb", "7IQnFekg5S5ONufY"]}, {"language": "9LjYhFCZGM8O7UMi", "message": ["POEL13aNU3c9Sqcp", "QG1kP7fmGaCg8sAi", "p1r47cprCfolbEEz"]}], "isCustomRegex": false, "letterCase": "3lC1GDngVqZn9tMW", "maxLength": 9, "maxRepeatingAlphaNum": 76, "maxRepeatingSpecialCharacter": 96, "minCharType": 25, "minLength": 69, "regex": "SD1OXDxKfUPHDvuf", "specialCharacterLocation": "f0rPe0LuNJTccZCs", "specialCharacters": ["UmeJZkpmcBdL2jpf", "YI1yVOQtnbDTGOuv", "P2qL8NLsHSFPNaKu"]}}, {"field": "8H8ddLNoXlGCBojx", "validation": {"allowAllSpecialCharacters": true, "allowDigit": false, "allowLetter": true, "allowSpace": false, "allowUnicode": false, "avatarConfig": {"allowedPrefixes": ["ZpqDkz7wg0MpvTr0", "VwGJQ3yMcq3h5lik", "97WzLvkDJUutF4V7"], "preferRegex": false, "regex": "7RqMZgNTkkMccswM"}, "blockedWord": ["sNhbTa4HrnTNwzw1", "Fy85xoaTuqPp7fen", "JFmATEvOTxBxUMsM"], "description": [{"language": "RaNnw1kE7igyQVcH", "message": ["b7KlfjUa4tY16wKi", "UMZP4GCNFjnTpOHi", "1MZhKia9WnmBHiph"]}, {"language": "zquE8AmDTt7UD9bL", "message": ["EYGbap0nx2gBQCOf", "y8LIEZGEf3sqcQEa", "KJZZjTbBcLmVWoI2"]}, {"language": "FxyBixowR8795GuX", "message": ["EvdMmVdZizAUvne1", "bBFQbp5xxLBbqErj", "p5Ni2Ym8iZD0VN23"]}], "isCustomRegex": true, "letterCase": "Z3UhIA1QYYilwa9z", "maxLength": 43, "maxRepeatingAlphaNum": 76, "maxRepeatingSpecialCharacter": 46, "minCharType": 15, "minLength": 29, "regex": "7gRofngrQJgB62qM", "specialCharacterLocation": "y56ahi9dJhrAA3Pi", "specialCharacters": ["UeKIoPMpOvSM6vVW", "6F0NdzgF1dO5R0Hc", "Cp5u27Oj26IdyrT3"]}}, {"field": "tPBHSGBSSyTS0e5I", "validation": {"allowAllSpecialCharacters": false, "allowDigit": true, "allowLetter": false, "allowSpace": false, "allowUnicode": true, "avatarConfig": {"allowedPrefixes": ["g1HPojFA3HJn1QYg", "fbOY6Vugfvc9Nieg", "vhBnCpFtjERgbA4Y"], "preferRegex": true, "regex": "AIS3WQ7JSi4vvDVL"}, "blockedWord": ["VqDidWfbujIcFeYw", "o8kzIzx3H6pU9uaM", "VQUzZCBOjCzsPrw2"], "description": [{"language": "IAT5V90pygZgBaA5", "message": ["T2mwqA1xdTWRleh5", "x1Yaj3K1c0HGVjcJ", "6gO37658EF37Zihr"]}, {"language": "rN1J8BFq0V4pdkxf", "message": ["OteJTAZG2krq0pDm", "xrM5Kf123gkDGgcf", "NBBFcoJqJmN3UaBH"]}, {"language": "qXVgWlsuVWG5XXPv", "message": ["q8udReH2wdSRlzgv", "NSojredqasMv7aBk", "w5v3uGVkNPe613HQ"]}], "isCustomRegex": false, "letterCase": "PQ34jMoSx4YM1kpM", "maxLength": 58, "maxRepeatingAlphaNum": 48, "maxRepeatingSpecialCharacter": 25, "minCharType": 81, "minLength": 30, "regex": "7hbdN6vflqcD6XDK", "specialCharacterLocation": "2DDSRm7Cc7enaAgn", "specialCharacters": ["8M5yM7hfD1sjOEZf", "U5E6ciYpnW9rkU9j", "6VjjiDUKjpHOVu6t"]}}]'
"""

result, error = admin_update_input_validations(
    body=body,
    x_additional_headers=x_additional_headers,
)
