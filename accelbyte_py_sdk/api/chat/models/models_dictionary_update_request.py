# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: ags_py_codegen

# AccelByte Gaming Services Chat Service

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


class ModelsDictionaryUpdateRequest(Model):
    """Models dictionary update request (models.DictionaryUpdateRequest)

    Properties:
        false_negative: (falseNegative) REQUIRED List[str]

        false_positive: (falsePositive) REQUIRED List[str]

        word: (word) REQUIRED str

        word_type: (wordType) REQUIRED str
    """

    # region fields

    false_negative: List[str]  # REQUIRED
    false_positive: List[str]  # REQUIRED
    word: str  # REQUIRED
    word_type: str  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_false_negative(self, value: List[str]) -> ModelsDictionaryUpdateRequest:
        self.false_negative = value
        return self

    def with_false_positive(self, value: List[str]) -> ModelsDictionaryUpdateRequest:
        self.false_positive = value
        return self

    def with_word(self, value: str) -> ModelsDictionaryUpdateRequest:
        self.word = value
        return self

    def with_word_type(self, value: str) -> ModelsDictionaryUpdateRequest:
        self.word_type = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "false_negative"):
            result["falseNegative"] = [str(i0) for i0 in self.false_negative]
        elif include_empty:
            result["falseNegative"] = []
        if hasattr(self, "false_positive"):
            result["falsePositive"] = [str(i0) for i0 in self.false_positive]
        elif include_empty:
            result["falsePositive"] = []
        if hasattr(self, "word"):
            result["word"] = str(self.word)
        elif include_empty:
            result["word"] = ""
        if hasattr(self, "word_type"):
            result["wordType"] = str(self.word_type)
        elif include_empty:
            result["wordType"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        false_negative: List[str],
        false_positive: List[str],
        word: str,
        word_type: str,
        **kwargs,
    ) -> ModelsDictionaryUpdateRequest:
        instance = cls()
        instance.false_negative = false_negative
        instance.false_positive = false_positive
        instance.word = word
        instance.word_type = word_type
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ModelsDictionaryUpdateRequest:
        instance = cls()
        if not dict_:
            return instance
        if "falseNegative" in dict_ and dict_["falseNegative"] is not None:
            instance.false_negative = [str(i0) for i0 in dict_["falseNegative"]]
        elif include_empty:
            instance.false_negative = []
        if "falsePositive" in dict_ and dict_["falsePositive"] is not None:
            instance.false_positive = [str(i0) for i0 in dict_["falsePositive"]]
        elif include_empty:
            instance.false_positive = []
        if "word" in dict_ and dict_["word"] is not None:
            instance.word = str(dict_["word"])
        elif include_empty:
            instance.word = ""
        if "wordType" in dict_ and dict_["wordType"] is not None:
            instance.word_type = str(dict_["wordType"])
        elif include_empty:
            instance.word_type = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ModelsDictionaryUpdateRequest]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ModelsDictionaryUpdateRequest]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ModelsDictionaryUpdateRequest,
        List[ModelsDictionaryUpdateRequest],
        Dict[Any, ModelsDictionaryUpdateRequest],
    ]:
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
            "falseNegative": "false_negative",
            "falsePositive": "false_positive",
            "word": "word",
            "wordType": "word_type",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "falseNegative": True,
            "falsePositive": True,
            "word": True,
            "wordType": True,
        }

    # endregion static methods
