# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: accelbyte_cloud_py_codegen

# AccelByte Cloud Legal Service (1.26.0)

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


class CreateLocalizedPolicyVersionRequest(Model):
    """Create localized policy version request (CreateLocalizedPolicyVersionRequest)

    Properties:
        content_type: (contentType) OPTIONAL str

        description: (description) OPTIONAL str

        locale_code: (localeCode) OPTIONAL str
    """

    # region fields

    content_type: str  # OPTIONAL
    description: str  # OPTIONAL
    locale_code: str  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_content_type(self, value: str) -> CreateLocalizedPolicyVersionRequest:
        self.content_type = value
        return self

    def with_description(self, value: str) -> CreateLocalizedPolicyVersionRequest:
        self.description = value
        return self

    def with_locale_code(self, value: str) -> CreateLocalizedPolicyVersionRequest:
        self.locale_code = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "content_type"):
            result["contentType"] = str(self.content_type)
        elif include_empty:
            result["contentType"] = ""
        if hasattr(self, "description"):
            result["description"] = str(self.description)
        elif include_empty:
            result["description"] = ""
        if hasattr(self, "locale_code"):
            result["localeCode"] = str(self.locale_code)
        elif include_empty:
            result["localeCode"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        content_type: Optional[str] = None,
        description: Optional[str] = None,
        locale_code: Optional[str] = None,
    ) -> CreateLocalizedPolicyVersionRequest:
        instance = cls()
        if content_type is not None:
            instance.content_type = content_type
        if description is not None:
            instance.description = description
        if locale_code is not None:
            instance.locale_code = locale_code
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> CreateLocalizedPolicyVersionRequest:
        instance = cls()
        if not dict_:
            return instance
        if "contentType" in dict_ and dict_["contentType"] is not None:
            instance.content_type = str(dict_["contentType"])
        elif include_empty:
            instance.content_type = ""
        if "description" in dict_ and dict_["description"] is not None:
            instance.description = str(dict_["description"])
        elif include_empty:
            instance.description = ""
        if "localeCode" in dict_ and dict_["localeCode"] is not None:
            instance.locale_code = str(dict_["localeCode"])
        elif include_empty:
            instance.locale_code = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, CreateLocalizedPolicyVersionRequest]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[CreateLocalizedPolicyVersionRequest]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        CreateLocalizedPolicyVersionRequest,
        List[CreateLocalizedPolicyVersionRequest],
        Dict[Any, CreateLocalizedPolicyVersionRequest],
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
            "contentType": "content_type",
            "description": "description",
            "localeCode": "locale_code",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "contentType": False,
            "description": False,
            "localeCode": False,
        }

    # endregion static methods
