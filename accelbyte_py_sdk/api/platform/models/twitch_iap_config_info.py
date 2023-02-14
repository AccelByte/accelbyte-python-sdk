# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: accelbyte_cloud_py_codegen

# AccelByte Cloud Platform Service (4.23.0)

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


class TwitchIAPConfigInfo(Model):
    """Twitch IAP config info (TwitchIAPConfigInfo)

    Properties:
        namespace: (namespace) REQUIRED str

        client_id: (clientId) OPTIONAL str

        client_secret: (clientSecret) OPTIONAL str

        organization_id: (organizationId) OPTIONAL str
    """

    # region fields

    namespace: str  # REQUIRED
    client_id: str  # OPTIONAL
    client_secret: str  # OPTIONAL
    organization_id: str  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_namespace(self, value: str) -> TwitchIAPConfigInfo:
        self.namespace = value
        return self

    def with_client_id(self, value: str) -> TwitchIAPConfigInfo:
        self.client_id = value
        return self

    def with_client_secret(self, value: str) -> TwitchIAPConfigInfo:
        self.client_secret = value
        return self

    def with_organization_id(self, value: str) -> TwitchIAPConfigInfo:
        self.organization_id = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "namespace"):
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = ""
        if hasattr(self, "client_id"):
            result["clientId"] = str(self.client_id)
        elif include_empty:
            result["clientId"] = ""
        if hasattr(self, "client_secret"):
            result["clientSecret"] = str(self.client_secret)
        elif include_empty:
            result["clientSecret"] = ""
        if hasattr(self, "organization_id"):
            result["organizationId"] = str(self.organization_id)
        elif include_empty:
            result["organizationId"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        namespace: str,
        client_id: Optional[str] = None,
        client_secret: Optional[str] = None,
        organization_id: Optional[str] = None,
    ) -> TwitchIAPConfigInfo:
        instance = cls()
        instance.namespace = namespace
        if client_id is not None:
            instance.client_id = client_id
        if client_secret is not None:
            instance.client_secret = client_secret
        if organization_id is not None:
            instance.organization_id = organization_id
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> TwitchIAPConfigInfo:
        instance = cls()
        if not dict_:
            return instance
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = ""
        if "clientId" in dict_ and dict_["clientId"] is not None:
            instance.client_id = str(dict_["clientId"])
        elif include_empty:
            instance.client_id = ""
        if "clientSecret" in dict_ and dict_["clientSecret"] is not None:
            instance.client_secret = str(dict_["clientSecret"])
        elif include_empty:
            instance.client_secret = ""
        if "organizationId" in dict_ and dict_["organizationId"] is not None:
            instance.organization_id = str(dict_["organizationId"])
        elif include_empty:
            instance.organization_id = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, TwitchIAPConfigInfo]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[TwitchIAPConfigInfo]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        TwitchIAPConfigInfo, List[TwitchIAPConfigInfo], Dict[Any, TwitchIAPConfigInfo]
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
            "namespace": "namespace",
            "clientId": "client_id",
            "clientSecret": "client_secret",
            "organizationId": "organization_id",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "namespace": True,
            "clientId": False,
            "clientSecret": False,
            "organizationId": False,
        }

    # endregion static methods
