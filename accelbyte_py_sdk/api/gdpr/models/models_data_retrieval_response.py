# justice-gdpr-service (1.11.1)

# Copyright (c) 2018 - 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.

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

    namespace: str                                                                                 # REQUIRED
    request_date: str                                                                              # REQUIRED
    user_id: str                                                                                   # REQUIRED

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
            result["Namespace"] = str()
        if hasattr(self, "request_date"):
            result["RequestDate"] = str(self.request_date)
        elif include_empty:
            result["RequestDate"] = str()
        if hasattr(self, "user_id"):
            result["UserID"] = str(self.user_id)
        elif include_empty:
            result["UserID"] = str()
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
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> ModelsDataRetrievalResponse:
        instance = cls()
        if not dict_:
            return instance
        if "Namespace" in dict_ and dict_["Namespace"] is not None:
            instance.namespace = str(dict_["Namespace"])
        elif include_empty:
            instance.namespace = str()
        if "RequestDate" in dict_ and dict_["RequestDate"] is not None:
            instance.request_date = str(dict_["RequestDate"])
        elif include_empty:
            instance.request_date = str()
        if "UserID" in dict_ and dict_["UserID"] is not None:
            instance.user_id = str(dict_["UserID"])
        elif include_empty:
            instance.user_id = str()
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "Namespace": "namespace",
            "RequestDate": "request_date",
            "UserID": "user_id",
        }

    # endregion static methods