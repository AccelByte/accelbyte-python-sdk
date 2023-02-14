# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: accelbyte_cloud_py_codegen

# AccelByte Cloud Gdpr Service (1.19.0)

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


class ModelsDataRetrievalResponse(Model):
    """Models data retrieval response (models.DataRetrievalResponse)

    Properties:
        namespace: (Namespace) REQUIRED str

        request_date: (RequestDate) REQUIRED str

        user_id: (UserID) REQUIRED str
    """

    # region fields

    namespace: str  # REQUIRED
    request_date: str  # REQUIRED
    user_id: str  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_namespace(self, value: str) -> ModelsDataRetrievalResponse:
        self.namespace = value
        return self

    def with_request_date(self, value: str) -> ModelsDataRetrievalResponse:
        self.request_date = value
        return self

    def with_user_id(self, value: str) -> ModelsDataRetrievalResponse:
        self.user_id = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "namespace"):
            result["Namespace"] = str(self.namespace)
        elif include_empty:
            result["Namespace"] = ""
        if hasattr(self, "request_date"):
            result["RequestDate"] = str(self.request_date)
        elif include_empty:
            result["RequestDate"] = ""
        if hasattr(self, "user_id"):
            result["UserID"] = str(self.user_id)
        elif include_empty:
            result["UserID"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        namespace: str,
        request_date: str,
        user_id: str,
    ) -> ModelsDataRetrievalResponse:
        instance = cls()
        instance.namespace = namespace
        instance.request_date = request_date
        instance.user_id = user_id
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ModelsDataRetrievalResponse:
        instance = cls()
        if not dict_:
            return instance
        if "Namespace" in dict_ and dict_["Namespace"] is not None:
            instance.namespace = str(dict_["Namespace"])
        elif include_empty:
            instance.namespace = ""
        if "RequestDate" in dict_ and dict_["RequestDate"] is not None:
            instance.request_date = str(dict_["RequestDate"])
        elif include_empty:
            instance.request_date = ""
        if "UserID" in dict_ and dict_["UserID"] is not None:
            instance.user_id = str(dict_["UserID"])
        elif include_empty:
            instance.user_id = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ModelsDataRetrievalResponse]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ModelsDataRetrievalResponse]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ModelsDataRetrievalResponse,
        List[ModelsDataRetrievalResponse],
        Dict[Any, ModelsDataRetrievalResponse],
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
            "Namespace": "namespace",
            "RequestDate": "request_date",
            "UserID": "user_id",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "Namespace": True,
            "RequestDate": True,
            "UserID": True,
        }

    # endregion static methods
