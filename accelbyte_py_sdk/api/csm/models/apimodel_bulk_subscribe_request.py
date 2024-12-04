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

from ..models.apimodel_bulk_subscribe_item import ApimodelBulkSubscribeItem


class ApimodelBulkSubscribeRequest(Model):
    """Apimodel bulk subscribe request (apimodel.BulkSubscribeRequest)

    Properties:
        subscribers: (subscribers) REQUIRED List[ApimodelBulkSubscribeItem]
    """

    # region fields

    subscribers: List[ApimodelBulkSubscribeItem]  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_subscribers(
        self, value: List[ApimodelBulkSubscribeItem]
    ) -> ApimodelBulkSubscribeRequest:
        self.subscribers = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "subscribers"):
            result["subscribers"] = [
                i0.to_dict(include_empty=include_empty) for i0 in self.subscribers
            ]
        elif include_empty:
            result["subscribers"] = []
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls, subscribers: List[ApimodelBulkSubscribeItem], **kwargs
    ) -> ApimodelBulkSubscribeRequest:
        instance = cls()
        instance.subscribers = subscribers
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ApimodelBulkSubscribeRequest:
        instance = cls()
        if not dict_:
            return instance
        if "subscribers" in dict_ and dict_["subscribers"] is not None:
            instance.subscribers = [
                ApimodelBulkSubscribeItem.create_from_dict(
                    i0, include_empty=include_empty
                )
                for i0 in dict_["subscribers"]
            ]
        elif include_empty:
            instance.subscribers = []
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ApimodelBulkSubscribeRequest]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ApimodelBulkSubscribeRequest]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ApimodelBulkSubscribeRequest,
        List[ApimodelBulkSubscribeRequest],
        Dict[Any, ApimodelBulkSubscribeRequest],
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
            "subscribers": "subscribers",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "subscribers": True,
        }

    # endregion static methods
