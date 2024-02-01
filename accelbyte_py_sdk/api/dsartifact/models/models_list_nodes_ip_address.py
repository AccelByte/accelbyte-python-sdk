# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: ags_py_codegen

# AccelByte Gaming Services Ds Artifact Manager

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

from ..models.models_paging_cursor import ModelsPagingCursor


class ModelsListNodesIPAddress(Model):
    """Models list nodes IP address (models.ListNodesIPAddress)

    Properties:
        ip_addresses: (ip_addresses) REQUIRED List[str]

        paging: (paging) REQUIRED ModelsPagingCursor
    """

    # region fields

    ip_addresses: List[str]  # REQUIRED
    paging: ModelsPagingCursor  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_ip_addresses(self, value: List[str]) -> ModelsListNodesIPAddress:
        self.ip_addresses = value
        return self

    def with_paging(self, value: ModelsPagingCursor) -> ModelsListNodesIPAddress:
        self.paging = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "ip_addresses"):
            result["ip_addresses"] = [str(i0) for i0 in self.ip_addresses]
        elif include_empty:
            result["ip_addresses"] = []
        if hasattr(self, "paging"):
            result["paging"] = self.paging.to_dict(include_empty=include_empty)
        elif include_empty:
            result["paging"] = ModelsPagingCursor()
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls, ip_addresses: List[str], paging: ModelsPagingCursor, **kwargs
    ) -> ModelsListNodesIPAddress:
        instance = cls()
        instance.ip_addresses = ip_addresses
        instance.paging = paging
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ModelsListNodesIPAddress:
        instance = cls()
        if not dict_:
            return instance
        if "ip_addresses" in dict_ and dict_["ip_addresses"] is not None:
            instance.ip_addresses = [str(i0) for i0 in dict_["ip_addresses"]]
        elif include_empty:
            instance.ip_addresses = []
        if "paging" in dict_ and dict_["paging"] is not None:
            instance.paging = ModelsPagingCursor.create_from_dict(
                dict_["paging"], include_empty=include_empty
            )
        elif include_empty:
            instance.paging = ModelsPagingCursor()
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ModelsListNodesIPAddress]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ModelsListNodesIPAddress]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ModelsListNodesIPAddress,
        List[ModelsListNodesIPAddress],
        Dict[Any, ModelsListNodesIPAddress],
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
            "ip_addresses": "ip_addresses",
            "paging": "paging",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "ip_addresses": True,
            "paging": True,
        }

    # endregion static methods
