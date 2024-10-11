# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: ags_py_codegen

# AccelByte Gaming Services Iam Service

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


class ModelDisableMFARequest(Model):
    """Model disable MFA request (model.DisableMFARequest)

    Properties:
        factor: (factor) OPTIONAL str

        mfa_token: (mfaToken) OPTIONAL str
    """

    # region fields

    factor: str  # OPTIONAL
    mfa_token: str  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_factor(self, value: str) -> ModelDisableMFARequest:
        self.factor = value
        return self

    def with_mfa_token(self, value: str) -> ModelDisableMFARequest:
        self.mfa_token = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "factor"):
            result["factor"] = str(self.factor)
        elif include_empty:
            result["factor"] = ""
        if hasattr(self, "mfa_token"):
            result["mfaToken"] = str(self.mfa_token)
        elif include_empty:
            result["mfaToken"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls, factor: Optional[str] = None, mfa_token: Optional[str] = None, **kwargs
    ) -> ModelDisableMFARequest:
        instance = cls()
        if factor is not None:
            instance.factor = factor
        if mfa_token is not None:
            instance.mfa_token = mfa_token
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ModelDisableMFARequest:
        instance = cls()
        if not dict_:
            return instance
        if "factor" in dict_ and dict_["factor"] is not None:
            instance.factor = str(dict_["factor"])
        elif include_empty:
            instance.factor = ""
        if "mfaToken" in dict_ and dict_["mfaToken"] is not None:
            instance.mfa_token = str(dict_["mfaToken"])
        elif include_empty:
            instance.mfa_token = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ModelDisableMFARequest]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ModelDisableMFARequest]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ModelDisableMFARequest,
        List[ModelDisableMFARequest],
        Dict[Any, ModelDisableMFARequest],
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
            "factor": "factor",
            "mfaToken": "mfa_token",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "factor": False,
            "mfaToken": False,
        }

    # endregion static methods
