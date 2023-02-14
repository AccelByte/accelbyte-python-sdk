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


class XblIAPConfigInfo(Model):
    """Xbl IAP config info (XblIAPConfigInfo)

    Properties:
        namespace: (namespace) REQUIRED str

        business_partner_cert_file_name: (businessPartnerCertFileName) OPTIONAL str

        password: (password) OPTIONAL str

        relying_party_cert: (relyingPartyCert) OPTIONAL str
    """

    # region fields

    namespace: str  # REQUIRED
    business_partner_cert_file_name: str  # OPTIONAL
    password: str  # OPTIONAL
    relying_party_cert: str  # OPTIONAL

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
            result["namespace"] = ""
        if hasattr(self, "business_partner_cert_file_name"):
            result["businessPartnerCertFileName"] = str(
                self.business_partner_cert_file_name
            )
        elif include_empty:
            result["businessPartnerCertFileName"] = ""
        if hasattr(self, "password"):
            result["password"] = str(self.password)
        elif include_empty:
            result["password"] = ""
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
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> XblIAPConfigInfo:
        instance = cls()
        if not dict_:
            return instance
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = ""
        if (
            "businessPartnerCertFileName" in dict_
            and dict_["businessPartnerCertFileName"] is not None
        ):
            instance.business_partner_cert_file_name = str(
                dict_["businessPartnerCertFileName"]
            )
        elif include_empty:
            instance.business_partner_cert_file_name = ""
        if "password" in dict_ and dict_["password"] is not None:
            instance.password = str(dict_["password"])
        elif include_empty:
            instance.password = ""
        if "relyingPartyCert" in dict_ and dict_["relyingPartyCert"] is not None:
            instance.relying_party_cert = str(dict_["relyingPartyCert"])
        elif include_empty:
            instance.relying_party_cert = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, XblIAPConfigInfo]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[XblIAPConfigInfo]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[XblIAPConfigInfo, List[XblIAPConfigInfo], Dict[Any, XblIAPConfigInfo]]:
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
            "businessPartnerCertFileName": "business_partner_cert_file_name",
            "password": "password",
            "relyingPartyCert": "relying_party_cert",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "namespace": True,
            "businessPartnerCertFileName": False,
            "password": False,
            "relyingPartyCert": False,
        }

    # endregion static methods
