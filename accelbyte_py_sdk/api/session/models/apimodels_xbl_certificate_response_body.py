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


class ApimodelsXblCertificateResponseBody(Model):
    """Apimodels xbl certificate response body (apimodels.XblCertificateResponseBody)

    Properties:
        business_partner_cert_file_bytes: (businessPartnerCertFileBytes) REQUIRED str

        business_partner_cert_file_name: (businessPartnerCertFileName) REQUIRED str

        created_by: (createdBy) REQUIRED str

        namespace: (namespace) REQUIRED str

        updated_at: (updatedAt) REQUIRED str
    """

    # region fields

    business_partner_cert_file_bytes: str  # REQUIRED
    business_partner_cert_file_name: str  # REQUIRED
    created_by: str  # REQUIRED
    namespace: str  # REQUIRED
    updated_at: str  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_business_partner_cert_file_bytes(
        self, value: str
    ) -> ApimodelsXblCertificateResponseBody:
        self.business_partner_cert_file_bytes = value
        return self

    def with_business_partner_cert_file_name(
        self, value: str
    ) -> ApimodelsXblCertificateResponseBody:
        self.business_partner_cert_file_name = value
        return self

    def with_created_by(self, value: str) -> ApimodelsXblCertificateResponseBody:
        self.created_by = value
        return self

    def with_namespace(self, value: str) -> ApimodelsXblCertificateResponseBody:
        self.namespace = value
        return self

    def with_updated_at(self, value: str) -> ApimodelsXblCertificateResponseBody:
        self.updated_at = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "business_partner_cert_file_bytes"):
            result["businessPartnerCertFileBytes"] = str(
                self.business_partner_cert_file_bytes
            )
        elif include_empty:
            result["businessPartnerCertFileBytes"] = ""
        if hasattr(self, "business_partner_cert_file_name"):
            result["businessPartnerCertFileName"] = str(
                self.business_partner_cert_file_name
            )
        elif include_empty:
            result["businessPartnerCertFileName"] = ""
        if hasattr(self, "created_by"):
            result["createdBy"] = str(self.created_by)
        elif include_empty:
            result["createdBy"] = ""
        if hasattr(self, "namespace"):
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = ""
        if hasattr(self, "updated_at"):
            result["updatedAt"] = str(self.updated_at)
        elif include_empty:
            result["updatedAt"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        business_partner_cert_file_bytes: str,
        business_partner_cert_file_name: str,
        created_by: str,
        namespace: str,
        updated_at: str,
        **kwargs,
    ) -> ApimodelsXblCertificateResponseBody:
        instance = cls()
        instance.business_partner_cert_file_bytes = business_partner_cert_file_bytes
        instance.business_partner_cert_file_name = business_partner_cert_file_name
        instance.created_by = created_by
        instance.namespace = namespace
        instance.updated_at = updated_at
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ApimodelsXblCertificateResponseBody:
        instance = cls()
        if not dict_:
            return instance
        if (
            "businessPartnerCertFileBytes" in dict_
            and dict_["businessPartnerCertFileBytes"] is not None
        ):
            instance.business_partner_cert_file_bytes = str(
                dict_["businessPartnerCertFileBytes"]
            )
        elif include_empty:
            instance.business_partner_cert_file_bytes = ""
        if (
            "businessPartnerCertFileName" in dict_
            and dict_["businessPartnerCertFileName"] is not None
        ):
            instance.business_partner_cert_file_name = str(
                dict_["businessPartnerCertFileName"]
            )
        elif include_empty:
            instance.business_partner_cert_file_name = ""
        if "createdBy" in dict_ and dict_["createdBy"] is not None:
            instance.created_by = str(dict_["createdBy"])
        elif include_empty:
            instance.created_by = ""
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = ""
        if "updatedAt" in dict_ and dict_["updatedAt"] is not None:
            instance.updated_at = str(dict_["updatedAt"])
        elif include_empty:
            instance.updated_at = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ApimodelsXblCertificateResponseBody]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ApimodelsXblCertificateResponseBody]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ApimodelsXblCertificateResponseBody,
        List[ApimodelsXblCertificateResponseBody],
        Dict[Any, ApimodelsXblCertificateResponseBody],
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
            "businessPartnerCertFileBytes": "business_partner_cert_file_bytes",
            "businessPartnerCertFileName": "business_partner_cert_file_name",
            "createdBy": "created_by",
            "namespace": "namespace",
            "updatedAt": "updated_at",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "businessPartnerCertFileBytes": True,
            "businessPartnerCertFileName": True,
            "createdBy": True,
            "namespace": True,
            "updatedAt": True,
        }

    # endregion static methods
