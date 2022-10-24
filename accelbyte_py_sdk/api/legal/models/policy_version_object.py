# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: accelbyte_cloud_py_codegen

# AccelByte Cloud Legal Service (1.24.1)

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


class PolicyVersionObject(Model):
    """Policy version object (PolicyVersionObject)

    Properties:
        display_version: (displayVersion) REQUIRED str

        id_: (id) REQUIRED str

        is_committed: (isCommitted) REQUIRED bool

        is_in_effect: (isInEffect) REQUIRED bool

        created_at: (createdAt) OPTIONAL str

        description: (description) OPTIONAL str

        published_date: (publishedDate) OPTIONAL str

        status: (status) OPTIONAL str

        updated_at: (updatedAt) OPTIONAL str
    """

    # region fields

    display_version: str  # REQUIRED
    id_: str  # REQUIRED
    is_committed: bool  # REQUIRED
    is_in_effect: bool  # REQUIRED
    created_at: str  # OPTIONAL
    description: str  # OPTIONAL
    published_date: str  # OPTIONAL
    status: str  # OPTIONAL
    updated_at: str  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_display_version(self, value: str) -> PolicyVersionObject:
        self.display_version = value
        return self

    def with_id(self, value: str) -> PolicyVersionObject:
        self.id_ = value
        return self

    def with_is_committed(self, value: bool) -> PolicyVersionObject:
        self.is_committed = value
        return self

    def with_is_in_effect(self, value: bool) -> PolicyVersionObject:
        self.is_in_effect = value
        return self

    def with_created_at(self, value: str) -> PolicyVersionObject:
        self.created_at = value
        return self

    def with_description(self, value: str) -> PolicyVersionObject:
        self.description = value
        return self

    def with_published_date(self, value: str) -> PolicyVersionObject:
        self.published_date = value
        return self

    def with_status(self, value: str) -> PolicyVersionObject:
        self.status = value
        return self

    def with_updated_at(self, value: str) -> PolicyVersionObject:
        self.updated_at = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "display_version"):
            result["displayVersion"] = str(self.display_version)
        elif include_empty:
            result["displayVersion"] = ""
        if hasattr(self, "id_"):
            result["id"] = str(self.id_)
        elif include_empty:
            result["id"] = ""
        if hasattr(self, "is_committed"):
            result["isCommitted"] = bool(self.is_committed)
        elif include_empty:
            result["isCommitted"] = False
        if hasattr(self, "is_in_effect"):
            result["isInEffect"] = bool(self.is_in_effect)
        elif include_empty:
            result["isInEffect"] = False
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
        display_version: str,
        id_: str,
        is_committed: bool,
        is_in_effect: bool,
        created_at: Optional[str] = None,
        description: Optional[str] = None,
        published_date: Optional[str] = None,
        status: Optional[str] = None,
        updated_at: Optional[str] = None,
    ) -> PolicyVersionObject:
        instance = cls()
        instance.display_version = display_version
        instance.id_ = id_
        instance.is_committed = is_committed
        instance.is_in_effect = is_in_effect
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
    ) -> PolicyVersionObject:
        instance = cls()
        if not dict_:
            return instance
        if "displayVersion" in dict_ and dict_["displayVersion"] is not None:
            instance.display_version = str(dict_["displayVersion"])
        elif include_empty:
            instance.display_version = ""
        if "id" in dict_ and dict_["id"] is not None:
            instance.id_ = str(dict_["id"])
        elif include_empty:
            instance.id_ = ""
        if "isCommitted" in dict_ and dict_["isCommitted"] is not None:
            instance.is_committed = bool(dict_["isCommitted"])
        elif include_empty:
            instance.is_committed = False
        if "isInEffect" in dict_ and dict_["isInEffect"] is not None:
            instance.is_in_effect = bool(dict_["isInEffect"])
        elif include_empty:
            instance.is_in_effect = False
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
    ) -> Dict[str, PolicyVersionObject]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[PolicyVersionObject]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        PolicyVersionObject, List[PolicyVersionObject], Dict[Any, PolicyVersionObject]
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
            "displayVersion": "display_version",
            "id": "id_",
            "isCommitted": "is_committed",
            "isInEffect": "is_in_effect",
            "createdAt": "created_at",
            "description": "description",
            "publishedDate": "published_date",
            "status": "status",
            "updatedAt": "updated_at",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "displayVersion": True,
            "id": True,
            "isCommitted": True,
            "isInEffect": True,
            "createdAt": False,
            "description": False,
            "publishedDate": False,
            "status": False,
            "updatedAt": False,
        }

    # endregion static methods
