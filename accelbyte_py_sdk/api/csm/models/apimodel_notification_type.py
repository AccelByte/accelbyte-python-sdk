# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: ags_py_codegen

# Custom Service Manager

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


class ApimodelNotificationType(Model):
    """Apimodel notification type (apimodel.NotificationType)

    Properties:
        subcription_id: (subcriptionID) REQUIRED str

        type_: (type) REQUIRED str
    """

    # region fields

    subcription_id: str  # REQUIRED
    type_: str  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_subcription_id(self, value: str) -> ApimodelNotificationType:
        self.subcription_id = value
        return self

    def with_type(self, value: str) -> ApimodelNotificationType:
        self.type_ = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "subcription_id"):
            result["subcriptionID"] = str(self.subcription_id)
        elif include_empty:
            result["subcriptionID"] = ""
        if hasattr(self, "type_"):
            result["type"] = str(self.type_)
        elif include_empty:
            result["type"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls, subcription_id: str, type_: str, **kwargs
    ) -> ApimodelNotificationType:
        instance = cls()
        instance.subcription_id = subcription_id
        instance.type_ = type_
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ApimodelNotificationType:
        instance = cls()
        if not dict_:
            return instance
        if "subcriptionID" in dict_ and dict_["subcriptionID"] is not None:
            instance.subcription_id = str(dict_["subcriptionID"])
        elif include_empty:
            instance.subcription_id = ""
        if "type" in dict_ and dict_["type"] is not None:
            instance.type_ = str(dict_["type"])
        elif include_empty:
            instance.type_ = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ApimodelNotificationType]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ApimodelNotificationType]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ApimodelNotificationType,
        List[ApimodelNotificationType],
        Dict[Any, ApimodelNotificationType],
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
            "subcriptionID": "subcription_id",
            "type": "type_",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "subcriptionID": True,
            "type": True,
        }

    # endregion static methods
