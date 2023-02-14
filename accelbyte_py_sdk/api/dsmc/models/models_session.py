# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: accelbyte_cloud_py_codegen

# AccelByte Cloud Dsm Controller Service (6.2.0)

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

from ..models.models_server import ModelsServer


class ModelsSession(Model):
    """Models session (models.Session)

    Properties:
        id_: (id) REQUIRED str

        namespace: (namespace) REQUIRED str

        provider: (provider) REQUIRED str

        region: (region) REQUIRED str

        server: (Server) REQUIRED ModelsServer
    """

    # region fields

    id_: str  # REQUIRED
    namespace: str  # REQUIRED
    provider: str  # REQUIRED
    region: str  # REQUIRED
    server: ModelsServer  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_id(self, value: str) -> ModelsSession:
        self.id_ = value
        return self

    def with_namespace(self, value: str) -> ModelsSession:
        self.namespace = value
        return self

    def with_provider(self, value: str) -> ModelsSession:
        self.provider = value
        return self

    def with_region(self, value: str) -> ModelsSession:
        self.region = value
        return self

    def with_server(self, value: ModelsServer) -> ModelsSession:
        self.server = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "id_"):
            result["id"] = str(self.id_)
        elif include_empty:
            result["id"] = ""
        if hasattr(self, "namespace"):
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = ""
        if hasattr(self, "provider"):
            result["provider"] = str(self.provider)
        elif include_empty:
            result["provider"] = ""
        if hasattr(self, "region"):
            result["region"] = str(self.region)
        elif include_empty:
            result["region"] = ""
        if hasattr(self, "server"):
            result["Server"] = self.server.to_dict(include_empty=include_empty)
        elif include_empty:
            result["Server"] = ModelsServer()
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        id_: str,
        namespace: str,
        provider: str,
        region: str,
        server: ModelsServer,
    ) -> ModelsSession:
        instance = cls()
        instance.id_ = id_
        instance.namespace = namespace
        instance.provider = provider
        instance.region = region
        instance.server = server
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ModelsSession:
        instance = cls()
        if not dict_:
            return instance
        if "id" in dict_ and dict_["id"] is not None:
            instance.id_ = str(dict_["id"])
        elif include_empty:
            instance.id_ = ""
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = ""
        if "provider" in dict_ and dict_["provider"] is not None:
            instance.provider = str(dict_["provider"])
        elif include_empty:
            instance.provider = ""
        if "region" in dict_ and dict_["region"] is not None:
            instance.region = str(dict_["region"])
        elif include_empty:
            instance.region = ""
        if "Server" in dict_ and dict_["Server"] is not None:
            instance.server = ModelsServer.create_from_dict(
                dict_["Server"], include_empty=include_empty
            )
        elif include_empty:
            instance.server = ModelsServer()
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ModelsSession]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ModelsSession]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[ModelsSession, List[ModelsSession], Dict[Any, ModelsSession]]:
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
            "namespace": "namespace",
            "provider": "provider",
            "region": "region",
            "Server": "server",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "id": True,
            "namespace": True,
            "provider": True,
            "region": True,
            "Server": True,
        }

    # endregion static methods
