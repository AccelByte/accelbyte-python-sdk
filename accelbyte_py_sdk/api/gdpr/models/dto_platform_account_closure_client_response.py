# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: ags_py_codegen

# AccelByte Gaming Services Gdpr Service

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


class DtoPlatformAccountClosureClientResponse(Model):
    """Dto platform account closure client response (dto.PlatformAccountClosureClientResponse)

    Properties:
        client_id: (clientId) REQUIRED str

        namespace: (namespace) REQUIRED str

        platform: (platform) REQUIRED str

        secret: (secret) REQUIRED str

        updated_at: (updatedAt) REQUIRED int
    """

    # region fields

    client_id: str  # REQUIRED
    namespace: str  # REQUIRED
    platform: str  # REQUIRED
    secret: str  # REQUIRED
    updated_at: int  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_client_id(self, value: str) -> DtoPlatformAccountClosureClientResponse:
        self.client_id = value
        return self

    def with_namespace(self, value: str) -> DtoPlatformAccountClosureClientResponse:
        self.namespace = value
        return self

    def with_platform(self, value: str) -> DtoPlatformAccountClosureClientResponse:
        self.platform = value
        return self

    def with_secret(self, value: str) -> DtoPlatformAccountClosureClientResponse:
        self.secret = value
        return self

    def with_updated_at(self, value: int) -> DtoPlatformAccountClosureClientResponse:
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
        if hasattr(self, "namespace"):
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = ""
        if hasattr(self, "platform"):
            result["platform"] = str(self.platform)
        elif include_empty:
            result["platform"] = ""
        if hasattr(self, "secret"):
            result["secret"] = str(self.secret)
        elif include_empty:
            result["secret"] = ""
        if hasattr(self, "updated_at"):
            result["updatedAt"] = int(self.updated_at)
        elif include_empty:
            result["updatedAt"] = 0
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        client_id: str,
        namespace: str,
        platform: str,
        secret: str,
        updated_at: int,
        **kwargs,
    ) -> DtoPlatformAccountClosureClientResponse:
        instance = cls()
        instance.client_id = client_id
        instance.namespace = namespace
        instance.platform = platform
        instance.secret = secret
        instance.updated_at = updated_at
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> DtoPlatformAccountClosureClientResponse:
        instance = cls()
        if not dict_:
            return instance
        if "clientId" in dict_ and dict_["clientId"] is not None:
            instance.client_id = str(dict_["clientId"])
        elif include_empty:
            instance.client_id = ""
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = ""
        if "platform" in dict_ and dict_["platform"] is not None:
            instance.platform = str(dict_["platform"])
        elif include_empty:
            instance.platform = ""
        if "secret" in dict_ and dict_["secret"] is not None:
            instance.secret = str(dict_["secret"])
        elif include_empty:
            instance.secret = ""
        if "updatedAt" in dict_ and dict_["updatedAt"] is not None:
            instance.updated_at = int(dict_["updatedAt"])
        elif include_empty:
            instance.updated_at = 0
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, DtoPlatformAccountClosureClientResponse]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[DtoPlatformAccountClosureClientResponse]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        DtoPlatformAccountClosureClientResponse,
        List[DtoPlatformAccountClosureClientResponse],
        Dict[Any, DtoPlatformAccountClosureClientResponse],
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
            "namespace": "namespace",
            "platform": "platform",
            "secret": "secret",
            "updatedAt": "updated_at",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "clientId": True,
            "namespace": True,
            "platform": True,
            "secret": True,
            "updatedAt": True,
        }

    # endregion static methods
