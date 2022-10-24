# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: accelbyte_cloud_py_codegen

# AccelByte Cloud Iam Service (5.20.0)

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


class AccountcommonNetflixCertificates(Model):
    """Accountcommon netflix certificates (accountcommon.NetflixCertificates)

    Properties:
        encrypted_private_key: (encryptedPrivateKey) REQUIRED str

        encrypted_private_key_name: (encryptedPrivateKeyName) REQUIRED str

        public_certificate: (publicCertificate) REQUIRED str

        public_certificate_name: (publicCertificateName) REQUIRED str

        root_certificate: (rootCertificate) REQUIRED str

        root_certificate_name: (rootCertificateName) REQUIRED str
    """

    # region fields

    encrypted_private_key: str  # REQUIRED
    encrypted_private_key_name: str  # REQUIRED
    public_certificate: str  # REQUIRED
    public_certificate_name: str  # REQUIRED
    root_certificate: str  # REQUIRED
    root_certificate_name: str  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_encrypted_private_key(
        self, value: str
    ) -> AccountcommonNetflixCertificates:
        self.encrypted_private_key = value
        return self

    def with_encrypted_private_key_name(
        self, value: str
    ) -> AccountcommonNetflixCertificates:
        self.encrypted_private_key_name = value
        return self

    def with_public_certificate(self, value: str) -> AccountcommonNetflixCertificates:
        self.public_certificate = value
        return self

    def with_public_certificate_name(
        self, value: str
    ) -> AccountcommonNetflixCertificates:
        self.public_certificate_name = value
        return self

    def with_root_certificate(self, value: str) -> AccountcommonNetflixCertificates:
        self.root_certificate = value
        return self

    def with_root_certificate_name(
        self, value: str
    ) -> AccountcommonNetflixCertificates:
        self.root_certificate_name = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "encrypted_private_key"):
            result["encryptedPrivateKey"] = str(self.encrypted_private_key)
        elif include_empty:
            result["encryptedPrivateKey"] = ""
        if hasattr(self, "encrypted_private_key_name"):
            result["encryptedPrivateKeyName"] = str(self.encrypted_private_key_name)
        elif include_empty:
            result["encryptedPrivateKeyName"] = ""
        if hasattr(self, "public_certificate"):
            result["publicCertificate"] = str(self.public_certificate)
        elif include_empty:
            result["publicCertificate"] = ""
        if hasattr(self, "public_certificate_name"):
            result["publicCertificateName"] = str(self.public_certificate_name)
        elif include_empty:
            result["publicCertificateName"] = ""
        if hasattr(self, "root_certificate"):
            result["rootCertificate"] = str(self.root_certificate)
        elif include_empty:
            result["rootCertificate"] = ""
        if hasattr(self, "root_certificate_name"):
            result["rootCertificateName"] = str(self.root_certificate_name)
        elif include_empty:
            result["rootCertificateName"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        encrypted_private_key: str,
        encrypted_private_key_name: str,
        public_certificate: str,
        public_certificate_name: str,
        root_certificate: str,
        root_certificate_name: str,
    ) -> AccountcommonNetflixCertificates:
        instance = cls()
        instance.encrypted_private_key = encrypted_private_key
        instance.encrypted_private_key_name = encrypted_private_key_name
        instance.public_certificate = public_certificate
        instance.public_certificate_name = public_certificate_name
        instance.root_certificate = root_certificate
        instance.root_certificate_name = root_certificate_name
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> AccountcommonNetflixCertificates:
        instance = cls()
        if not dict_:
            return instance
        if "encryptedPrivateKey" in dict_ and dict_["encryptedPrivateKey"] is not None:
            instance.encrypted_private_key = str(dict_["encryptedPrivateKey"])
        elif include_empty:
            instance.encrypted_private_key = ""
        if (
            "encryptedPrivateKeyName" in dict_
            and dict_["encryptedPrivateKeyName"] is not None
        ):
            instance.encrypted_private_key_name = str(dict_["encryptedPrivateKeyName"])
        elif include_empty:
            instance.encrypted_private_key_name = ""
        if "publicCertificate" in dict_ and dict_["publicCertificate"] is not None:
            instance.public_certificate = str(dict_["publicCertificate"])
        elif include_empty:
            instance.public_certificate = ""
        if (
            "publicCertificateName" in dict_
            and dict_["publicCertificateName"] is not None
        ):
            instance.public_certificate_name = str(dict_["publicCertificateName"])
        elif include_empty:
            instance.public_certificate_name = ""
        if "rootCertificate" in dict_ and dict_["rootCertificate"] is not None:
            instance.root_certificate = str(dict_["rootCertificate"])
        elif include_empty:
            instance.root_certificate = ""
        if "rootCertificateName" in dict_ and dict_["rootCertificateName"] is not None:
            instance.root_certificate_name = str(dict_["rootCertificateName"])
        elif include_empty:
            instance.root_certificate_name = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, AccountcommonNetflixCertificates]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[AccountcommonNetflixCertificates]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        AccountcommonNetflixCertificates,
        List[AccountcommonNetflixCertificates],
        Dict[Any, AccountcommonNetflixCertificates],
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
            "encryptedPrivateKey": "encrypted_private_key",
            "encryptedPrivateKeyName": "encrypted_private_key_name",
            "publicCertificate": "public_certificate",
            "publicCertificateName": "public_certificate_name",
            "rootCertificate": "root_certificate",
            "rootCertificateName": "root_certificate_name",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "encryptedPrivateKey": True,
            "encryptedPrivateKeyName": True,
            "publicCertificate": True,
            "publicCertificateName": True,
            "rootCertificate": True,
            "rootCertificateName": True,
        }

    # endregion static methods
