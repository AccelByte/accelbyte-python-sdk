# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: accelbyte_cloud_py_codegen

# AccelByte Cloud Iam Service (5.27.2)

# pylint: disable=duplicate-code
# pylint: disable=line-too-long
# pylint: disable=missing-function-docstring
# pylint: disable=missing-module-docstring
# pylint: disable=too-many-arguments
# pylint: disable=too-many-branches
# pylint: disable=too-many-instance-attributes
# pylint: disable=too-many-lines
# pylint: disable=too-many-locals
# pylint: disable=too-many-public-methods
# pylint: disable=too-many-return-statements
# pylint: disable=too-many-statements
# pylint: disable=unused-import

from __future__ import annotations
from typing import Any, Dict, List, Optional, Tuple, Union

from ....core import Model

from ..models.validation_description import ValidationDescription


class Validation(Model):
    """Validation (.validation)

    Properties:
        allow_all_special_characters: (allowAllSpecialCharacters) REQUIRED bool

        allow_digit: (allowDigit) REQUIRED bool

        allow_letter: (allowLetter) REQUIRED bool

        allow_space: (allowSpace) REQUIRED bool

        allow_unicode: (allowUnicode) REQUIRED bool

        blocked_word: (blockedWord) REQUIRED List[str]

        description: (description) REQUIRED List[ValidationDescription]

        is_custom_regex: (isCustomRegex) REQUIRED bool

        letter_case: (letterCase) REQUIRED str

        max_length: (maxLength) REQUIRED int

        max_repeating_alpha_num: (maxRepeatingAlphaNum) REQUIRED int

        max_repeating_special_character: (maxRepeatingSpecialCharacter) REQUIRED int

        min_char_type: (minCharType) REQUIRED int

        min_length: (minLength) REQUIRED int

        regex: (regex) REQUIRED str

        special_character_location: (specialCharacterLocation) REQUIRED str

        special_characters: (specialCharacters) REQUIRED List[str]
    """

    # region fields

    allow_all_special_characters: bool  # REQUIRED
    allow_digit: bool  # REQUIRED
    allow_letter: bool  # REQUIRED
    allow_space: bool  # REQUIRED
    allow_unicode: bool  # REQUIRED
    blocked_word: List[str]  # REQUIRED
    description: List[ValidationDescription]  # REQUIRED
    is_custom_regex: bool  # REQUIRED
    letter_case: str  # REQUIRED
    max_length: int  # REQUIRED
    max_repeating_alpha_num: int  # REQUIRED
    max_repeating_special_character: int  # REQUIRED
    min_char_type: int  # REQUIRED
    min_length: int  # REQUIRED
    regex: str  # REQUIRED
    special_character_location: str  # REQUIRED
    special_characters: List[str]  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_allow_all_special_characters(self, value: bool) -> Validation:
        self.allow_all_special_characters = value
        return self

    def with_allow_digit(self, value: bool) -> Validation:
        self.allow_digit = value
        return self

    def with_allow_letter(self, value: bool) -> Validation:
        self.allow_letter = value
        return self

    def with_allow_space(self, value: bool) -> Validation:
        self.allow_space = value
        return self

    def with_allow_unicode(self, value: bool) -> Validation:
        self.allow_unicode = value
        return self

    def with_blocked_word(self, value: List[str]) -> Validation:
        self.blocked_word = value
        return self

    def with_description(self, value: List[ValidationDescription]) -> Validation:
        self.description = value
        return self

    def with_is_custom_regex(self, value: bool) -> Validation:
        self.is_custom_regex = value
        return self

    def with_letter_case(self, value: str) -> Validation:
        self.letter_case = value
        return self

    def with_max_length(self, value: int) -> Validation:
        self.max_length = value
        return self

    def with_max_repeating_alpha_num(self, value: int) -> Validation:
        self.max_repeating_alpha_num = value
        return self

    def with_max_repeating_special_character(self, value: int) -> Validation:
        self.max_repeating_special_character = value
        return self

    def with_min_char_type(self, value: int) -> Validation:
        self.min_char_type = value
        return self

    def with_min_length(self, value: int) -> Validation:
        self.min_length = value
        return self

    def with_regex(self, value: str) -> Validation:
        self.regex = value
        return self

    def with_special_character_location(self, value: str) -> Validation:
        self.special_character_location = value
        return self

    def with_special_characters(self, value: List[str]) -> Validation:
        self.special_characters = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "allow_all_special_characters"):
            result["allowAllSpecialCharacters"] = bool(
                self.allow_all_special_characters
            )
        elif include_empty:
            result["allowAllSpecialCharacters"] = False
        if hasattr(self, "allow_digit"):
            result["allowDigit"] = bool(self.allow_digit)
        elif include_empty:
            result["allowDigit"] = False
        if hasattr(self, "allow_letter"):
            result["allowLetter"] = bool(self.allow_letter)
        elif include_empty:
            result["allowLetter"] = False
        if hasattr(self, "allow_space"):
            result["allowSpace"] = bool(self.allow_space)
        elif include_empty:
            result["allowSpace"] = False
        if hasattr(self, "allow_unicode"):
            result["allowUnicode"] = bool(self.allow_unicode)
        elif include_empty:
            result["allowUnicode"] = False
        if hasattr(self, "blocked_word"):
            result["blockedWord"] = [str(i0) for i0 in self.blocked_word]
        elif include_empty:
            result["blockedWord"] = []
        if hasattr(self, "description"):
            result["description"] = [
                i0.to_dict(include_empty=include_empty) for i0 in self.description
            ]
        elif include_empty:
            result["description"] = []
        if hasattr(self, "is_custom_regex"):
            result["isCustomRegex"] = bool(self.is_custom_regex)
        elif include_empty:
            result["isCustomRegex"] = False
        if hasattr(self, "letter_case"):
            result["letterCase"] = str(self.letter_case)
        elif include_empty:
            result["letterCase"] = ""
        if hasattr(self, "max_length"):
            result["maxLength"] = int(self.max_length)
        elif include_empty:
            result["maxLength"] = 0
        if hasattr(self, "max_repeating_alpha_num"):
            result["maxRepeatingAlphaNum"] = int(self.max_repeating_alpha_num)
        elif include_empty:
            result["maxRepeatingAlphaNum"] = 0
        if hasattr(self, "max_repeating_special_character"):
            result["maxRepeatingSpecialCharacter"] = int(
                self.max_repeating_special_character
            )
        elif include_empty:
            result["maxRepeatingSpecialCharacter"] = 0
        if hasattr(self, "min_char_type"):
            result["minCharType"] = int(self.min_char_type)
        elif include_empty:
            result["minCharType"] = 0
        if hasattr(self, "min_length"):
            result["minLength"] = int(self.min_length)
        elif include_empty:
            result["minLength"] = 0
        if hasattr(self, "regex"):
            result["regex"] = str(self.regex)
        elif include_empty:
            result["regex"] = ""
        if hasattr(self, "special_character_location"):
            result["specialCharacterLocation"] = str(self.special_character_location)
        elif include_empty:
            result["specialCharacterLocation"] = ""
        if hasattr(self, "special_characters"):
            result["specialCharacters"] = [str(i0) for i0 in self.special_characters]
        elif include_empty:
            result["specialCharacters"] = []
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        allow_all_special_characters: bool,
        allow_digit: bool,
        allow_letter: bool,
        allow_space: bool,
        allow_unicode: bool,
        blocked_word: List[str],
        description: List[ValidationDescription],
        is_custom_regex: bool,
        letter_case: str,
        max_length: int,
        max_repeating_alpha_num: int,
        max_repeating_special_character: int,
        min_char_type: int,
        min_length: int,
        regex: str,
        special_character_location: str,
        special_characters: List[str],
    ) -> Validation:
        instance = cls()
        instance.allow_all_special_characters = allow_all_special_characters
        instance.allow_digit = allow_digit
        instance.allow_letter = allow_letter
        instance.allow_space = allow_space
        instance.allow_unicode = allow_unicode
        instance.blocked_word = blocked_word
        instance.description = description
        instance.is_custom_regex = is_custom_regex
        instance.letter_case = letter_case
        instance.max_length = max_length
        instance.max_repeating_alpha_num = max_repeating_alpha_num
        instance.max_repeating_special_character = max_repeating_special_character
        instance.min_char_type = min_char_type
        instance.min_length = min_length
        instance.regex = regex
        instance.special_character_location = special_character_location
        instance.special_characters = special_characters
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> Validation:
        instance = cls()
        if not dict_:
            return instance
        if (
            "allowAllSpecialCharacters" in dict_
            and dict_["allowAllSpecialCharacters"] is not None
        ):
            instance.allow_all_special_characters = bool(
                dict_["allowAllSpecialCharacters"]
            )
        elif include_empty:
            instance.allow_all_special_characters = False
        if "allowDigit" in dict_ and dict_["allowDigit"] is not None:
            instance.allow_digit = bool(dict_["allowDigit"])
        elif include_empty:
            instance.allow_digit = False
        if "allowLetter" in dict_ and dict_["allowLetter"] is not None:
            instance.allow_letter = bool(dict_["allowLetter"])
        elif include_empty:
            instance.allow_letter = False
        if "allowSpace" in dict_ and dict_["allowSpace"] is not None:
            instance.allow_space = bool(dict_["allowSpace"])
        elif include_empty:
            instance.allow_space = False
        if "allowUnicode" in dict_ and dict_["allowUnicode"] is not None:
            instance.allow_unicode = bool(dict_["allowUnicode"])
        elif include_empty:
            instance.allow_unicode = False
        if "blockedWord" in dict_ and dict_["blockedWord"] is not None:
            instance.blocked_word = [str(i0) for i0 in dict_["blockedWord"]]
        elif include_empty:
            instance.blocked_word = []
        if "description" in dict_ and dict_["description"] is not None:
            instance.description = [
                ValidationDescription.create_from_dict(i0, include_empty=include_empty)
                for i0 in dict_["description"]
            ]
        elif include_empty:
            instance.description = []
        if "isCustomRegex" in dict_ and dict_["isCustomRegex"] is not None:
            instance.is_custom_regex = bool(dict_["isCustomRegex"])
        elif include_empty:
            instance.is_custom_regex = False
        if "letterCase" in dict_ and dict_["letterCase"] is not None:
            instance.letter_case = str(dict_["letterCase"])
        elif include_empty:
            instance.letter_case = ""
        if "maxLength" in dict_ and dict_["maxLength"] is not None:
            instance.max_length = int(dict_["maxLength"])
        elif include_empty:
            instance.max_length = 0
        if (
            "maxRepeatingAlphaNum" in dict_
            and dict_["maxRepeatingAlphaNum"] is not None
        ):
            instance.max_repeating_alpha_num = int(dict_["maxRepeatingAlphaNum"])
        elif include_empty:
            instance.max_repeating_alpha_num = 0
        if (
            "maxRepeatingSpecialCharacter" in dict_
            and dict_["maxRepeatingSpecialCharacter"] is not None
        ):
            instance.max_repeating_special_character = int(
                dict_["maxRepeatingSpecialCharacter"]
            )
        elif include_empty:
            instance.max_repeating_special_character = 0
        if "minCharType" in dict_ and dict_["minCharType"] is not None:
            instance.min_char_type = int(dict_["minCharType"])
        elif include_empty:
            instance.min_char_type = 0
        if "minLength" in dict_ and dict_["minLength"] is not None:
            instance.min_length = int(dict_["minLength"])
        elif include_empty:
            instance.min_length = 0
        if "regex" in dict_ and dict_["regex"] is not None:
            instance.regex = str(dict_["regex"])
        elif include_empty:
            instance.regex = ""
        if (
            "specialCharacterLocation" in dict_
            and dict_["specialCharacterLocation"] is not None
        ):
            instance.special_character_location = str(dict_["specialCharacterLocation"])
        elif include_empty:
            instance.special_character_location = ""
        if "specialCharacters" in dict_ and dict_["specialCharacters"] is not None:
            instance.special_characters = [str(i0) for i0 in dict_["specialCharacters"]]
        elif include_empty:
            instance.special_characters = []
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, Validation]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[Validation]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[Validation, List[Validation], Dict[Any, Validation]]:
        if many:
            if isinstance(any_, dict):
                return cls.create_many_from_dict(any_, include_empty=include_empty)
            elif isinstance(any_, list):
                return cls.create_many_from_list(any_, include_empty=include_empty)
            else:
                raise ValueError()
        else:
            return cls.create_from_dict(any_, include_empty=include_empty)

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "allowAllSpecialCharacters": "allow_all_special_characters",
            "allowDigit": "allow_digit",
            "allowLetter": "allow_letter",
            "allowSpace": "allow_space",
            "allowUnicode": "allow_unicode",
            "blockedWord": "blocked_word",
            "description": "description",
            "isCustomRegex": "is_custom_regex",
            "letterCase": "letter_case",
            "maxLength": "max_length",
            "maxRepeatingAlphaNum": "max_repeating_alpha_num",
            "maxRepeatingSpecialCharacter": "max_repeating_special_character",
            "minCharType": "min_char_type",
            "minLength": "min_length",
            "regex": "regex",
            "specialCharacterLocation": "special_character_location",
            "specialCharacters": "special_characters",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "allowAllSpecialCharacters": True,
            "allowDigit": True,
            "allowLetter": True,
            "allowSpace": True,
            "allowUnicode": True,
            "blockedWord": True,
            "description": True,
            "isCustomRegex": True,
            "letterCase": True,
            "maxLength": True,
            "maxRepeatingAlphaNum": True,
            "maxRepeatingSpecialCharacter": True,
            "minCharType": True,
            "minLength": True,
            "regex": True,
            "specialCharacterLocation": True,
            "specialCharacters": True,
        }

    # endregion static methods
