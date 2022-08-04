# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: accelbyte_cloud_py_codegen

# AccelByte Cloud Event Log Service ()

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


class ModelsUserLastActivity(Model):
    """Models user last activity (models.UserLastActivity)

    Properties:
        last_activity_time: (LastActivityTime) REQUIRED str

        namespace: (Namespace) REQUIRED str

        user_id: (UserID) REQUIRED str
    """

    # region fields

    last_activity_time: str  # REQUIRED
    namespace: str  # REQUIRED
    user_id: str  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_last_activity_time(self, value: str) -> ModelsUserLastActivity:
        self.last_activity_time = value
        return self

    def with_namespace(self, value: str) -> ModelsUserLastActivity:
        self.namespace = value
        return self

    def with_user_id(self, value: str) -> ModelsUserLastActivity:
        self.user_id = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "last_activity_time"):
            result["LastActivityTime"] = str(self.last_activity_time)
        elif include_empty:
            result["LastActivityTime"] = ""
        if hasattr(self, "namespace"):
            result["Namespace"] = str(self.namespace)
        elif include_empty:
            result["Namespace"] = ""
        if hasattr(self, "user_id"):
            result["UserID"] = str(self.user_id)
        elif include_empty:
            result["UserID"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        last_activity_time: str,
        namespace: str,
        user_id: str,
    ) -> ModelsUserLastActivity:
        instance = cls()
        instance.last_activity_time = last_activity_time
        instance.namespace = namespace
        instance.user_id = user_id
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ModelsUserLastActivity:
        instance = cls()
        if not dict_:
            return instance
        if "LastActivityTime" in dict_ and dict_["LastActivityTime"] is not None:
            instance.last_activity_time = str(dict_["LastActivityTime"])
        elif include_empty:
            instance.last_activity_time = ""
        if "Namespace" in dict_ and dict_["Namespace"] is not None:
            instance.namespace = str(dict_["Namespace"])
        elif include_empty:
            instance.namespace = ""
        if "UserID" in dict_ and dict_["UserID"] is not None:
            instance.user_id = str(dict_["UserID"])
        elif include_empty:
            instance.user_id = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ModelsUserLastActivity]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ModelsUserLastActivity]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ModelsUserLastActivity,
        List[ModelsUserLastActivity],
        Dict[Any, ModelsUserLastActivity],
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
            "LastActivityTime": "last_activity_time",
            "Namespace": "namespace",
            "UserID": "user_id",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "LastActivityTime": True,
            "Namespace": True,
            "UserID": True,
        }

    # endregion static methods
