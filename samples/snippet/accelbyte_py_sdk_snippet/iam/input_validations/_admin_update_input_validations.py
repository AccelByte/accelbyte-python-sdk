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

Example: '[{"field": "oOSeit9boBInv2pU", "validation": {"allowAllSpecialCharacters": false, "allowDigit": true, "allowLetter": true, "allowSpace": true, "allowUnicode": true, "avatarConfig": {"allowedPrefixes": ["TGY44ryCUDjINiwa", "s3HdLpbSlm4PvSjT", "gKEp6Gj7lA5jTFd9"], "preferRegex": true, "regex": "HR1OPrLK4yZrrAuD"}, "blockedWord": ["9K7VLoK85zlxnxMv", "cg10fRrdtp5a9Ojt", "QuUGEcSyUDwdFOTS"], "description": [{"language": "9LZ1Y0TEzF5XhsqW", "message": ["sr7FFlpddsj0MFmD", "vCPYwmPqMHeVI7Lf", "D9gaMWgPWmVEfsxn"]}, {"language": "a8aEt9egU9YBVJDX", "message": ["WadJ0kJuzUNjfABJ", "AZwf8rjuqZgO3mgI", "HS0o6dboA87pl7fB"]}, {"language": "1CL7qV1QCcNhLRuh", "message": ["2tYjEsCptimjAQFT", "8MBplOujWsAo3N9x", "QEih5ViqLxGu9u3d"]}], "isCustomRegex": false, "letterCase": "xdi66aMi79cfeVlb", "maxLength": 85, "maxRepeatingAlphaNum": 58, "maxRepeatingSpecialCharacter": 8, "minCharType": 59, "minLength": 93, "regex": "QmkY41wf36yGIY9M", "specialCharacterLocation": "R4fiqDfYi2vFLYbW", "specialCharacters": ["XHHZab1SBeQ4HWsv", "0SQkMyyEGyMhOlq1", "i9M6pBO2hGsyKHRw"]}}, {"field": "95IuN5ePL7vm7aiJ", "validation": {"allowAllSpecialCharacters": true, "allowDigit": true, "allowLetter": true, "allowSpace": false, "allowUnicode": true, "avatarConfig": {"allowedPrefixes": ["pHJdwjjvwym484v7", "mhnpD5BAbrFvKzeZ", "POlOod4sFmaZA1sK"], "preferRegex": false, "regex": "RMIouKp8NbPvQafj"}, "blockedWord": ["eXa3yQkgaENDlEat", "Il7SDHWSDOKMYzVa", "ePVH3Xq1feVCNTDX"], "description": [{"language": "3tAfPPNkish1fKkK", "message": ["u9zErOr0EQddCwmd", "hhnBHPnyDEYpa2La", "zPz0y0mnTlqEDRJV"]}, {"language": "KYAwqu4SshDPgxZn", "message": ["s3oVzuDqBy3PEaR4", "wNfMAmklALAvLmwC", "kRPKCvrsvHJ8sM9f"]}, {"language": "6gcbI6kAZufGtoUC", "message": ["D2fSMzQQB2H4xXM8", "AfB3XM5ijs2R5IMG", "e2buEf3y1JFK6kj2"]}], "isCustomRegex": true, "letterCase": "eQO75miIJuUSyRMw", "maxLength": 62, "maxRepeatingAlphaNum": 12, "maxRepeatingSpecialCharacter": 73, "minCharType": 99, "minLength": 17, "regex": "2MuiVlpClPUqDedU", "specialCharacterLocation": "Vhgb4jCUxkWxtQea", "specialCharacters": ["BqI2YBHA5uFobMjo", "UE2fjee0VxBwFgUx", "sW7tq5704jUCScVR"]}}, {"field": "YALkBEIuZp3wDw1P", "validation": {"allowAllSpecialCharacters": true, "allowDigit": true, "allowLetter": false, "allowSpace": true, "allowUnicode": false, "avatarConfig": {"allowedPrefixes": ["XZkrSX9Mllf5c0Dv", "OeiTOCkvVOM4XQbb", "YMjTkQzvr9njkGON"], "preferRegex": false, "regex": "c7viEb4uCYpSwCL5"}, "blockedWord": ["zAOc3FjITNn8vxWE", "LuqGoLVwrKMUGc83", "mSzrcQkvpR9K7r7U"], "description": [{"language": "c0g7OC7ezvdEHu8z", "message": ["jPjDErLXRhLbIqEX", "BCXKqRkzjnhmKvMO", "H2IjtY40YVcRXxTq"]}, {"language": "4wtOqveWQdLMKeoI", "message": ["Zh2BkerOunOYv6cM", "MeHRKIQxuHU0sAQ7", "scLMQfgO5gmkmQay"]}, {"language": "de9L8q4s7iQ8ECj6", "message": ["22I7LGXxpAAcc2DX", "8Yg1cvmVRyv7nfBb", "zBW9n8lZroWI4kzM"]}], "isCustomRegex": false, "letterCase": "JgQ6EriC1LulKvNP", "maxLength": 39, "maxRepeatingAlphaNum": 84, "maxRepeatingSpecialCharacter": 63, "minCharType": 12, "minLength": 48, "regex": "2jcC1k3ogBDJcll0", "specialCharacterLocation": "r2D8GVqV5miju2nY", "specialCharacters": ["QczN0u9l2Hh92B26", "nyt5dwRRXpL8RzCX", "FUZGPbngkDWIFIvh"]}}]'
"""

result, error = admin_update_input_validations(
    body=body,
    x_additional_headers=x_additional_headers,
)
