# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: accelbyte_cloud_py_codegen

# AccelByte Cloud Reporting Service (0.1.23)

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


class RestapiExtensionCategoryApiResponse(Model):
    """Restapi extension category api response (restapi.extensionCategoryApiResponse)

    Properties:
        extension_category: (extensionCategory) REQUIRED str

        extension_category_name: (extensionCategoryName) REQUIRED str

        service_source: (serviceSource) REQUIRED str
    """

    # region fields

    extension_category: str  # REQUIRED
    extension_category_name: str  # REQUIRED
    service_source: str  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_extension_category(
        self, value: str
    ) -> RestapiExtensionCategoryApiResponse:
        self.extension_category = value
        return self

    def with_extension_category_name(
        self, value: str
    ) -> RestapiExtensionCategoryApiResponse:
        self.extension_category_name = value
        return self

    def with_service_source(self, value: str) -> RestapiExtensionCategoryApiResponse:
        self.service_source = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "extension_category"):
            result["extensionCategory"] = str(self.extension_category)
        elif include_empty:
            result["extensionCategory"] = ""
        if hasattr(self, "extension_category_name"):
            result["extensionCategoryName"] = str(self.extension_category_name)
        elif include_empty:
            result["extensionCategoryName"] = ""
        if hasattr(self, "service_source"):
            result["serviceSource"] = str(self.service_source)
        elif include_empty:
            result["serviceSource"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        extension_category: str,
        extension_category_name: str,
        service_source: str,
    ) -> RestapiExtensionCategoryApiResponse:
        instance = cls()
        instance.extension_category = extension_category
        instance.extension_category_name = extension_category_name
        instance.service_source = service_source
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> RestapiExtensionCategoryApiResponse:
        instance = cls()
        if not dict_:
            return instance
        if "extensionCategory" in dict_ and dict_["extensionCategory"] is not None:
            instance.extension_category = str(dict_["extensionCategory"])
        elif include_empty:
            instance.extension_category = ""
        if (
            "extensionCategoryName" in dict_
            and dict_["extensionCategoryName"] is not None
        ):
            instance.extension_category_name = str(dict_["extensionCategoryName"])
        elif include_empty:
            instance.extension_category_name = ""
        if "serviceSource" in dict_ and dict_["serviceSource"] is not None:
            instance.service_source = str(dict_["serviceSource"])
        elif include_empty:
            instance.service_source = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, RestapiExtensionCategoryApiResponse]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[RestapiExtensionCategoryApiResponse]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        RestapiExtensionCategoryApiResponse,
        List[RestapiExtensionCategoryApiResponse],
        Dict[Any, RestapiExtensionCategoryApiResponse],
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
            "extensionCategory": "extension_category",
            "extensionCategoryName": "extension_category_name",
            "serviceSource": "service_source",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "extensionCategory": True,
            "extensionCategoryName": True,
            "serviceSource": True,
        }

    # endregion static methods
