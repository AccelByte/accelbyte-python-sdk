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


class ModelsDictionaryWordChanges(Model):
    """Models dictionary word changes (models.DictionaryWordChanges)

    Properties:
        added: (added) REQUIRED List[str]

        failed: (failed) REQUIRED List[str]

        ignored: (ignored) REQUIRED List[str]

        replaced: (replaced) REQUIRED List[str]

        unchanged: (unchanged) REQUIRED List[str]
    """

    # region fields

    added: List[str]  # REQUIRED
    failed: List[str]  # REQUIRED
    ignored: List[str]  # REQUIRED
    replaced: List[str]  # REQUIRED
    unchanged: List[str]  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_added(self, value: List[str]) -> ModelsDictionaryWordChanges:
        self.added = value
        return self

    def with_failed(self, value: List[str]) -> ModelsDictionaryWordChanges:
        self.failed = value
        return self

    def with_ignored(self, value: List[str]) -> ModelsDictionaryWordChanges:
        self.ignored = value
        return self

    def with_replaced(self, value: List[str]) -> ModelsDictionaryWordChanges:
        self.replaced = value
        return self

    def with_unchanged(self, value: List[str]) -> ModelsDictionaryWordChanges:
        self.unchanged = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "added"):
            result["added"] = [str(i0) for i0 in self.added]
        elif include_empty:
            result["added"] = []
        if hasattr(self, "failed"):
            result["failed"] = [str(i0) for i0 in self.failed]
        elif include_empty:
            result["failed"] = []
        if hasattr(self, "ignored"):
            result["ignored"] = [str(i0) for i0 in self.ignored]
        elif include_empty:
            result["ignored"] = []
        if hasattr(self, "replaced"):
            result["replaced"] = [str(i0) for i0 in self.replaced]
        elif include_empty:
            result["replaced"] = []
        if hasattr(self, "unchanged"):
            result["unchanged"] = [str(i0) for i0 in self.unchanged]
        elif include_empty:
            result["unchanged"] = []
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        added: List[str],
        failed: List[str],
        ignored: List[str],
        replaced: List[str],
        unchanged: List[str],
        **kwargs,
    ) -> ModelsDictionaryWordChanges:
        instance = cls()
        instance.added = added
        instance.failed = failed
        instance.ignored = ignored
        instance.replaced = replaced
        instance.unchanged = unchanged
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ModelsDictionaryWordChanges:
        instance = cls()
        if not dict_:
            return instance
        if "added" in dict_ and dict_["added"] is not None:
            instance.added = [str(i0) for i0 in dict_["added"]]
        elif include_empty:
            instance.added = []
        if "failed" in dict_ and dict_["failed"] is not None:
            instance.failed = [str(i0) for i0 in dict_["failed"]]
        elif include_empty:
            instance.failed = []
        if "ignored" in dict_ and dict_["ignored"] is not None:
            instance.ignored = [str(i0) for i0 in dict_["ignored"]]
        elif include_empty:
            instance.ignored = []
        if "replaced" in dict_ and dict_["replaced"] is not None:
            instance.replaced = [str(i0) for i0 in dict_["replaced"]]
        elif include_empty:
            instance.replaced = []
        if "unchanged" in dict_ and dict_["unchanged"] is not None:
            instance.unchanged = [str(i0) for i0 in dict_["unchanged"]]
        elif include_empty:
            instance.unchanged = []
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ModelsDictionaryWordChanges]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ModelsDictionaryWordChanges]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ModelsDictionaryWordChanges,
        List[ModelsDictionaryWordChanges],
        Dict[Any, ModelsDictionaryWordChanges],
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
            "added": "added",
            "failed": "failed",
            "ignored": "ignored",
            "replaced": "replaced",
            "unchanged": "unchanged",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "added": True,
            "failed": True,
            "ignored": True,
            "replaced": True,
            "unchanged": True,
        }

    # endregion static methods
