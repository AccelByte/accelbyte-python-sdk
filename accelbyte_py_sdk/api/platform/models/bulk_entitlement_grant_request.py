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

from ..models.entitlement_grant import EntitlementGrant


class BulkEntitlementGrantRequest(Model):
    """A DTO object for granting entitlement in bulk (BulkEntitlementGrantRequest)

    Properties:
        entitlement_grant_list: (entitlementGrantList) OPTIONAL List[EntitlementGrant]

        user_ids: (userIds) OPTIONAL List[str]
    """

    # region fields

    entitlement_grant_list: List[EntitlementGrant]  # OPTIONAL
    user_ids: List[str]  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_entitlement_grant_list(
        self, value: List[EntitlementGrant]
    ) -> BulkEntitlementGrantRequest:
        self.entitlement_grant_list = value
        return self

    def with_user_ids(self, value: List[str]) -> BulkEntitlementGrantRequest:
        self.user_ids = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "entitlement_grant_list"):
            result["entitlementGrantList"] = [
                i0.to_dict(include_empty=include_empty)
                for i0 in self.entitlement_grant_list
            ]
        elif include_empty:
            result["entitlementGrantList"] = []
        if hasattr(self, "user_ids"):
            result["userIds"] = [str(i0) for i0 in self.user_ids]
        elif include_empty:
            result["userIds"] = []
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        entitlement_grant_list: Optional[List[EntitlementGrant]] = None,
        user_ids: Optional[List[str]] = None,
        **kwargs,
    ) -> BulkEntitlementGrantRequest:
        instance = cls()
        if entitlement_grant_list is not None:
            instance.entitlement_grant_list = entitlement_grant_list
        if user_ids is not None:
            instance.user_ids = user_ids
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> BulkEntitlementGrantRequest:
        instance = cls()
        if not dict_:
            return instance
        if (
            "entitlementGrantList" in dict_
            and dict_["entitlementGrantList"] is not None
        ):
            instance.entitlement_grant_list = [
                EntitlementGrant.create_from_dict(i0, include_empty=include_empty)
                for i0 in dict_["entitlementGrantList"]
            ]
        elif include_empty:
            instance.entitlement_grant_list = []
        if "userIds" in dict_ and dict_["userIds"] is not None:
            instance.user_ids = [str(i0) for i0 in dict_["userIds"]]
        elif include_empty:
            instance.user_ids = []
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, BulkEntitlementGrantRequest]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[BulkEntitlementGrantRequest]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        BulkEntitlementGrantRequest,
        List[BulkEntitlementGrantRequest],
        Dict[Any, BulkEntitlementGrantRequest],
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
            "entitlementGrantList": "entitlement_grant_list",
            "userIds": "user_ids",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "entitlementGrantList": False,
            "userIds": False,
        }

    # endregion static methods
