# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: accelbyte_cloud_py_codegen

# AccelByte Cloud Iam Service (5.27.2)

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


class ModelAuthenticatorKeyResponseV4(Model):
    """Model authenticator key response V4 (model.AuthenticatorKeyResponseV4)

    Properties:
        secret_key: (secretKey) REQUIRED str

        uri: (uri) REQUIRED str
    """

    # region fields

    secret_key: str  # REQUIRED
    uri: str  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_secret_key(self, value: str) -> ModelAuthenticatorKeyResponseV4:
        self.secret_key = value
        return self

    def with_uri(self, value: str) -> ModelAuthenticatorKeyResponseV4:
        self.uri = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "secret_key"):
            result["secretKey"] = str(self.secret_key)
        elif include_empty:
            result["secretKey"] = ""
        if hasattr(self, "uri"):
            result["uri"] = str(self.uri)
        elif include_empty:
            result["uri"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        secret_key: str,
        uri: str,
    ) -> ModelAuthenticatorKeyResponseV4:
        instance = cls()
        instance.secret_key = secret_key
        instance.uri = uri
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ModelAuthenticatorKeyResponseV4:
        instance = cls()
        if not dict_:
            return instance
        if "secretKey" in dict_ and dict_["secretKey"] is not None:
            instance.secret_key = str(dict_["secretKey"])
        elif include_empty:
            instance.secret_key = ""
        if "uri" in dict_ and dict_["uri"] is not None:
            instance.uri = str(dict_["uri"])
        elif include_empty:
            instance.uri = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ModelAuthenticatorKeyResponseV4]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ModelAuthenticatorKeyResponseV4]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ModelAuthenticatorKeyResponseV4,
        List[ModelAuthenticatorKeyResponseV4],
        Dict[Any, ModelAuthenticatorKeyResponseV4],
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
            "secretKey": "secret_key",
            "uri": "uri",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "secretKey": True,
            "uri": True,
        }

    # endregion static methods
