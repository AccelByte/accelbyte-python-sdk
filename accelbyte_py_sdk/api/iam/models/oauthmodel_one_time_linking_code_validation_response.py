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


class OauthmodelOneTimeLinkingCodeValidationResponse(Model):
    """Oauthmodel one time linking code validation response (oauthmodel.OneTimeLinkingCodeValidationResponse)

    Properties:
        expired: (expired) REQUIRED bool

        valid: (valid) REQUIRED bool
    """

    # region fields

    expired: bool  # REQUIRED
    valid: bool  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_expired(
        self, value: bool
    ) -> OauthmodelOneTimeLinkingCodeValidationResponse:
        self.expired = value
        return self

    def with_valid(self, value: bool) -> OauthmodelOneTimeLinkingCodeValidationResponse:
        self.valid = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "expired"):
            result["expired"] = bool(self.expired)
        elif include_empty:
            result["expired"] = False
        if hasattr(self, "valid"):
            result["valid"] = bool(self.valid)
        elif include_empty:
            result["valid"] = False
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        expired: bool,
        valid: bool,
    ) -> OauthmodelOneTimeLinkingCodeValidationResponse:
        instance = cls()
        instance.expired = expired
        instance.valid = valid
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> OauthmodelOneTimeLinkingCodeValidationResponse:
        instance = cls()
        if not dict_:
            return instance
        if "expired" in dict_ and dict_["expired"] is not None:
            instance.expired = bool(dict_["expired"])
        elif include_empty:
            instance.expired = False
        if "valid" in dict_ and dict_["valid"] is not None:
            instance.valid = bool(dict_["valid"])
        elif include_empty:
            instance.valid = False
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, OauthmodelOneTimeLinkingCodeValidationResponse]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[OauthmodelOneTimeLinkingCodeValidationResponse]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        OauthmodelOneTimeLinkingCodeValidationResponse,
        List[OauthmodelOneTimeLinkingCodeValidationResponse],
        Dict[Any, OauthmodelOneTimeLinkingCodeValidationResponse],
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
            "expired": "expired",
            "valid": "valid",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "expired": True,
            "valid": True,
        }

    # endregion static methods
