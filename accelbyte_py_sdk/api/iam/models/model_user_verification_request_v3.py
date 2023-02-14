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


class ModelUserVerificationRequestV3(Model):
    """Model user verification request V3 (model.UserVerificationRequestV3)

    Properties:
        code: (code) REQUIRED str

        contact_type: (contactType) REQUIRED str

        language_tag: (languageTag) OPTIONAL str

        validate_only: (validateOnly) OPTIONAL bool
    """

    # region fields

    code: str  # REQUIRED
    contact_type: str  # REQUIRED
    language_tag: str  # OPTIONAL
    validate_only: bool  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_code(self, value: str) -> ModelUserVerificationRequestV3:
        self.code = value
        return self

    def with_contact_type(self, value: str) -> ModelUserVerificationRequestV3:
        self.contact_type = value
        return self

    def with_language_tag(self, value: str) -> ModelUserVerificationRequestV3:
        self.language_tag = value
        return self

    def with_validate_only(self, value: bool) -> ModelUserVerificationRequestV3:
        self.validate_only = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "code"):
            result["code"] = str(self.code)
        elif include_empty:
            result["code"] = ""
        if hasattr(self, "contact_type"):
            result["contactType"] = str(self.contact_type)
        elif include_empty:
            result["contactType"] = ""
        if hasattr(self, "language_tag"):
            result["languageTag"] = str(self.language_tag)
        elif include_empty:
            result["languageTag"] = ""
        if hasattr(self, "validate_only"):
            result["validateOnly"] = bool(self.validate_only)
        elif include_empty:
            result["validateOnly"] = False
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        code: str,
        contact_type: str,
        language_tag: Optional[str] = None,
        validate_only: Optional[bool] = None,
    ) -> ModelUserVerificationRequestV3:
        instance = cls()
        instance.code = code
        instance.contact_type = contact_type
        if language_tag is not None:
            instance.language_tag = language_tag
        if validate_only is not None:
            instance.validate_only = validate_only
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ModelUserVerificationRequestV3:
        instance = cls()
        if not dict_:
            return instance
        if "code" in dict_ and dict_["code"] is not None:
            instance.code = str(dict_["code"])
        elif include_empty:
            instance.code = ""
        if "contactType" in dict_ and dict_["contactType"] is not None:
            instance.contact_type = str(dict_["contactType"])
        elif include_empty:
            instance.contact_type = ""
        if "languageTag" in dict_ and dict_["languageTag"] is not None:
            instance.language_tag = str(dict_["languageTag"])
        elif include_empty:
            instance.language_tag = ""
        if "validateOnly" in dict_ and dict_["validateOnly"] is not None:
            instance.validate_only = bool(dict_["validateOnly"])
        elif include_empty:
            instance.validate_only = False
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ModelUserVerificationRequestV3]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ModelUserVerificationRequestV3]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ModelUserVerificationRequestV3,
        List[ModelUserVerificationRequestV3],
        Dict[Any, ModelUserVerificationRequestV3],
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
            "code": "code",
            "contactType": "contact_type",
            "languageTag": "language_tag",
            "validateOnly": "validate_only",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "code": True,
            "contactType": True,
            "languageTag": False,
            "validateOnly": False,
        }

    # endregion static methods
