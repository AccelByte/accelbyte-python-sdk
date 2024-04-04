# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: ags_py_codegen

# AccelByte Gaming Services Session History Service

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

from ..models.models_game_server import ModelsGameServer


class ModelsDSInformation(Model):
    """Models DS information (models.DSInformation)

    Properties:
        requested_at: (RequestedAt) OPTIONAL str

        server: (Server) OPTIONAL ModelsGameServer

        status: (Status) OPTIONAL str

        status_v2: (StatusV2) OPTIONAL str
    """

    # region fields

    requested_at: str  # OPTIONAL
    server: ModelsGameServer  # OPTIONAL
    status: str  # OPTIONAL
    status_v2: str  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_requested_at(self, value: str) -> ModelsDSInformation:
        self.requested_at = value
        return self

    def with_server(self, value: ModelsGameServer) -> ModelsDSInformation:
        self.server = value
        return self

    def with_status(self, value: str) -> ModelsDSInformation:
        self.status = value
        return self

    def with_status_v2(self, value: str) -> ModelsDSInformation:
        self.status_v2 = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "requested_at"):
            result["RequestedAt"] = str(self.requested_at)
        elif include_empty:
            result["RequestedAt"] = ""
        if hasattr(self, "server"):
            result["Server"] = self.server.to_dict(include_empty=include_empty)
        elif include_empty:
            result["Server"] = ModelsGameServer()
        if hasattr(self, "status"):
            result["Status"] = str(self.status)
        elif include_empty:
            result["Status"] = ""
        if hasattr(self, "status_v2"):
            result["StatusV2"] = str(self.status_v2)
        elif include_empty:
            result["StatusV2"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        requested_at: Optional[str] = None,
        server: Optional[ModelsGameServer] = None,
        status: Optional[str] = None,
        status_v2: Optional[str] = None,
        **kwargs,
    ) -> ModelsDSInformation:
        instance = cls()
        if requested_at is not None:
            instance.requested_at = requested_at
        if server is not None:
            instance.server = server
        if status is not None:
            instance.status = status
        if status_v2 is not None:
            instance.status_v2 = status_v2
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ModelsDSInformation:
        instance = cls()
        if not dict_:
            return instance
        if "RequestedAt" in dict_ and dict_["RequestedAt"] is not None:
            instance.requested_at = str(dict_["RequestedAt"])
        elif include_empty:
            instance.requested_at = ""
        if "Server" in dict_ and dict_["Server"] is not None:
            instance.server = ModelsGameServer.create_from_dict(
                dict_["Server"], include_empty=include_empty
            )
        elif include_empty:
            instance.server = ModelsGameServer()
        if "Status" in dict_ and dict_["Status"] is not None:
            instance.status = str(dict_["Status"])
        elif include_empty:
            instance.status = ""
        if "StatusV2" in dict_ and dict_["StatusV2"] is not None:
            instance.status_v2 = str(dict_["StatusV2"])
        elif include_empty:
            instance.status_v2 = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ModelsDSInformation]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ModelsDSInformation]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ModelsDSInformation, List[ModelsDSInformation], Dict[Any, ModelsDSInformation]
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
            "RequestedAt": "requested_at",
            "Server": "server",
            "Status": "status",
            "StatusV2": "status_v2",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "RequestedAt": False,
            "Server": False,
            "Status": False,
            "StatusV2": False,
        }

    # endregion static methods
