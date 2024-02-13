# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: ags_py_codegen

# AccelByte Gaming Services Iam Service

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

from ..models.model_user_platform_info import ModelUserPlatformInfo


class ModelPublicUserInformationV3(Model):
    """Model public user information V3 (model.PublicUserInformationV3)

    Properties:
        created_at: (createdAt) REQUIRED str

        display_name: (displayName) REQUIRED str

        namespace: (namespace) REQUIRED str

        user_id: (userId) REQUIRED str

        user_name: (userName) REQUIRED str

        unique_display_name: (uniqueDisplayName) OPTIONAL str

        user_platform_infos: (userPlatformInfos) OPTIONAL List[ModelUserPlatformInfo]
    """

    # region fields

    created_at: str  # REQUIRED
    display_name: str  # REQUIRED
    namespace: str  # REQUIRED
    user_id: str  # REQUIRED
    user_name: str  # REQUIRED
    unique_display_name: str  # OPTIONAL
    user_platform_infos: List[ModelUserPlatformInfo]  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_created_at(self, value: str) -> ModelPublicUserInformationV3:
        self.created_at = value
        return self

    def with_display_name(self, value: str) -> ModelPublicUserInformationV3:
        self.display_name = value
        return self

    def with_namespace(self, value: str) -> ModelPublicUserInformationV3:
        self.namespace = value
        return self

    def with_user_id(self, value: str) -> ModelPublicUserInformationV3:
        self.user_id = value
        return self

    def with_user_name(self, value: str) -> ModelPublicUserInformationV3:
        self.user_name = value
        return self

    def with_unique_display_name(self, value: str) -> ModelPublicUserInformationV3:
        self.unique_display_name = value
        return self

    def with_user_platform_infos(
        self, value: List[ModelUserPlatformInfo]
    ) -> ModelPublicUserInformationV3:
        self.user_platform_infos = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "created_at"):
            result["createdAt"] = str(self.created_at)
        elif include_empty:
            result["createdAt"] = ""
        if hasattr(self, "display_name"):
            result["displayName"] = str(self.display_name)
        elif include_empty:
            result["displayName"] = ""
        if hasattr(self, "namespace"):
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = ""
        if hasattr(self, "user_id"):
            result["userId"] = str(self.user_id)
        elif include_empty:
            result["userId"] = ""
        if hasattr(self, "user_name"):
            result["userName"] = str(self.user_name)
        elif include_empty:
            result["userName"] = ""
        if hasattr(self, "unique_display_name"):
            result["uniqueDisplayName"] = str(self.unique_display_name)
        elif include_empty:
            result["uniqueDisplayName"] = ""
        if hasattr(self, "user_platform_infos"):
            result["userPlatformInfos"] = [
                i0.to_dict(include_empty=include_empty)
                for i0 in self.user_platform_infos
            ]
        elif include_empty:
            result["userPlatformInfos"] = []
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        created_at: str,
        display_name: str,
        namespace: str,
        user_id: str,
        user_name: str,
        unique_display_name: Optional[str] = None,
        user_platform_infos: Optional[List[ModelUserPlatformInfo]] = None,
        **kwargs,
    ) -> ModelPublicUserInformationV3:
        instance = cls()
        instance.created_at = created_at
        instance.display_name = display_name
        instance.namespace = namespace
        instance.user_id = user_id
        instance.user_name = user_name
        if unique_display_name is not None:
            instance.unique_display_name = unique_display_name
        if user_platform_infos is not None:
            instance.user_platform_infos = user_platform_infos
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ModelPublicUserInformationV3:
        instance = cls()
        if not dict_:
            return instance
        if "createdAt" in dict_ and dict_["createdAt"] is not None:
            instance.created_at = str(dict_["createdAt"])
        elif include_empty:
            instance.created_at = ""
        if "displayName" in dict_ and dict_["displayName"] is not None:
            instance.display_name = str(dict_["displayName"])
        elif include_empty:
            instance.display_name = ""
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = ""
        if "userId" in dict_ and dict_["userId"] is not None:
            instance.user_id = str(dict_["userId"])
        elif include_empty:
            instance.user_id = ""
        if "userName" in dict_ and dict_["userName"] is not None:
            instance.user_name = str(dict_["userName"])
        elif include_empty:
            instance.user_name = ""
        if "uniqueDisplayName" in dict_ and dict_["uniqueDisplayName"] is not None:
            instance.unique_display_name = str(dict_["uniqueDisplayName"])
        elif include_empty:
            instance.unique_display_name = ""
        if "userPlatformInfos" in dict_ and dict_["userPlatformInfos"] is not None:
            instance.user_platform_infos = [
                ModelUserPlatformInfo.create_from_dict(i0, include_empty=include_empty)
                for i0 in dict_["userPlatformInfos"]
            ]
        elif include_empty:
            instance.user_platform_infos = []
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ModelPublicUserInformationV3]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ModelPublicUserInformationV3]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ModelPublicUserInformationV3,
        List[ModelPublicUserInformationV3],
        Dict[Any, ModelPublicUserInformationV3],
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
            "displayName": "display_name",
            "namespace": "namespace",
            "userId": "user_id",
            "userName": "user_name",
            "uniqueDisplayName": "unique_display_name",
            "userPlatformInfos": "user_platform_infos",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "createdAt": True,
            "displayName": True,
            "namespace": True,
            "userId": True,
            "userName": True,
            "uniqueDisplayName": False,
            "userPlatformInfos": False,
        }

    # endregion static methods
