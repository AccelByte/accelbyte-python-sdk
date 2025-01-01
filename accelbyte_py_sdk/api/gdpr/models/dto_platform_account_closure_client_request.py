# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: ags_py_codegen

# AccelByte Gaming Services Gdpr Service

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


class DtoPlatformAccountClosureClientRequest(Model):
    """Dto platform account closure client request (dto.PlatformAccountClosureClientRequest)

    Properties:
        bp_cert: (bpCert) OPTIONAL str

        bp_cert_file_name: (bpCertFileName) OPTIONAL str

        client_id: (clientId) OPTIONAL str

        password: (password) OPTIONAL str

        publisher_key: (publisherKey) OPTIONAL str

        sandbox_id: (sandboxId) OPTIONAL str

        secret: (secret) OPTIONAL str
    """

    # region fields

    bp_cert: str  # OPTIONAL
    bp_cert_file_name: str  # OPTIONAL
    client_id: str  # OPTIONAL
    password: str  # OPTIONAL
    publisher_key: str  # OPTIONAL
    sandbox_id: str  # OPTIONAL
    secret: str  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_bp_cert(self, value: str) -> DtoPlatformAccountClosureClientRequest:
        self.bp_cert = value
        return self

    def with_bp_cert_file_name(
        self, value: str
    ) -> DtoPlatformAccountClosureClientRequest:
        self.bp_cert_file_name = value
        return self

    def with_client_id(self, value: str) -> DtoPlatformAccountClosureClientRequest:
        self.client_id = value
        return self

    def with_password(self, value: str) -> DtoPlatformAccountClosureClientRequest:
        self.password = value
        return self

    def with_publisher_key(self, value: str) -> DtoPlatformAccountClosureClientRequest:
        self.publisher_key = value
        return self

    def with_sandbox_id(self, value: str) -> DtoPlatformAccountClosureClientRequest:
        self.sandbox_id = value
        return self

    def with_secret(self, value: str) -> DtoPlatformAccountClosureClientRequest:
        self.secret = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "bp_cert"):
            result["bpCert"] = str(self.bp_cert)
        elif include_empty:
            result["bpCert"] = ""
        if hasattr(self, "bp_cert_file_name"):
            result["bpCertFileName"] = str(self.bp_cert_file_name)
        elif include_empty:
            result["bpCertFileName"] = ""
        if hasattr(self, "client_id"):
            result["clientId"] = str(self.client_id)
        elif include_empty:
            result["clientId"] = ""
        if hasattr(self, "password"):
            result["password"] = str(self.password)
        elif include_empty:
            result["password"] = ""
        if hasattr(self, "publisher_key"):
            result["publisherKey"] = str(self.publisher_key)
        elif include_empty:
            result["publisherKey"] = ""
        if hasattr(self, "sandbox_id"):
            result["sandboxId"] = str(self.sandbox_id)
        elif include_empty:
            result["sandboxId"] = ""
        if hasattr(self, "secret"):
            result["secret"] = str(self.secret)
        elif include_empty:
            result["secret"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        bp_cert: Optional[str] = None,
        bp_cert_file_name: Optional[str] = None,
        client_id: Optional[str] = None,
        password: Optional[str] = None,
        publisher_key: Optional[str] = None,
        sandbox_id: Optional[str] = None,
        secret: Optional[str] = None,
        **kwargs,
    ) -> DtoPlatformAccountClosureClientRequest:
        instance = cls()
        if bp_cert is not None:
            instance.bp_cert = bp_cert
        if bp_cert_file_name is not None:
            instance.bp_cert_file_name = bp_cert_file_name
        if client_id is not None:
            instance.client_id = client_id
        if password is not None:
            instance.password = password
        if publisher_key is not None:
            instance.publisher_key = publisher_key
        if sandbox_id is not None:
            instance.sandbox_id = sandbox_id
        if secret is not None:
            instance.secret = secret
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> DtoPlatformAccountClosureClientRequest:
        instance = cls()
        if not dict_:
            return instance
        if "bpCert" in dict_ and dict_["bpCert"] is not None:
            instance.bp_cert = str(dict_["bpCert"])
        elif include_empty:
            instance.bp_cert = ""
        if "bpCertFileName" in dict_ and dict_["bpCertFileName"] is not None:
            instance.bp_cert_file_name = str(dict_["bpCertFileName"])
        elif include_empty:
            instance.bp_cert_file_name = ""
        if "clientId" in dict_ and dict_["clientId"] is not None:
            instance.client_id = str(dict_["clientId"])
        elif include_empty:
            instance.client_id = ""
        if "password" in dict_ and dict_["password"] is not None:
            instance.password = str(dict_["password"])
        elif include_empty:
            instance.password = ""
        if "publisherKey" in dict_ and dict_["publisherKey"] is not None:
            instance.publisher_key = str(dict_["publisherKey"])
        elif include_empty:
            instance.publisher_key = ""
        if "sandboxId" in dict_ and dict_["sandboxId"] is not None:
            instance.sandbox_id = str(dict_["sandboxId"])
        elif include_empty:
            instance.sandbox_id = ""
        if "secret" in dict_ and dict_["secret"] is not None:
            instance.secret = str(dict_["secret"])
        elif include_empty:
            instance.secret = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, DtoPlatformAccountClosureClientRequest]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[DtoPlatformAccountClosureClientRequest]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        DtoPlatformAccountClosureClientRequest,
        List[DtoPlatformAccountClosureClientRequest],
        Dict[Any, DtoPlatformAccountClosureClientRequest],
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
            "bpCert": "bp_cert",
            "bpCertFileName": "bp_cert_file_name",
            "clientId": "client_id",
            "password": "password",
            "publisherKey": "publisher_key",
            "sandboxId": "sandbox_id",
            "secret": "secret",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "bpCert": False,
            "bpCertFileName": False,
            "clientId": False,
            "password": False,
            "publisherKey": False,
            "sandboxId": False,
            "secret": False,
        }

    # endregion static methods
