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


class RevokeEntitlementPayload(Model):
    """Revoke entitlement payload (RevokeEntitlementPayload)

    Properties:
        entitlement_id: (entitlementId) REQUIRED str

        count: (count) OPTIONAL int
    """

    # region fields

    entitlement_id: str  # REQUIRED
    count: int  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_entitlement_id(self, value: str) -> RevokeEntitlementPayload:
        self.entitlement_id = value
        return self

    def with_count(self, value: int) -> RevokeEntitlementPayload:
        self.count = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "entitlement_id"):
            result["entitlementId"] = str(self.entitlement_id)
        elif include_empty:
            result["entitlementId"] = ""
        if hasattr(self, "count"):
            result["count"] = int(self.count)
        elif include_empty:
            result["count"] = 0
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls, entitlement_id: str, count: Optional[int] = None, **kwargs
    ) -> RevokeEntitlementPayload:
        instance = cls()
        instance.entitlement_id = entitlement_id
        if count is not None:
            instance.count = count
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> RevokeEntitlementPayload:
        instance = cls()
        if not dict_:
            return instance
        if "entitlementId" in dict_ and dict_["entitlementId"] is not None:
            instance.entitlement_id = str(dict_["entitlementId"])
        elif include_empty:
            instance.entitlement_id = ""
        if "count" in dict_ and dict_["count"] is not None:
            instance.count = int(dict_["count"])
        elif include_empty:
            instance.count = 0
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, RevokeEntitlementPayload]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[RevokeEntitlementPayload]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        RevokeEntitlementPayload,
        List[RevokeEntitlementPayload],
        Dict[Any, RevokeEntitlementPayload],
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
            "entitlementId": "entitlement_id",
            "count": "count",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "entitlementId": True,
            "count": False,
        }

    # endregion static methods
