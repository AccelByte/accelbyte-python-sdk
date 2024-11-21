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

from ..models.models_psn_app_server_credentials import ModelsPSNAppServerCredentials
from ..models.models_xbl_certificate_credential import ModelsXBLCertificateCredential


class ModelsPlatformCredentials(Model):
    """Models platform credentials (models.PlatformCredentials)

    Properties:
        psn: (psn) REQUIRED ModelsPSNAppServerCredentials

        updated_at: (updatedAt) REQUIRED str

        xbox: (xbox) OPTIONAL ModelsXBLCertificateCredential
    """

    # region fields

    psn: ModelsPSNAppServerCredentials  # REQUIRED
    updated_at: str  # REQUIRED
    xbox: ModelsXBLCertificateCredential  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_psn(
        self, value: ModelsPSNAppServerCredentials
    ) -> ModelsPlatformCredentials:
        self.psn = value
        return self

    def with_updated_at(self, value: str) -> ModelsPlatformCredentials:
        self.updated_at = value
        return self

    def with_xbox(
        self, value: ModelsXBLCertificateCredential
    ) -> ModelsPlatformCredentials:
        self.xbox = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "psn"):
            result["psn"] = self.psn.to_dict(include_empty=include_empty)
        elif include_empty:
            result["psn"] = ModelsPSNAppServerCredentials()
        if hasattr(self, "updated_at"):
            result["updatedAt"] = str(self.updated_at)
        elif include_empty:
            result["updatedAt"] = ""
        if hasattr(self, "xbox"):
            result["xbox"] = self.xbox.to_dict(include_empty=include_empty)
        elif include_empty:
            result["xbox"] = ModelsXBLCertificateCredential()
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        psn: ModelsPSNAppServerCredentials,
        updated_at: str,
        xbox: Optional[ModelsXBLCertificateCredential] = None,
        **kwargs,
    ) -> ModelsPlatformCredentials:
        instance = cls()
        instance.psn = psn
        instance.updated_at = updated_at
        if xbox is not None:
            instance.xbox = xbox
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ModelsPlatformCredentials:
        instance = cls()
        if not dict_:
            return instance
        if "psn" in dict_ and dict_["psn"] is not None:
            instance.psn = ModelsPSNAppServerCredentials.create_from_dict(
                dict_["psn"], include_empty=include_empty
            )
        elif include_empty:
            instance.psn = ModelsPSNAppServerCredentials()
        if "updatedAt" in dict_ and dict_["updatedAt"] is not None:
            instance.updated_at = str(dict_["updatedAt"])
        elif include_empty:
            instance.updated_at = ""
        if "xbox" in dict_ and dict_["xbox"] is not None:
            instance.xbox = ModelsXBLCertificateCredential.create_from_dict(
                dict_["xbox"], include_empty=include_empty
            )
        elif include_empty:
            instance.xbox = ModelsXBLCertificateCredential()
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ModelsPlatformCredentials]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ModelsPlatformCredentials]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ModelsPlatformCredentials,
        List[ModelsPlatformCredentials],
        Dict[Any, ModelsPlatformCredentials],
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
            "psn": "psn",
            "updatedAt": "updated_at",
            "xbox": "xbox",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "psn": True,
            "updatedAt": True,
            "xbox": False,
        }

    # endregion static methods
