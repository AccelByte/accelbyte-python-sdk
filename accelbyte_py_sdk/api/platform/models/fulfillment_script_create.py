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


class FulfillmentScriptCreate(Model):
    """Fulfillment script create (FulfillmentScriptCreate)

    Properties:
        grant_days: (grantDays) OPTIONAL str
    """

    # region fields

    grant_days: str  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_grant_days(self, value: str) -> FulfillmentScriptCreate:
        self.grant_days = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "grant_days"):
            result["grantDays"] = str(self.grant_days)
        elif include_empty:
            result["grantDays"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls, grant_days: Optional[str] = None, **kwargs
    ) -> FulfillmentScriptCreate:
        instance = cls()
        if grant_days is not None:
            instance.grant_days = grant_days
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> FulfillmentScriptCreate:
        instance = cls()
        if not dict_:
            return instance
        if "grantDays" in dict_ and dict_["grantDays"] is not None:
            instance.grant_days = str(dict_["grantDays"])
        elif include_empty:
            instance.grant_days = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, FulfillmentScriptCreate]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[FulfillmentScriptCreate]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        FulfillmentScriptCreate,
        List[FulfillmentScriptCreate],
        Dict[Any, FulfillmentScriptCreate],
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
            "grantDays": "grant_days",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "grantDays": False,
        }

    # endregion static methods
