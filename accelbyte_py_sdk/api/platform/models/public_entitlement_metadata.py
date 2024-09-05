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
from ....core import StrEnum


class OperationSourceEnum(StrEnum):
    INVENTORY = "INVENTORY"


class PublicEntitlementMetadata(Model):
    """Public entitlement metadata (PublicEntitlementMetadata)

    Properties:
        operation_source: (operationSource) OPTIONAL Union[str, OperationSourceEnum]
    """

    # region fields

    operation_source: Union[str, OperationSourceEnum]  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_operation_source(
        self, value: Union[str, OperationSourceEnum]
    ) -> PublicEntitlementMetadata:
        self.operation_source = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "operation_source"):
            result["operationSource"] = str(self.operation_source)
        elif include_empty:
            result["operationSource"] = Union[str, OperationSourceEnum]()
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        operation_source: Optional[Union[str, OperationSourceEnum]] = None,
        **kwargs,
    ) -> PublicEntitlementMetadata:
        instance = cls()
        if operation_source is not None:
            instance.operation_source = operation_source
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> PublicEntitlementMetadata:
        instance = cls()
        if not dict_:
            return instance
        if "operationSource" in dict_ and dict_["operationSource"] is not None:
            instance.operation_source = str(dict_["operationSource"])
        elif include_empty:
            instance.operation_source = Union[str, OperationSourceEnum]()
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, PublicEntitlementMetadata]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[PublicEntitlementMetadata]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        PublicEntitlementMetadata,
        List[PublicEntitlementMetadata],
        Dict[Any, PublicEntitlementMetadata],
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
            "operationSource": "operation_source",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "operationSource": False,
        }

    @staticmethod
    def get_enum_map() -> Dict[str, List[Any]]:
        return {
            "operationSource": ["INVENTORY"],
        }

    # endregion static methods
