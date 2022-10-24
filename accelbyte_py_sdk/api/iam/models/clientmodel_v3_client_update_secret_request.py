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


class ClientmodelV3ClientUpdateSecretRequest(Model):
    """Clientmodel V3 client update secret request (clientmodel.V3ClientUpdateSecretRequest)

    Properties:
        new_secret: (newSecret) REQUIRED str
    """

    # region fields

    new_secret: str  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_new_secret(self, value: str) -> ClientmodelV3ClientUpdateSecretRequest:
        self.new_secret = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "new_secret"):
            result["newSecret"] = str(self.new_secret)
        elif include_empty:
            result["newSecret"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        new_secret: str,
    ) -> ClientmodelV3ClientUpdateSecretRequest:
        instance = cls()
        instance.new_secret = new_secret
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ClientmodelV3ClientUpdateSecretRequest:
        instance = cls()
        if not dict_:
            return instance
        if "newSecret" in dict_ and dict_["newSecret"] is not None:
            instance.new_secret = str(dict_["newSecret"])
        elif include_empty:
            instance.new_secret = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ClientmodelV3ClientUpdateSecretRequest]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ClientmodelV3ClientUpdateSecretRequest]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ClientmodelV3ClientUpdateSecretRequest,
        List[ClientmodelV3ClientUpdateSecretRequest],
        Dict[Any, ClientmodelV3ClientUpdateSecretRequest],
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
            "newSecret": "new_secret",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "newSecret": True,
        }

    # endregion static methods
