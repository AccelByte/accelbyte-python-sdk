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


class XblIAPConfigRequest(Model):
    """Xbl IAP config request (XblIAPConfigRequest)

    Properties:
        enable_clawback: (enableClawback) OPTIONAL bool

        entra_app_client_id: (entraAppClientId) OPTIONAL str

        entra_app_client_secret: (entraAppClientSecret) OPTIONAL str

        entra_tenant_id: (entraTenantId) OPTIONAL str

        relying_party_cert: (relyingPartyCert) OPTIONAL str
    """

    # region fields

    enable_clawback: bool  # OPTIONAL
    entra_app_client_id: str  # OPTIONAL
    entra_app_client_secret: str  # OPTIONAL
    entra_tenant_id: str  # OPTIONAL
    relying_party_cert: str  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_enable_clawback(self, value: bool) -> XblIAPConfigRequest:
        self.enable_clawback = value
        return self

    def with_entra_app_client_id(self, value: str) -> XblIAPConfigRequest:
        self.entra_app_client_id = value
        return self

    def with_entra_app_client_secret(self, value: str) -> XblIAPConfigRequest:
        self.entra_app_client_secret = value
        return self

    def with_entra_tenant_id(self, value: str) -> XblIAPConfigRequest:
        self.entra_tenant_id = value
        return self

    def with_relying_party_cert(self, value: str) -> XblIAPConfigRequest:
        self.relying_party_cert = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "enable_clawback"):
            result["enableClawback"] = bool(self.enable_clawback)
        elif include_empty:
            result["enableClawback"] = False
        if hasattr(self, "entra_app_client_id"):
            result["entraAppClientId"] = str(self.entra_app_client_id)
        elif include_empty:
            result["entraAppClientId"] = ""
        if hasattr(self, "entra_app_client_secret"):
            result["entraAppClientSecret"] = str(self.entra_app_client_secret)
        elif include_empty:
            result["entraAppClientSecret"] = ""
        if hasattr(self, "entra_tenant_id"):
            result["entraTenantId"] = str(self.entra_tenant_id)
        elif include_empty:
            result["entraTenantId"] = ""
        if hasattr(self, "relying_party_cert"):
            result["relyingPartyCert"] = str(self.relying_party_cert)
        elif include_empty:
            result["relyingPartyCert"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        enable_clawback: Optional[bool] = None,
        entra_app_client_id: Optional[str] = None,
        entra_app_client_secret: Optional[str] = None,
        entra_tenant_id: Optional[str] = None,
        relying_party_cert: Optional[str] = None,
        **kwargs,
    ) -> XblIAPConfigRequest:
        instance = cls()
        if enable_clawback is not None:
            instance.enable_clawback = enable_clawback
        if entra_app_client_id is not None:
            instance.entra_app_client_id = entra_app_client_id
        if entra_app_client_secret is not None:
            instance.entra_app_client_secret = entra_app_client_secret
        if entra_tenant_id is not None:
            instance.entra_tenant_id = entra_tenant_id
        if relying_party_cert is not None:
            instance.relying_party_cert = relying_party_cert
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> XblIAPConfigRequest:
        instance = cls()
        if not dict_:
            return instance
        if "enableClawback" in dict_ and dict_["enableClawback"] is not None:
            instance.enable_clawback = bool(dict_["enableClawback"])
        elif include_empty:
            instance.enable_clawback = False
        if "entraAppClientId" in dict_ and dict_["entraAppClientId"] is not None:
            instance.entra_app_client_id = str(dict_["entraAppClientId"])
        elif include_empty:
            instance.entra_app_client_id = ""
        if (
            "entraAppClientSecret" in dict_
            and dict_["entraAppClientSecret"] is not None
        ):
            instance.entra_app_client_secret = str(dict_["entraAppClientSecret"])
        elif include_empty:
            instance.entra_app_client_secret = ""
        if "entraTenantId" in dict_ and dict_["entraTenantId"] is not None:
            instance.entra_tenant_id = str(dict_["entraTenantId"])
        elif include_empty:
            instance.entra_tenant_id = ""
        if "relyingPartyCert" in dict_ and dict_["relyingPartyCert"] is not None:
            instance.relying_party_cert = str(dict_["relyingPartyCert"])
        elif include_empty:
            instance.relying_party_cert = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, XblIAPConfigRequest]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[XblIAPConfigRequest]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        XblIAPConfigRequest, List[XblIAPConfigRequest], Dict[Any, XblIAPConfigRequest]
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
            "enableClawback": "enable_clawback",
            "entraAppClientId": "entra_app_client_id",
            "entraAppClientSecret": "entra_app_client_secret",
            "entraTenantId": "entra_tenant_id",
            "relyingPartyCert": "relying_party_cert",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "enableClawback": False,
            "entraAppClientId": False,
            "entraAppClientSecret": False,
            "entraTenantId": False,
            "relyingPartyCert": False,
        }

    # endregion static methods
