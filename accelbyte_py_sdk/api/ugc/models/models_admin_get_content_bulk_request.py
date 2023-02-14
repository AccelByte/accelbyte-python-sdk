# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: accelbyte_cloud_py_codegen

# AccelByte Cloud Ugc Service (2.9.0)

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


class ModelsAdminGetContentBulkRequest(Model):
    """Models admin get content bulk request (models.AdminGetContentBulkRequest)

    Properties:
        content_ids: (contentIds) REQUIRED List[str]
    """

    # region fields

    content_ids: List[str]  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_content_ids(self, value: List[str]) -> ModelsAdminGetContentBulkRequest:
        self.content_ids = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "content_ids"):
            result["contentIds"] = [str(i0) for i0 in self.content_ids]
        elif include_empty:
            result["contentIds"] = []
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        content_ids: List[str],
    ) -> ModelsAdminGetContentBulkRequest:
        instance = cls()
        instance.content_ids = content_ids
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ModelsAdminGetContentBulkRequest:
        instance = cls()
        if not dict_:
            return instance
        if "contentIds" in dict_ and dict_["contentIds"] is not None:
            instance.content_ids = [str(i0) for i0 in dict_["contentIds"]]
        elif include_empty:
            instance.content_ids = []
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ModelsAdminGetContentBulkRequest]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ModelsAdminGetContentBulkRequest]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ModelsAdminGetContentBulkRequest,
        List[ModelsAdminGetContentBulkRequest],
        Dict[Any, ModelsAdminGetContentBulkRequest],
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
            "contentIds": "content_ids",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "contentIds": True,
        }

    # endregion static methods
