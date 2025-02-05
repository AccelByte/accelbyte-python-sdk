# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: ags_py_codegen

# AccelByte Gaming Services Legal Service

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


class SimpleLocalizedPolicyVersionObject(Model):
    """Simple localized policy version object (SimpleLocalizedPolicyVersionObject)

    Properties:
        id_: (id) REQUIRED str

        is_default_selection: (isDefaultSelection) REQUIRED bool

        locale_code: (localeCode) REQUIRED str

        created_at: (createdAt) OPTIONAL str

        description: (description) OPTIONAL str

        published_date: (publishedDate) OPTIONAL str

        status: (status) OPTIONAL str

        updated_at: (updatedAt) OPTIONAL str
    """

    # region fields

    id_: str  # REQUIRED
    is_default_selection: bool  # REQUIRED
    locale_code: str  # REQUIRED
    created_at: str  # OPTIONAL
    description: str  # OPTIONAL
    published_date: str  # OPTIONAL
    status: str  # OPTIONAL
    updated_at: str  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_id(self, value: str) -> SimpleLocalizedPolicyVersionObject:
        self.id_ = value
        return self

    def with_is_default_selection(
        self, value: bool
    ) -> SimpleLocalizedPolicyVersionObject:
        self.is_default_selection = value
        return self

    def with_locale_code(self, value: str) -> SimpleLocalizedPolicyVersionObject:
        self.locale_code = value
        return self

    def with_created_at(self, value: str) -> SimpleLocalizedPolicyVersionObject:
        self.created_at = value
        return self

    def with_description(self, value: str) -> SimpleLocalizedPolicyVersionObject:
        self.description = value
        return self

    def with_published_date(self, value: str) -> SimpleLocalizedPolicyVersionObject:
        self.published_date = value
        return self

    def with_status(self, value: str) -> SimpleLocalizedPolicyVersionObject:
        self.status = value
        return self

    def with_updated_at(self, value: str) -> SimpleLocalizedPolicyVersionObject:
        self.updated_at = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "id_"):
            result["id"] = str(self.id_)
        elif include_empty:
            result["id"] = ""
        if hasattr(self, "is_default_selection"):
            result["isDefaultSelection"] = bool(self.is_default_selection)
        elif include_empty:
            result["isDefaultSelection"] = False
        if hasattr(self, "locale_code"):
            result["localeCode"] = str(self.locale_code)
        elif include_empty:
            result["localeCode"] = ""
        if hasattr(self, "created_at"):
            result["createdAt"] = str(self.created_at)
        elif include_empty:
            result["createdAt"] = ""
        if hasattr(self, "description"):
            result["description"] = str(self.description)
        elif include_empty:
            result["description"] = ""
        if hasattr(self, "published_date"):
            result["publishedDate"] = str(self.published_date)
        elif include_empty:
            result["publishedDate"] = ""
        if hasattr(self, "status"):
            result["status"] = str(self.status)
        elif include_empty:
            result["status"] = ""
        if hasattr(self, "updated_at"):
            result["updatedAt"] = str(self.updated_at)
        elif include_empty:
            result["updatedAt"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        id_: str,
        is_default_selection: bool,
        locale_code: str,
        created_at: Optional[str] = None,
        description: Optional[str] = None,
        published_date: Optional[str] = None,
        status: Optional[str] = None,
        updated_at: Optional[str] = None,
        **kwargs,
    ) -> SimpleLocalizedPolicyVersionObject:
        instance = cls()
        instance.id_ = id_
        instance.is_default_selection = is_default_selection
        instance.locale_code = locale_code
        if created_at is not None:
            instance.created_at = created_at
        if description is not None:
            instance.description = description
        if published_date is not None:
            instance.published_date = published_date
        if status is not None:
            instance.status = status
        if updated_at is not None:
            instance.updated_at = updated_at
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> SimpleLocalizedPolicyVersionObject:
        instance = cls()
        if not dict_:
            return instance
        if "id" in dict_ and dict_["id"] is not None:
            instance.id_ = str(dict_["id"])
        elif include_empty:
            instance.id_ = ""
        if "isDefaultSelection" in dict_ and dict_["isDefaultSelection"] is not None:
            instance.is_default_selection = bool(dict_["isDefaultSelection"])
        elif include_empty:
            instance.is_default_selection = False
        if "localeCode" in dict_ and dict_["localeCode"] is not None:
            instance.locale_code = str(dict_["localeCode"])
        elif include_empty:
            instance.locale_code = ""
        if "createdAt" in dict_ and dict_["createdAt"] is not None:
            instance.created_at = str(dict_["createdAt"])
        elif include_empty:
            instance.created_at = ""
        if "description" in dict_ and dict_["description"] is not None:
            instance.description = str(dict_["description"])
        elif include_empty:
            instance.description = ""
        if "publishedDate" in dict_ and dict_["publishedDate"] is not None:
            instance.published_date = str(dict_["publishedDate"])
        elif include_empty:
            instance.published_date = ""
        if "status" in dict_ and dict_["status"] is not None:
            instance.status = str(dict_["status"])
        elif include_empty:
            instance.status = ""
        if "updatedAt" in dict_ and dict_["updatedAt"] is not None:
            instance.updated_at = str(dict_["updatedAt"])
        elif include_empty:
            instance.updated_at = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, SimpleLocalizedPolicyVersionObject]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[SimpleLocalizedPolicyVersionObject]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        SimpleLocalizedPolicyVersionObject,
        List[SimpleLocalizedPolicyVersionObject],
        Dict[Any, SimpleLocalizedPolicyVersionObject],
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
            "id": "id_",
            "isDefaultSelection": "is_default_selection",
            "localeCode": "locale_code",
            "createdAt": "created_at",
            "description": "description",
            "publishedDate": "published_date",
            "status": "status",
            "updatedAt": "updated_at",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "id": True,
            "isDefaultSelection": True,
            "localeCode": True,
            "createdAt": False,
            "description": False,
            "publishedDate": False,
            "status": False,
            "updatedAt": False,
        }

    # endregion static methods
