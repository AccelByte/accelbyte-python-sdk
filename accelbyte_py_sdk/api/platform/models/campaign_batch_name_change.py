# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: ags_py_codegen

# AccelByte Gaming Services Platform Service

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


class CampaignBatchNameChange(Model):
    """A DTO object for changing campaign batch name. (CampaignBatchNameChange)

    Properties:
        new_name: (newName) OPTIONAL str

        old_name: (oldName) OPTIONAL str
    """

    # region fields

    new_name: str  # OPTIONAL
    old_name: str  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_new_name(self, value: str) -> CampaignBatchNameChange:
        self.new_name = value
        return self

    def with_old_name(self, value: str) -> CampaignBatchNameChange:
        self.old_name = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "new_name"):
            result["newName"] = str(self.new_name)
        elif include_empty:
            result["newName"] = ""
        if hasattr(self, "old_name"):
            result["oldName"] = str(self.old_name)
        elif include_empty:
            result["oldName"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls, new_name: Optional[str] = None, old_name: Optional[str] = None, **kwargs
    ) -> CampaignBatchNameChange:
        instance = cls()
        if new_name is not None:
            instance.new_name = new_name
        if old_name is not None:
            instance.old_name = old_name
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> CampaignBatchNameChange:
        instance = cls()
        if not dict_:
            return instance
        if "newName" in dict_ and dict_["newName"] is not None:
            instance.new_name = str(dict_["newName"])
        elif include_empty:
            instance.new_name = ""
        if "oldName" in dict_ and dict_["oldName"] is not None:
            instance.old_name = str(dict_["oldName"])
        elif include_empty:
            instance.old_name = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, CampaignBatchNameChange]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[CampaignBatchNameChange]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        CampaignBatchNameChange,
        List[CampaignBatchNameChange],
        Dict[Any, CampaignBatchNameChange],
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
            "newName": "new_name",
            "oldName": "old_name",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "newName": False,
            "oldName": False,
        }

    # endregion static methods
