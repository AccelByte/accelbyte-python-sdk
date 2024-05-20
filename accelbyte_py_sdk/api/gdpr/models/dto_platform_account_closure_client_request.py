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
        client_id: (clientId) REQUIRED str

        secret: (secret) REQUIRED str
    """

    # region fields

    client_id: str  # REQUIRED
    secret: str  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_client_id(self, value: str) -> DtoPlatformAccountClosureClientRequest:
        self.client_id = value
        return self

    def with_secret(self, value: str) -> DtoPlatformAccountClosureClientRequest:
        self.secret = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "client_id"):
            result["clientId"] = str(self.client_id)
        elif include_empty:
            result["clientId"] = ""
        if hasattr(self, "secret"):
            result["secret"] = str(self.secret)
        elif include_empty:
            result["secret"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls, client_id: str, secret: str, **kwargs
    ) -> DtoPlatformAccountClosureClientRequest:
        instance = cls()
        instance.client_id = client_id
        instance.secret = secret
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> DtoPlatformAccountClosureClientRequest:
        instance = cls()
        if not dict_:
            return instance
        if "clientId" in dict_ and dict_["clientId"] is not None:
            instance.client_id = str(dict_["clientId"])
        elif include_empty:
            instance.client_id = ""
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
            "clientId": "client_id",
            "secret": "secret",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "clientId": True,
            "secret": True,
        }

    # endregion static methods
