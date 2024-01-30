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


class ModelsDictionaryExportItem(Model):
    """Models dictionary export item (models.DictionaryExportItem)

    Properties:
        word: (word) REQUIRED str

        false_negative: (falseNegative) OPTIONAL List[str]

        false_positive: (falsePositive) OPTIONAL List[str]
    """

    # region fields

    word: str  # REQUIRED
    false_negative: List[str]  # OPTIONAL
    false_positive: List[str]  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_word(self, value: str) -> ModelsDictionaryExportItem:
        self.word = value
        return self

    def with_false_negative(self, value: List[str]) -> ModelsDictionaryExportItem:
        self.false_negative = value
        return self

    def with_false_positive(self, value: List[str]) -> ModelsDictionaryExportItem:
        self.false_positive = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "word"):
            result["word"] = str(self.word)
        elif include_empty:
            result["word"] = ""
        if hasattr(self, "false_negative"):
            result["falseNegative"] = [str(i0) for i0 in self.false_negative]
        elif include_empty:
            result["falseNegative"] = []
        if hasattr(self, "false_positive"):
            result["falsePositive"] = [str(i0) for i0 in self.false_positive]
        elif include_empty:
            result["falsePositive"] = []
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        word: str,
        false_negative: Optional[List[str]] = None,
        false_positive: Optional[List[str]] = None,
        **kwargs,
    ) -> ModelsDictionaryExportItem:
        instance = cls()
        instance.word = word
        if false_negative is not None:
            instance.false_negative = false_negative
        if false_positive is not None:
            instance.false_positive = false_positive
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ModelsDictionaryExportItem:
        instance = cls()
        if not dict_:
            return instance
        if "word" in dict_ and dict_["word"] is not None:
            instance.word = str(dict_["word"])
        elif include_empty:
            instance.word = ""
        if "falseNegative" in dict_ and dict_["falseNegative"] is not None:
            instance.false_negative = [str(i0) for i0 in dict_["falseNegative"]]
        elif include_empty:
            instance.false_negative = []
        if "falsePositive" in dict_ and dict_["falsePositive"] is not None:
            instance.false_positive = [str(i0) for i0 in dict_["falsePositive"]]
        elif include_empty:
            instance.false_positive = []
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ModelsDictionaryExportItem]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ModelsDictionaryExportItem]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ModelsDictionaryExportItem,
        List[ModelsDictionaryExportItem],
        Dict[Any, ModelsDictionaryExportItem],
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
            "word": "word",
            "falseNegative": "false_negative",
            "falsePositive": "false_positive",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "word": True,
            "falseNegative": False,
            "falsePositive": False,
        }

    # endregion static methods
