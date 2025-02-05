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

from ..models.simple_localized_policy_version_object import (
    SimpleLocalizedPolicyVersionObject,
)


class SimplePolicyVersionWithLocalizedVersionObject(Model):
    """Simple policy version with localized version object (SimplePolicyVersionWithLocalizedVersionObject)

    Properties:
        id_: (id) REQUIRED str

        created_at: (createdAt) OPTIONAL str

        description: (description) OPTIONAL str

        localized_policy_versions: (localizedPolicyVersions) OPTIONAL List[SimpleLocalizedPolicyVersionObject]

        published_date: (publishedDate) OPTIONAL str

        status: (status) OPTIONAL str

        updated_at: (updatedAt) OPTIONAL str
    """

    # region fields

    id_: str  # REQUIRED
    created_at: str  # OPTIONAL
    description: str  # OPTIONAL
    localized_policy_versions: List[SimpleLocalizedPolicyVersionObject]  # OPTIONAL
    published_date: str  # OPTIONAL
    status: str  # OPTIONAL
    updated_at: str  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_id(self, value: str) -> SimplePolicyVersionWithLocalizedVersionObject:
        self.id_ = value
        return self

    def with_created_at(
        self, value: str
    ) -> SimplePolicyVersionWithLocalizedVersionObject:
        self.created_at = value
        return self

    def with_description(
        self, value: str
    ) -> SimplePolicyVersionWithLocalizedVersionObject:
        self.description = value
        return self

    def with_localized_policy_versions(
        self, value: List[SimpleLocalizedPolicyVersionObject]
    ) -> SimplePolicyVersionWithLocalizedVersionObject:
        self.localized_policy_versions = value
        return self

    def with_published_date(
        self, value: str
    ) -> SimplePolicyVersionWithLocalizedVersionObject:
        self.published_date = value
        return self

    def with_status(self, value: str) -> SimplePolicyVersionWithLocalizedVersionObject:
        self.status = value
        return self

    def with_updated_at(
        self, value: str
    ) -> SimplePolicyVersionWithLocalizedVersionObject:
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
        if hasattr(self, "created_at"):
            result["createdAt"] = str(self.created_at)
        elif include_empty:
            result["createdAt"] = ""
        if hasattr(self, "description"):
            result["description"] = str(self.description)
        elif include_empty:
            result["description"] = ""
        if hasattr(self, "localized_policy_versions"):
            result["localizedPolicyVersions"] = [
                i0.to_dict(include_empty=include_empty)
                for i0 in self.localized_policy_versions
            ]
        elif include_empty:
            result["localizedPolicyVersions"] = []
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
        created_at: Optional[str] = None,
        description: Optional[str] = None,
        localized_policy_versions: Optional[
            List[SimpleLocalizedPolicyVersionObject]
        ] = None,
        published_date: Optional[str] = None,
        status: Optional[str] = None,
        updated_at: Optional[str] = None,
        **kwargs,
    ) -> SimplePolicyVersionWithLocalizedVersionObject:
        instance = cls()
        instance.id_ = id_
        if created_at is not None:
            instance.created_at = created_at
        if description is not None:
            instance.description = description
        if localized_policy_versions is not None:
            instance.localized_policy_versions = localized_policy_versions
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
    ) -> SimplePolicyVersionWithLocalizedVersionObject:
        instance = cls()
        if not dict_:
            return instance
        if "id" in dict_ and dict_["id"] is not None:
            instance.id_ = str(dict_["id"])
        elif include_empty:
            instance.id_ = ""
        if "createdAt" in dict_ and dict_["createdAt"] is not None:
            instance.created_at = str(dict_["createdAt"])
        elif include_empty:
            instance.created_at = ""
        if "description" in dict_ and dict_["description"] is not None:
            instance.description = str(dict_["description"])
        elif include_empty:
            instance.description = ""
        if (
            "localizedPolicyVersions" in dict_
            and dict_["localizedPolicyVersions"] is not None
        ):
            instance.localized_policy_versions = [
                SimpleLocalizedPolicyVersionObject.create_from_dict(
                    i0, include_empty=include_empty
                )
                for i0 in dict_["localizedPolicyVersions"]
            ]
        elif include_empty:
            instance.localized_policy_versions = []
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
    ) -> Dict[str, SimplePolicyVersionWithLocalizedVersionObject]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[SimplePolicyVersionWithLocalizedVersionObject]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        SimplePolicyVersionWithLocalizedVersionObject,
        List[SimplePolicyVersionWithLocalizedVersionObject],
        Dict[Any, SimplePolicyVersionWithLocalizedVersionObject],
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
            "createdAt": "created_at",
            "description": "description",
            "localizedPolicyVersions": "localized_policy_versions",
            "publishedDate": "published_date",
            "status": "status",
            "updatedAt": "updated_at",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "id": True,
            "createdAt": False,
            "description": False,
            "localizedPolicyVersions": False,
            "publishedDate": False,
            "status": False,
            "updatedAt": False,
        }

    # endregion static methods
