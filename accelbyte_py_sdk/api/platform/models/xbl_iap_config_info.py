# justice-platform-service (3.40.0)

# template file: justice_py_sdk_codegen/__main__.py

# Copyright (c) 2018 - 2022 AccelByte Inc. All Rights Reserved.
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


class XblIAPConfigInfo(Model):
    """Xbl IAP config info (XblIAPConfigInfo)

    Properties:
        namespace: (namespace) REQUIRED str

        business_partner_cert_file_name: (businessPartnerCertFileName) OPTIONAL str

        password: (password) OPTIONAL str

        relying_party_cert: (relyingPartyCert) OPTIONAL str
    """

    # region fields

    namespace: str                                                                                 # REQUIRED
    business_partner_cert_file_name: str                                                           # OPTIONAL
    password: str                                                                                  # OPTIONAL
    relying_party_cert: str                                                                        # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_namespace(self, value: str) -> XblIAPConfigInfo:
        self.namespace = value
        return self

    def with_business_partner_cert_file_name(self, value: str) -> XblIAPConfigInfo:
        self.business_partner_cert_file_name = value
        return self

    def with_password(self, value: str) -> XblIAPConfigInfo:
        self.password = value
        return self

    def with_relying_party_cert(self, value: str) -> XblIAPConfigInfo:
        self.relying_party_cert = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "namespace"):
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = str()
        if hasattr(self, "business_partner_cert_file_name"):
            result["businessPartnerCertFileName"] = str(self.business_partner_cert_file_name)
        elif include_empty:
            result["businessPartnerCertFileName"] = str()
        if hasattr(self, "password"):
            result["password"] = str(self.password)
        elif include_empty:
            result["password"] = str()
        if hasattr(self, "relying_party_cert"):
            result["relyingPartyCert"] = str(self.relying_party_cert)
        elif include_empty:
            result["relyingPartyCert"] = str()
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        namespace: str,
        business_partner_cert_file_name: Optional[str] = None,
        password: Optional[str] = None,
        relying_party_cert: Optional[str] = None,
    ) -> XblIAPConfigInfo:
        instance = cls()
        instance.namespace = namespace
        if business_partner_cert_file_name is not None:
            instance.business_partner_cert_file_name = business_partner_cert_file_name
        if password is not None:
            instance.password = password
        if relying_party_cert is not None:
            instance.relying_party_cert = relying_party_cert
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> XblIAPConfigInfo:
        instance = cls()
        if not dict_:
            return instance
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = str()
        if "businessPartnerCertFileName" in dict_ and dict_["businessPartnerCertFileName"] is not None:
            instance.business_partner_cert_file_name = str(dict_["businessPartnerCertFileName"])
        elif include_empty:
            instance.business_partner_cert_file_name = str()
        if "password" in dict_ and dict_["password"] is not None:
            instance.password = str(dict_["password"])
        elif include_empty:
            instance.password = str()
        if "relyingPartyCert" in dict_ and dict_["relyingPartyCert"] is not None:
            instance.relying_party_cert = str(dict_["relyingPartyCert"])
        elif include_empty:
            instance.relying_party_cert = str()
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "namespace": "namespace",
            "businessPartnerCertFileName": "business_partner_cert_file_name",
            "password": "password",
            "relyingPartyCert": "relying_party_cert",
        }

    # endregion static methods
