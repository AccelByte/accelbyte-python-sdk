# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: ags_py_codegen

# AccelByte Gaming Services Session Service

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


class ModelsPSNAppServerCredentials(Model):
    """Models PSN app server credentials (models.PSNAppServerCredentials)

    Properties:
        client_id: (clientId) REQUIRED str

        client_secret: (clientSecret) REQUIRED str

        created_at: (createdAt) REQUIRED str

        created_by: (createdBy) REQUIRED str

        scope: (scope) REQUIRED str

        updated_at: (updatedAt) REQUIRED str
    """

    # region fields

    client_id: str  # REQUIRED
    client_secret: str  # REQUIRED
    created_at: str  # REQUIRED
    created_by: str  # REQUIRED
    scope: str  # REQUIRED
    updated_at: str  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_client_id(self, value: str) -> ModelsPSNAppServerCredentials:
        self.client_id = value
        return self

    def with_client_secret(self, value: str) -> ModelsPSNAppServerCredentials:
        self.client_secret = value
        return self

    def with_created_at(self, value: str) -> ModelsPSNAppServerCredentials:
        self.created_at = value
        return self

    def with_created_by(self, value: str) -> ModelsPSNAppServerCredentials:
        self.created_by = value
        return self

    def with_scope(self, value: str) -> ModelsPSNAppServerCredentials:
        self.scope = value
        return self

    def with_updated_at(self, value: str) -> ModelsPSNAppServerCredentials:
        self.updated_at = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "client_id"):
            result["clientId"] = str(self.client_id)
        elif include_empty:
            result["clientId"] = ""
        if hasattr(self, "client_secret"):
            result["clientSecret"] = str(self.client_secret)
        elif include_empty:
            result["clientSecret"] = ""
        if hasattr(self, "created_at"):
            result["createdAt"] = str(self.created_at)
        elif include_empty:
            result["createdAt"] = ""
        if hasattr(self, "created_by"):
            result["createdBy"] = str(self.created_by)
        elif include_empty:
            result["createdBy"] = ""
        if hasattr(self, "scope"):
            result["scope"] = str(self.scope)
        elif include_empty:
            result["scope"] = ""
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
        client_id: str,
        client_secret: str,
        created_at: str,
        created_by: str,
        scope: str,
        updated_at: str,
        **kwargs,
    ) -> ModelsPSNAppServerCredentials:
        instance = cls()
        instance.client_id = client_id
        instance.client_secret = client_secret
        instance.created_at = created_at
        instance.created_by = created_by
        instance.scope = scope
        instance.updated_at = updated_at
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ModelsPSNAppServerCredentials:
        instance = cls()
        if not dict_:
            return instance
        if "clientId" in dict_ and dict_["clientId"] is not None:
            instance.client_id = str(dict_["clientId"])
        elif include_empty:
            instance.client_id = ""
        if "clientSecret" in dict_ and dict_["clientSecret"] is not None:
            instance.client_secret = str(dict_["clientSecret"])
        elif include_empty:
            instance.client_secret = ""
        if "createdAt" in dict_ and dict_["createdAt"] is not None:
            instance.created_at = str(dict_["createdAt"])
        elif include_empty:
            instance.created_at = ""
        if "createdBy" in dict_ and dict_["createdBy"] is not None:
            instance.created_by = str(dict_["createdBy"])
        elif include_empty:
            instance.created_by = ""
        if "scope" in dict_ and dict_["scope"] is not None:
            instance.scope = str(dict_["scope"])
        elif include_empty:
            instance.scope = ""
        if "updatedAt" in dict_ and dict_["updatedAt"] is not None:
            instance.updated_at = str(dict_["updatedAt"])
        elif include_empty:
            instance.updated_at = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ModelsPSNAppServerCredentials]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ModelsPSNAppServerCredentials]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ModelsPSNAppServerCredentials,
        List[ModelsPSNAppServerCredentials],
        Dict[Any, ModelsPSNAppServerCredentials],
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
            "clientId": "client_id",
            "clientSecret": "client_secret",
            "createdAt": "created_at",
            "createdBy": "created_by",
            "scope": "scope",
            "updatedAt": "updated_at",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "clientId": True,
            "clientSecret": True,
            "createdAt": True,
            "createdBy": True,
            "scope": True,
            "updatedAt": True,
        }

    # endregion static methods
