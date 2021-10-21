# justice-dsm-controller-service (2.6.0)

# Copyright (c) 2018 - 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.

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
        server: (Server) REQUIRED ModelsServer

        id_: (id) REQUIRED str

        namespace: (namespace) REQUIRED str

        provider: (provider) REQUIRED str

        region: (region) REQUIRED str
    """

    # region fields

    server: ModelsServer                                                                           # REQUIRED
    id_: str                                                                                       # REQUIRED
    namespace: str                                                                                 # REQUIRED
    provider: str                                                                                  # REQUIRED
    region: str                                                                                    # REQUIRED

    # endregion fields

    # region with_x methods

    def with_server(self, value: ModelsServer) -> ModelsSession:
        self.server = value
        return self

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

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "server") and self.server:
            result["Server"] = self.server.to_dict(include_empty=include_empty)
        elif include_empty:
            result["Server"] = ModelsServer()
        if hasattr(self, "id_") and self.id_:
            result["id"] = str(self.id_)
        elif include_empty:
            result["id"] = str()
        if hasattr(self, "namespace") and self.namespace:
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = str()
        if hasattr(self, "provider") and self.provider:
            result["provider"] = str(self.provider)
        elif include_empty:
            result["provider"] = str()
        if hasattr(self, "region") and self.region:
            result["region"] = str(self.region)
        elif include_empty:
            result["region"] = str()
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        server: ModelsServer,
        id_: str,
        namespace: str,
        provider: str,
        region: str,
    ) -> ModelsSession:
        instance = cls()
        instance.server = server
        instance.id_ = id_
        instance.namespace = namespace
        instance.provider = provider
        instance.region = region
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> ModelsSession:
        instance = cls()
        if not dict_:
            return instance
        if "Server" in dict_ and dict_["Server"] is not None:
            instance.server = ModelsServer.create_from_dict(dict_["Server"], include_empty=include_empty)
        elif include_empty:
            instance.server = ModelsServer()
        if "id" in dict_ and dict_["id"] is not None:
            instance.id_ = str(dict_["id"])
        elif include_empty:
            instance.id_ = str()
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = str()
        if "provider" in dict_ and dict_["provider"] is not None:
            instance.provider = str(dict_["provider"])
        elif include_empty:
            instance.provider = str()
        if "region" in dict_ and dict_["region"] is not None:
            instance.region = str(dict_["region"])
        elif include_empty:
            instance.region = str()
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "Server": "server",
            "id": "id_",
            "namespace": "namespace",
            "provider": "provider",
            "region": "region",
        }

    # endregion static methods
