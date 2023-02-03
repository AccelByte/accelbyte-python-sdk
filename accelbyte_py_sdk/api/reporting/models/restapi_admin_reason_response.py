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

from ..models.restapi_public_reason_group_response import (
    RestapiPublicReasonGroupResponse,
)


class RestapiAdminReasonResponse(Model):
    """Restapi admin reason response (restapi.adminReasonResponse)

    Properties:
        created_at: (createdAt) REQUIRED str

        description: (description) REQUIRED str

        id_: (id) REQUIRED str

        namespace: (namespace) REQUIRED str

        title: (title) REQUIRED str

        updated_at: (updatedAt) REQUIRED str

        groups: (groups) OPTIONAL List[RestapiPublicReasonGroupResponse]
    """

    # region fields

    created_at: str  # REQUIRED
    description: str  # REQUIRED
    id_: str  # REQUIRED
    namespace: str  # REQUIRED
    title: str  # REQUIRED
    updated_at: str  # REQUIRED
    groups: List[RestapiPublicReasonGroupResponse]  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_created_at(self, value: str) -> RestapiAdminReasonResponse:
        self.created_at = value
        return self

    def with_description(self, value: str) -> RestapiAdminReasonResponse:
        self.description = value
        return self

    def with_id(self, value: str) -> RestapiAdminReasonResponse:
        self.id_ = value
        return self

    def with_namespace(self, value: str) -> RestapiAdminReasonResponse:
        self.namespace = value
        return self

    def with_title(self, value: str) -> RestapiAdminReasonResponse:
        self.title = value
        return self

    def with_updated_at(self, value: str) -> RestapiAdminReasonResponse:
        self.updated_at = value
        return self

    def with_groups(
        self, value: List[RestapiPublicReasonGroupResponse]
    ) -> RestapiAdminReasonResponse:
        self.groups = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "created_at"):
            result["createdAt"] = str(self.created_at)
        elif include_empty:
            result["createdAt"] = ""
        if hasattr(self, "description"):
            result["description"] = str(self.description)
        elif include_empty:
            result["description"] = ""
        if hasattr(self, "id_"):
            result["id"] = str(self.id_)
        elif include_empty:
            result["id"] = ""
        if hasattr(self, "namespace"):
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = ""
        if hasattr(self, "title"):
            result["title"] = str(self.title)
        elif include_empty:
            result["title"] = ""
        if hasattr(self, "updated_at"):
            result["updatedAt"] = str(self.updated_at)
        elif include_empty:
            result["updatedAt"] = ""
        if hasattr(self, "groups"):
            result["groups"] = [
                i0.to_dict(include_empty=include_empty) for i0 in self.groups
            ]
        elif include_empty:
            result["groups"] = []
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        created_at: str,
        description: str,
        id_: str,
        namespace: str,
        title: str,
        updated_at: str,
        groups: Optional[List[RestapiPublicReasonGroupResponse]] = None,
    ) -> RestapiAdminReasonResponse:
        instance = cls()
        instance.created_at = created_at
        instance.description = description
        instance.id_ = id_
        instance.namespace = namespace
        instance.title = title
        instance.updated_at = updated_at
        if groups is not None:
            instance.groups = groups
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> RestapiAdminReasonResponse:
        instance = cls()
        if not dict_:
            return instance
        if "createdAt" in dict_ and dict_["createdAt"] is not None:
            instance.created_at = str(dict_["createdAt"])
        elif include_empty:
            instance.created_at = ""
        if "description" in dict_ and dict_["description"] is not None:
            instance.description = str(dict_["description"])
        elif include_empty:
            instance.description = ""
        if "id" in dict_ and dict_["id"] is not None:
            instance.id_ = str(dict_["id"])
        elif include_empty:
            instance.id_ = ""
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = ""
        if "title" in dict_ and dict_["title"] is not None:
            instance.title = str(dict_["title"])
        elif include_empty:
            instance.title = ""
        if "updatedAt" in dict_ and dict_["updatedAt"] is not None:
            instance.updated_at = str(dict_["updatedAt"])
        elif include_empty:
            instance.updated_at = ""
        if "groups" in dict_ and dict_["groups"] is not None:
            instance.groups = [
                RestapiPublicReasonGroupResponse.create_from_dict(
                    i0, include_empty=include_empty
                )
                for i0 in dict_["groups"]
            ]
        elif include_empty:
            instance.groups = []
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, RestapiAdminReasonResponse]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[RestapiAdminReasonResponse]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        RestapiAdminReasonResponse,
        List[RestapiAdminReasonResponse],
        Dict[Any, RestapiAdminReasonResponse],
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
            "createdAt": "created_at",
            "description": "description",
            "id": "id_",
            "namespace": "namespace",
            "title": "title",
            "updatedAt": "updated_at",
            "groups": "groups",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "createdAt": True,
            "description": True,
            "id": True,
            "namespace": True,
            "title": True,
            "updatedAt": True,
            "groups": False,
        }

    # endregion static methods
