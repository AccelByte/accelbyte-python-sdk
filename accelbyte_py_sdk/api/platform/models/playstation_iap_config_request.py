# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: ags_py_codegen

# AccelByte Gaming Services Platform Service

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


class PlaystationIAPConfigRequest(Model):
    """Playstation IAP config request (PlaystationIAPConfigRequest)

    Properties:
        environment: (environment) REQUIRED str

        back_office_server_client_id: (backOfficeServerClientId) OPTIONAL str

        back_office_server_client_secret: (backOfficeServerClientSecret) OPTIONAL str

        enable_stream_job: (enableStreamJob) OPTIONAL bool

        stream_name: (streamName) OPTIONAL str

        stream_partner_name: (streamPartnerName) OPTIONAL str
    """

    # region fields

    environment: str  # REQUIRED
    back_office_server_client_id: str  # OPTIONAL
    back_office_server_client_secret: str  # OPTIONAL
    enable_stream_job: bool  # OPTIONAL
    stream_name: str  # OPTIONAL
    stream_partner_name: str  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_environment(self, value: str) -> PlaystationIAPConfigRequest:
        self.environment = value
        return self

    def with_back_office_server_client_id(
        self, value: str
    ) -> PlaystationIAPConfigRequest:
        self.back_office_server_client_id = value
        return self

    def with_back_office_server_client_secret(
        self, value: str
    ) -> PlaystationIAPConfigRequest:
        self.back_office_server_client_secret = value
        return self

    def with_enable_stream_job(self, value: bool) -> PlaystationIAPConfigRequest:
        self.enable_stream_job = value
        return self

    def with_stream_name(self, value: str) -> PlaystationIAPConfigRequest:
        self.stream_name = value
        return self

    def with_stream_partner_name(self, value: str) -> PlaystationIAPConfigRequest:
        self.stream_partner_name = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "environment"):
            result["environment"] = str(self.environment)
        elif include_empty:
            result["environment"] = ""
        if hasattr(self, "back_office_server_client_id"):
            result["backOfficeServerClientId"] = str(self.back_office_server_client_id)
        elif include_empty:
            result["backOfficeServerClientId"] = ""
        if hasattr(self, "back_office_server_client_secret"):
            result["backOfficeServerClientSecret"] = str(
                self.back_office_server_client_secret
            )
        elif include_empty:
            result["backOfficeServerClientSecret"] = ""
        if hasattr(self, "enable_stream_job"):
            result["enableStreamJob"] = bool(self.enable_stream_job)
        elif include_empty:
            result["enableStreamJob"] = False
        if hasattr(self, "stream_name"):
            result["streamName"] = str(self.stream_name)
        elif include_empty:
            result["streamName"] = ""
        if hasattr(self, "stream_partner_name"):
            result["streamPartnerName"] = str(self.stream_partner_name)
        elif include_empty:
            result["streamPartnerName"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        environment: str,
        back_office_server_client_id: Optional[str] = None,
        back_office_server_client_secret: Optional[str] = None,
        enable_stream_job: Optional[bool] = None,
        stream_name: Optional[str] = None,
        stream_partner_name: Optional[str] = None,
        **kwargs,
    ) -> PlaystationIAPConfigRequest:
        instance = cls()
        instance.environment = environment
        if back_office_server_client_id is not None:
            instance.back_office_server_client_id = back_office_server_client_id
        if back_office_server_client_secret is not None:
            instance.back_office_server_client_secret = back_office_server_client_secret
        if enable_stream_job is not None:
            instance.enable_stream_job = enable_stream_job
        if stream_name is not None:
            instance.stream_name = stream_name
        if stream_partner_name is not None:
            instance.stream_partner_name = stream_partner_name
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> PlaystationIAPConfigRequest:
        instance = cls()
        if not dict_:
            return instance
        if "environment" in dict_ and dict_["environment"] is not None:
            instance.environment = str(dict_["environment"])
        elif include_empty:
            instance.environment = ""
        if (
            "backOfficeServerClientId" in dict_
            and dict_["backOfficeServerClientId"] is not None
        ):
            instance.back_office_server_client_id = str(
                dict_["backOfficeServerClientId"]
            )
        elif include_empty:
            instance.back_office_server_client_id = ""
        if (
            "backOfficeServerClientSecret" in dict_
            and dict_["backOfficeServerClientSecret"] is not None
        ):
            instance.back_office_server_client_secret = str(
                dict_["backOfficeServerClientSecret"]
            )
        elif include_empty:
            instance.back_office_server_client_secret = ""
        if "enableStreamJob" in dict_ and dict_["enableStreamJob"] is not None:
            instance.enable_stream_job = bool(dict_["enableStreamJob"])
        elif include_empty:
            instance.enable_stream_job = False
        if "streamName" in dict_ and dict_["streamName"] is not None:
            instance.stream_name = str(dict_["streamName"])
        elif include_empty:
            instance.stream_name = ""
        if "streamPartnerName" in dict_ and dict_["streamPartnerName"] is not None:
            instance.stream_partner_name = str(dict_["streamPartnerName"])
        elif include_empty:
            instance.stream_partner_name = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, PlaystationIAPConfigRequest]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[PlaystationIAPConfigRequest]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        PlaystationIAPConfigRequest,
        List[PlaystationIAPConfigRequest],
        Dict[Any, PlaystationIAPConfigRequest],
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
            "environment": "environment",
            "backOfficeServerClientId": "back_office_server_client_id",
            "backOfficeServerClientSecret": "back_office_server_client_secret",
            "enableStreamJob": "enable_stream_job",
            "streamName": "stream_name",
            "streamPartnerName": "stream_partner_name",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "environment": True,
            "backOfficeServerClientId": False,
            "backOfficeServerClientSecret": False,
            "enableStreamJob": False,
            "streamName": False,
            "streamPartnerName": False,
        }

    # endregion static methods
