# justice-seasonpass-service (1.5.0)

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


class ListSeasonInfo(Model):
    """A DTO object for listing season info. (ListSeasonInfo)

    Properties:
        created_at: (createdAt) REQUIRED str

        default_language: (defaultLanguage) REQUIRED str

        end: (end) REQUIRED str

        id_: (id) REQUIRED str

        name: (name) REQUIRED str

        namespace: (namespace) REQUIRED str

        start: (start) REQUIRED str

        status: (status) REQUIRED str

        updated_at: (updatedAt) REQUIRED str

        pass_codes: (passCodes) OPTIONAL List[str]

        published_at: (publishedAt) OPTIONAL str
    """

    # region fields

    created_at: str                                                                                # REQUIRED
    default_language: str                                                                          # REQUIRED
    end: str                                                                                       # REQUIRED
    id_: str                                                                                       # REQUIRED
    name: str                                                                                      # REQUIRED
    namespace: str                                                                                 # REQUIRED
    start: str                                                                                     # REQUIRED
    status: str                                                                                    # REQUIRED
    updated_at: str                                                                                # REQUIRED
    pass_codes: List[str]                                                                          # OPTIONAL
    published_at: str                                                                              # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_created_at(self, value: str) -> ListSeasonInfo:
        self.created_at = value
        return self

    def with_default_language(self, value: str) -> ListSeasonInfo:
        self.default_language = value
        return self

    def with_end(self, value: str) -> ListSeasonInfo:
        self.end = value
        return self

    def with_id(self, value: str) -> ListSeasonInfo:
        self.id_ = value
        return self

    def with_name(self, value: str) -> ListSeasonInfo:
        self.name = value
        return self

    def with_namespace(self, value: str) -> ListSeasonInfo:
        self.namespace = value
        return self

    def with_start(self, value: str) -> ListSeasonInfo:
        self.start = value
        return self

    def with_status(self, value: str) -> ListSeasonInfo:
        self.status = value
        return self

    def with_updated_at(self, value: str) -> ListSeasonInfo:
        self.updated_at = value
        return self

    def with_pass_codes(self, value: List[str]) -> ListSeasonInfo:
        self.pass_codes = value
        return self

    def with_published_at(self, value: str) -> ListSeasonInfo:
        self.published_at = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "created_at"):
            result["createdAt"] = str(self.created_at)
        elif include_empty:
            result["createdAt"] = str()
        if hasattr(self, "default_language"):
            result["defaultLanguage"] = str(self.default_language)
        elif include_empty:
            result["defaultLanguage"] = str()
        if hasattr(self, "end"):
            result["end"] = str(self.end)
        elif include_empty:
            result["end"] = str()
        if hasattr(self, "id_"):
            result["id"] = str(self.id_)
        elif include_empty:
            result["id"] = str()
        if hasattr(self, "name"):
            result["name"] = str(self.name)
        elif include_empty:
            result["name"] = str()
        if hasattr(self, "namespace"):
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = str()
        if hasattr(self, "start"):
            result["start"] = str(self.start)
        elif include_empty:
            result["start"] = str()
        if hasattr(self, "status"):
            result["status"] = str(self.status)
        elif include_empty:
            result["status"] = str()
        if hasattr(self, "updated_at"):
            result["updatedAt"] = str(self.updated_at)
        elif include_empty:
            result["updatedAt"] = str()
        if hasattr(self, "pass_codes"):
            result["passCodes"] = [str(i0) for i0 in self.pass_codes]
        elif include_empty:
            result["passCodes"] = []
        if hasattr(self, "published_at"):
            result["publishedAt"] = str(self.published_at)
        elif include_empty:
            result["publishedAt"] = str()
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        created_at: str,
        default_language: str,
        end: str,
        id_: str,
        name: str,
        namespace: str,
        start: str,
        status: str,
        updated_at: str,
        pass_codes: Optional[List[str]] = None,
        published_at: Optional[str] = None,
    ) -> ListSeasonInfo:
        instance = cls()
        instance.created_at = created_at
        instance.default_language = default_language
        instance.end = end
        instance.id_ = id_
        instance.name = name
        instance.namespace = namespace
        instance.start = start
        instance.status = status
        instance.updated_at = updated_at
        if pass_codes is not None:
            instance.pass_codes = pass_codes
        if published_at is not None:
            instance.published_at = published_at
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> ListSeasonInfo:
        instance = cls()
        if not dict_:
            return instance
        if "createdAt" in dict_ and dict_["createdAt"] is not None:
            instance.created_at = str(dict_["createdAt"])
        elif include_empty:
            instance.created_at = str()
        if "defaultLanguage" in dict_ and dict_["defaultLanguage"] is not None:
            instance.default_language = str(dict_["defaultLanguage"])
        elif include_empty:
            instance.default_language = str()
        if "end" in dict_ and dict_["end"] is not None:
            instance.end = str(dict_["end"])
        elif include_empty:
            instance.end = str()
        if "id" in dict_ and dict_["id"] is not None:
            instance.id_ = str(dict_["id"])
        elif include_empty:
            instance.id_ = str()
        if "name" in dict_ and dict_["name"] is not None:
            instance.name = str(dict_["name"])
        elif include_empty:
            instance.name = str()
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = str()
        if "start" in dict_ and dict_["start"] is not None:
            instance.start = str(dict_["start"])
        elif include_empty:
            instance.start = str()
        if "status" in dict_ and dict_["status"] is not None:
            instance.status = str(dict_["status"])
        elif include_empty:
            instance.status = str()
        if "updatedAt" in dict_ and dict_["updatedAt"] is not None:
            instance.updated_at = str(dict_["updatedAt"])
        elif include_empty:
            instance.updated_at = str()
        if "passCodes" in dict_ and dict_["passCodes"] is not None:
            instance.pass_codes = [str(i0) for i0 in dict_["passCodes"]]
        elif include_empty:
            instance.pass_codes = []
        if "publishedAt" in dict_ and dict_["publishedAt"] is not None:
            instance.published_at = str(dict_["publishedAt"])
        elif include_empty:
            instance.published_at = str()
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "createdAt": "created_at",
            "defaultLanguage": "default_language",
            "end": "end",
            "id": "id_",
            "name": "name",
            "namespace": "namespace",
            "start": "start",
            "status": "status",
            "updatedAt": "updated_at",
            "passCodes": "pass_codes",
            "publishedAt": "published_at",
        }

    # endregion static methods
