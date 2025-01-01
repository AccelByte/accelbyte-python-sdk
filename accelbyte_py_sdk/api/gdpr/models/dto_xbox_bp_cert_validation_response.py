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


class DtoXboxBPCertValidationResponse(Model):
    """Dto xbox BP cert validation response (dto.XboxBPCertValidationResponse)

    Properties:
        expiration_date: (expirationDate) REQUIRED int

        expired: (expired) REQUIRED bool
    """

    # region fields

    expiration_date: int  # REQUIRED
    expired: bool  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_expiration_date(self, value: int) -> DtoXboxBPCertValidationResponse:
        self.expiration_date = value
        return self

    def with_expired(self, value: bool) -> DtoXboxBPCertValidationResponse:
        self.expired = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "expiration_date"):
            result["expirationDate"] = int(self.expiration_date)
        elif include_empty:
            result["expirationDate"] = 0
        if hasattr(self, "expired"):
            result["expired"] = bool(self.expired)
        elif include_empty:
            result["expired"] = False
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls, expiration_date: int, expired: bool, **kwargs
    ) -> DtoXboxBPCertValidationResponse:
        instance = cls()
        instance.expiration_date = expiration_date
        instance.expired = expired
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> DtoXboxBPCertValidationResponse:
        instance = cls()
        if not dict_:
            return instance
        if "expirationDate" in dict_ and dict_["expirationDate"] is not None:
            instance.expiration_date = int(dict_["expirationDate"])
        elif include_empty:
            instance.expiration_date = 0
        if "expired" in dict_ and dict_["expired"] is not None:
            instance.expired = bool(dict_["expired"])
        elif include_empty:
            instance.expired = False
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, DtoXboxBPCertValidationResponse]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[DtoXboxBPCertValidationResponse]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        DtoXboxBPCertValidationResponse,
        List[DtoXboxBPCertValidationResponse],
        Dict[Any, DtoXboxBPCertValidationResponse],
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
            "expirationDate": "expiration_date",
            "expired": "expired",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "expirationDate": True,
            "expired": True,
        }

    # endregion static methods
