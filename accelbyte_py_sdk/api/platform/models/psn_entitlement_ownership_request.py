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


class PsnEntitlementOwnershipRequest(Model):
    """Psn entitlement ownership request (PsnEntitlementOwnershipRequest)

    Properties:
        access_token: (accessToken) OPTIONAL str

        service_label: (serviceLabel) OPTIONAL int
    """

    # region fields

    access_token: str  # OPTIONAL
    service_label: int  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_access_token(self, value: str) -> PsnEntitlementOwnershipRequest:
        self.access_token = value
        return self

    def with_service_label(self, value: int) -> PsnEntitlementOwnershipRequest:
        self.service_label = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "access_token"):
            result["accessToken"] = str(self.access_token)
        elif include_empty:
            result["accessToken"] = ""
        if hasattr(self, "service_label"):
            result["serviceLabel"] = int(self.service_label)
        elif include_empty:
            result["serviceLabel"] = 0
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        access_token: Optional[str] = None,
        service_label: Optional[int] = None,
        **kwargs,
    ) -> PsnEntitlementOwnershipRequest:
        instance = cls()
        if access_token is not None:
            instance.access_token = access_token
        if service_label is not None:
            instance.service_label = service_label
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> PsnEntitlementOwnershipRequest:
        instance = cls()
        if not dict_:
            return instance
        if "accessToken" in dict_ and dict_["accessToken"] is not None:
            instance.access_token = str(dict_["accessToken"])
        elif include_empty:
            instance.access_token = ""
        if "serviceLabel" in dict_ and dict_["serviceLabel"] is not None:
            instance.service_label = int(dict_["serviceLabel"])
        elif include_empty:
            instance.service_label = 0
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, PsnEntitlementOwnershipRequest]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[PsnEntitlementOwnershipRequest]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        PsnEntitlementOwnershipRequest,
        List[PsnEntitlementOwnershipRequest],
        Dict[Any, PsnEntitlementOwnershipRequest],
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
            "accessToken": "access_token",
            "serviceLabel": "service_label",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "accessToken": False,
            "serviceLabel": False,
        }

    # endregion static methods
