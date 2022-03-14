# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.

# template file: justice_py_sdk_codegen/__main__.py

# justice-iam-service (5.4.0)

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


class OauthmodelErrorResponse(Model):
    """Oauthmodel error response (oauthmodel.ErrorResponse)

    Properties:
        error: (error) REQUIRED str

        error_description: (error_description) OPTIONAL str

        error_uri: (error_uri) OPTIONAL str
    """

    # region fields

    error: str                                                                                     # REQUIRED
    error_description: str                                                                         # OPTIONAL
    error_uri: str                                                                                 # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_error(self, value: str) -> OauthmodelErrorResponse:
        self.error = value
        return self

    def with_error_description(self, value: str) -> OauthmodelErrorResponse:
        self.error_description = value
        return self

    def with_error_uri(self, value: str) -> OauthmodelErrorResponse:
        self.error_uri = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "error"):
            result["error"] = str(self.error)
        elif include_empty:
            result["error"] = str()
        if hasattr(self, "error_description"):
            result["error_description"] = str(self.error_description)
        elif include_empty:
            result["error_description"] = str()
        if hasattr(self, "error_uri"):
            result["error_uri"] = str(self.error_uri)
        elif include_empty:
            result["error_uri"] = str()
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        error: str,
        error_description: Optional[str] = None,
        error_uri: Optional[str] = None,
    ) -> OauthmodelErrorResponse:
        instance = cls()
        instance.error = error
        if error_description is not None:
            instance.error_description = error_description
        if error_uri is not None:
            instance.error_uri = error_uri
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> OauthmodelErrorResponse:
        instance = cls()
        if not dict_:
            return instance
        if "error" in dict_ and dict_["error"] is not None:
            instance.error = str(dict_["error"])
        elif include_empty:
            instance.error = str()
        if "error_description" in dict_ and dict_["error_description"] is not None:
            instance.error_description = str(dict_["error_description"])
        elif include_empty:
            instance.error_description = str()
        if "error_uri" in dict_ and dict_["error_uri"] is not None:
            instance.error_uri = str(dict_["error_uri"])
        elif include_empty:
            instance.error_uri = str()
        return instance

    @classmethod
    def create_many_from_dict(cls, dict_: dict, include_empty: bool = False) -> Dict[str, OauthmodelErrorResponse]:
        return {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_} if dict_ else {}

    @classmethod
    def create_many_from_list(cls, list_: list, include_empty: bool = False) -> List[OauthmodelErrorResponse]:
        return [cls.create_from_dict(i, include_empty=include_empty) for i in list_] if list_ else []

    @classmethod
    def create_from_any(cls, any_: any, include_empty: bool = False, many: bool = False) -> Union[OauthmodelErrorResponse, List[OauthmodelErrorResponse]]:
        if many:
            if isinstance(any_, dict):
                cls.create_many_from_dict(any_, include_empty=include_empty)
            elif isinstance(any_, list):
                cls.create_many_from_list(any_, include_empty=include_empty)
        else:
            return cls.create_from_dict(any_, include_empty=include_empty)

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "error": "error",
            "error_description": "error_description",
            "error_uri": "error_uri",
        }

    # endregion static methods
