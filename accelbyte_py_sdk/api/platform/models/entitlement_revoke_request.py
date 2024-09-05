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


class EntitlementRevokeRequest(Model):
    """A DTO object for revoke entitlement API call. (EntitlementRevokeRequest)

    Properties:
        metadata: (metadata) OPTIONAL Dict[str, Any]
    """

    # region fields

    metadata: Dict[str, Any]  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_metadata(self, value: Dict[str, Any]) -> EntitlementRevokeRequest:
        self.metadata = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "metadata"):
            result["metadata"] = {str(k0): v0 for k0, v0 in self.metadata.items()}
        elif include_empty:
            result["metadata"] = {}
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls, metadata: Optional[Dict[str, Any]] = None, **kwargs
    ) -> EntitlementRevokeRequest:
        instance = cls()
        if metadata is not None:
            instance.metadata = metadata
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> EntitlementRevokeRequest:
        instance = cls()
        if not dict_:
            return instance
        if "metadata" in dict_ and dict_["metadata"] is not None:
            instance.metadata = {str(k0): v0 for k0, v0 in dict_["metadata"].items()}
        elif include_empty:
            instance.metadata = {}
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, EntitlementRevokeRequest]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[EntitlementRevokeRequest]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        EntitlementRevokeRequest,
        List[EntitlementRevokeRequest],
        Dict[Any, EntitlementRevokeRequest],
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
            "metadata": "metadata",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "metadata": False,
        }

    # endregion static methods
