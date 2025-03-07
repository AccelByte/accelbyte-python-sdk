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


class ApimodelsUpdateGamesessionDSInformationRequest(Model):
    """Apimodels update gamesession DS information request (apimodels.UpdateGamesessionDSInformationRequest)

    Properties:
        created_region: (createdRegion) REQUIRED str

        deployment: (deployment) REQUIRED str

        description: (description) REQUIRED str

        ip: (ip) REQUIRED str

        port: (port) REQUIRED int

        region: (region) REQUIRED str

        server_id: (serverId) REQUIRED str

        source: (source) REQUIRED str

        status: (status) REQUIRED str
    """

    # region fields

    created_region: str  # REQUIRED
    deployment: str  # REQUIRED
    description: str  # REQUIRED
    ip: str  # REQUIRED
    port: int  # REQUIRED
    region: str  # REQUIRED
    server_id: str  # REQUIRED
    source: str  # REQUIRED
    status: str  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_created_region(
        self, value: str
    ) -> ApimodelsUpdateGamesessionDSInformationRequest:
        self.created_region = value
        return self

    def with_deployment(
        self, value: str
    ) -> ApimodelsUpdateGamesessionDSInformationRequest:
        self.deployment = value
        return self

    def with_description(
        self, value: str
    ) -> ApimodelsUpdateGamesessionDSInformationRequest:
        self.description = value
        return self

    def with_ip(self, value: str) -> ApimodelsUpdateGamesessionDSInformationRequest:
        self.ip = value
        return self

    def with_port(self, value: int) -> ApimodelsUpdateGamesessionDSInformationRequest:
        self.port = value
        return self

    def with_region(self, value: str) -> ApimodelsUpdateGamesessionDSInformationRequest:
        self.region = value
        return self

    def with_server_id(
        self, value: str
    ) -> ApimodelsUpdateGamesessionDSInformationRequest:
        self.server_id = value
        return self

    def with_source(self, value: str) -> ApimodelsUpdateGamesessionDSInformationRequest:
        self.source = value
        return self

    def with_status(self, value: str) -> ApimodelsUpdateGamesessionDSInformationRequest:
        self.status = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "created_region"):
            result["createdRegion"] = str(self.created_region)
        elif include_empty:
            result["createdRegion"] = ""
        if hasattr(self, "deployment"):
            result["deployment"] = str(self.deployment)
        elif include_empty:
            result["deployment"] = ""
        if hasattr(self, "description"):
            result["description"] = str(self.description)
        elif include_empty:
            result["description"] = ""
        if hasattr(self, "ip"):
            result["ip"] = str(self.ip)
        elif include_empty:
            result["ip"] = ""
        if hasattr(self, "port"):
            result["port"] = int(self.port)
        elif include_empty:
            result["port"] = 0
        if hasattr(self, "region"):
            result["region"] = str(self.region)
        elif include_empty:
            result["region"] = ""
        if hasattr(self, "server_id"):
            result["serverId"] = str(self.server_id)
        elif include_empty:
            result["serverId"] = ""
        if hasattr(self, "source"):
            result["source"] = str(self.source)
        elif include_empty:
            result["source"] = ""
        if hasattr(self, "status"):
            result["status"] = str(self.status)
        elif include_empty:
            result["status"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        created_region: str,
        deployment: str,
        description: str,
        ip: str,
        port: int,
        region: str,
        server_id: str,
        source: str,
        status: str,
        **kwargs,
    ) -> ApimodelsUpdateGamesessionDSInformationRequest:
        instance = cls()
        instance.created_region = created_region
        instance.deployment = deployment
        instance.description = description
        instance.ip = ip
        instance.port = port
        instance.region = region
        instance.server_id = server_id
        instance.source = source
        instance.status = status
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ApimodelsUpdateGamesessionDSInformationRequest:
        instance = cls()
        if not dict_:
            return instance
        if "createdRegion" in dict_ and dict_["createdRegion"] is not None:
            instance.created_region = str(dict_["createdRegion"])
        elif include_empty:
            instance.created_region = ""
        if "deployment" in dict_ and dict_["deployment"] is not None:
            instance.deployment = str(dict_["deployment"])
        elif include_empty:
            instance.deployment = ""
        if "description" in dict_ and dict_["description"] is not None:
            instance.description = str(dict_["description"])
        elif include_empty:
            instance.description = ""
        if "ip" in dict_ and dict_["ip"] is not None:
            instance.ip = str(dict_["ip"])
        elif include_empty:
            instance.ip = ""
        if "port" in dict_ and dict_["port"] is not None:
            instance.port = int(dict_["port"])
        elif include_empty:
            instance.port = 0
        if "region" in dict_ and dict_["region"] is not None:
            instance.region = str(dict_["region"])
        elif include_empty:
            instance.region = ""
        if "serverId" in dict_ and dict_["serverId"] is not None:
            instance.server_id = str(dict_["serverId"])
        elif include_empty:
            instance.server_id = ""
        if "source" in dict_ and dict_["source"] is not None:
            instance.source = str(dict_["source"])
        elif include_empty:
            instance.source = ""
        if "status" in dict_ and dict_["status"] is not None:
            instance.status = str(dict_["status"])
        elif include_empty:
            instance.status = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ApimodelsUpdateGamesessionDSInformationRequest]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ApimodelsUpdateGamesessionDSInformationRequest]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ApimodelsUpdateGamesessionDSInformationRequest,
        List[ApimodelsUpdateGamesessionDSInformationRequest],
        Dict[Any, ApimodelsUpdateGamesessionDSInformationRequest],
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
            "createdRegion": "created_region",
            "deployment": "deployment",
            "description": "description",
            "ip": "ip",
            "port": "port",
            "region": "region",
            "serverId": "server_id",
            "source": "source",
            "status": "status",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "createdRegion": True,
            "deployment": True,
            "description": True,
            "ip": True,
            "port": True,
            "region": True,
            "serverId": True,
            "source": True,
            "status": True,
        }

    # endregion static methods
