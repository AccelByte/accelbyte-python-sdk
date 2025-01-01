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


class DtoPlatformAccountClosureClientResponse(Model):
    """Dto platform account closure client response (dto.PlatformAccountClosureClientResponse)

    Properties:
        namespace: (namespace) REQUIRED str

        platform: (platform) REQUIRED str

        updated_at: (updatedAt) REQUIRED int

        bp_cert_expire_at: (bpCertExpireAt) OPTIONAL int

        bp_cert_file_name: (bpCertFileName) OPTIONAL str

        client_id: (clientId) OPTIONAL str

        publisher_key: (publisherKey) OPTIONAL str

        sandbox_id: (sandboxId) OPTIONAL str

        secret: (secret) OPTIONAL str
    """

    # region fields

    namespace: str  # REQUIRED
    platform: str  # REQUIRED
    updated_at: int  # REQUIRED
    bp_cert_expire_at: int  # OPTIONAL
    bp_cert_file_name: str  # OPTIONAL
    client_id: str  # OPTIONAL
    publisher_key: str  # OPTIONAL
    sandbox_id: str  # OPTIONAL
    secret: str  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_namespace(self, value: str) -> DtoPlatformAccountClosureClientResponse:
        self.namespace = value
        return self

    def with_platform(self, value: str) -> DtoPlatformAccountClosureClientResponse:
        self.platform = value
        return self

    def with_updated_at(self, value: int) -> DtoPlatformAccountClosureClientResponse:
        self.updated_at = value
        return self

    def with_bp_cert_expire_at(
        self, value: int
    ) -> DtoPlatformAccountClosureClientResponse:
        self.bp_cert_expire_at = value
        return self

    def with_bp_cert_file_name(
        self, value: str
    ) -> DtoPlatformAccountClosureClientResponse:
        self.bp_cert_file_name = value
        return self

    def with_client_id(self, value: str) -> DtoPlatformAccountClosureClientResponse:
        self.client_id = value
        return self

    def with_publisher_key(self, value: str) -> DtoPlatformAccountClosureClientResponse:
        self.publisher_key = value
        return self

    def with_sandbox_id(self, value: str) -> DtoPlatformAccountClosureClientResponse:
        self.sandbox_id = value
        return self

    def with_secret(self, value: str) -> DtoPlatformAccountClosureClientResponse:
        self.secret = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "namespace"):
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = ""
        if hasattr(self, "platform"):
            result["platform"] = str(self.platform)
        elif include_empty:
            result["platform"] = ""
        if hasattr(self, "updated_at"):
            result["updatedAt"] = int(self.updated_at)
        elif include_empty:
            result["updatedAt"] = 0
        if hasattr(self, "bp_cert_expire_at"):
            result["bpCertExpireAt"] = int(self.bp_cert_expire_at)
        elif include_empty:
            result["bpCertExpireAt"] = 0
        if hasattr(self, "bp_cert_file_name"):
            result["bpCertFileName"] = str(self.bp_cert_file_name)
        elif include_empty:
            result["bpCertFileName"] = ""
        if hasattr(self, "client_id"):
            result["clientId"] = str(self.client_id)
        elif include_empty:
            result["clientId"] = ""
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
        namespace: str,
        platform: str,
        updated_at: int,
        bp_cert_expire_at: Optional[int] = None,
        bp_cert_file_name: Optional[str] = None,
        client_id: Optional[str] = None,
        publisher_key: Optional[str] = None,
        sandbox_id: Optional[str] = None,
        secret: Optional[str] = None,
        **kwargs,
    ) -> DtoPlatformAccountClosureClientResponse:
        instance = cls()
        instance.namespace = namespace
        instance.platform = platform
        instance.updated_at = updated_at
        if bp_cert_expire_at is not None:
            instance.bp_cert_expire_at = bp_cert_expire_at
        if bp_cert_file_name is not None:
            instance.bp_cert_file_name = bp_cert_file_name
        if client_id is not None:
            instance.client_id = client_id
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
    ) -> DtoPlatformAccountClosureClientResponse:
        instance = cls()
        if not dict_:
            return instance
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = ""
        if "platform" in dict_ and dict_["platform"] is not None:
            instance.platform = str(dict_["platform"])
        elif include_empty:
            instance.platform = ""
        if "updatedAt" in dict_ and dict_["updatedAt"] is not None:
            instance.updated_at = int(dict_["updatedAt"])
        elif include_empty:
            instance.updated_at = 0
        if "bpCertExpireAt" in dict_ and dict_["bpCertExpireAt"] is not None:
            instance.bp_cert_expire_at = int(dict_["bpCertExpireAt"])
        elif include_empty:
            instance.bp_cert_expire_at = 0
        if "bpCertFileName" in dict_ and dict_["bpCertFileName"] is not None:
            instance.bp_cert_file_name = str(dict_["bpCertFileName"])
        elif include_empty:
            instance.bp_cert_file_name = ""
        if "clientId" in dict_ and dict_["clientId"] is not None:
            instance.client_id = str(dict_["clientId"])
        elif include_empty:
            instance.client_id = ""
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
    ) -> Dict[str, DtoPlatformAccountClosureClientResponse]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[DtoPlatformAccountClosureClientResponse]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        DtoPlatformAccountClosureClientResponse,
        List[DtoPlatformAccountClosureClientResponse],
        Dict[Any, DtoPlatformAccountClosureClientResponse],
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
            "namespace": "namespace",
            "platform": "platform",
            "updatedAt": "updated_at",
            "bpCertExpireAt": "bp_cert_expire_at",
            "bpCertFileName": "bp_cert_file_name",
            "clientId": "client_id",
            "publisherKey": "publisher_key",
            "sandboxId": "sandbox_id",
            "secret": "secret",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "namespace": True,
            "platform": True,
            "updatedAt": True,
            "bpCertExpireAt": False,
            "bpCertFileName": False,
            "clientId": False,
            "publisherKey": False,
            "sandboxId": False,
            "secret": False,
        }

    # endregion static methods
