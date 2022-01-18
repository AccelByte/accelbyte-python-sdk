# justice-seasonpass-service (1.7.0)

# template file: justice_py_sdk_codegen/__main__.py

# Copyright (c) 2018 - 2022 AccelByte Inc. All Rights Reserved.
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


class SeasonSummary(Model):
    """A DTO object for season summary. (SeasonSummary)

    Properties:
        end: (end) REQUIRED str

        id_: (id) REQUIRED str

        name: (name) REQUIRED str

        namespace: (namespace) REQUIRED str

        start: (start) REQUIRED str

        status: (status) REQUIRED str

        pass_codes: (passCodes) OPTIONAL List[str]

        previous: (previous) OPTIONAL SeasonSummary

        published_at: (publishedAt) OPTIONAL str
    """

    # region fields

    end: str                                                                                       # REQUIRED
    id_: str                                                                                       # REQUIRED
    name: str                                                                                      # REQUIRED
    namespace: str                                                                                 # REQUIRED
    start: str                                                                                     # REQUIRED
    status: str                                                                                    # REQUIRED
    pass_codes: List[str]                                                                          # OPTIONAL
    previous: SeasonSummary                                                                        # OPTIONAL
    published_at: str                                                                              # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_end(self, value: str) -> SeasonSummary:
        self.end = value
        return self

    def with_id(self, value: str) -> SeasonSummary:
        self.id_ = value
        return self

    def with_name(self, value: str) -> SeasonSummary:
        self.name = value
        return self

    def with_namespace(self, value: str) -> SeasonSummary:
        self.namespace = value
        return self

    def with_start(self, value: str) -> SeasonSummary:
        self.start = value
        return self

    def with_status(self, value: str) -> SeasonSummary:
        self.status = value
        return self

    def with_pass_codes(self, value: List[str]) -> SeasonSummary:
        self.pass_codes = value
        return self

    def with_previous(self, value: SeasonSummary) -> SeasonSummary:
        self.previous = value
        return self

    def with_published_at(self, value: str) -> SeasonSummary:
        self.published_at = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
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
        if hasattr(self, "pass_codes"):
            result["passCodes"] = [str(i0) for i0 in self.pass_codes]
        elif include_empty:
            result["passCodes"] = []
        if hasattr(self, "previous"):
            result["previous"] = self.previous.to_dict(include_empty=include_empty)
        elif include_empty:
            result["previous"] = SeasonSummary()
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
        end: str,
        id_: str,
        name: str,
        namespace: str,
        start: str,
        status: str,
        pass_codes: Optional[List[str]] = None,
        previous: Optional[SeasonSummary] = None,
        published_at: Optional[str] = None,
    ) -> SeasonSummary:
        instance = cls()
        instance.end = end
        instance.id_ = id_
        instance.name = name
        instance.namespace = namespace
        instance.start = start
        instance.status = status
        if pass_codes is not None:
            instance.pass_codes = pass_codes
        if previous is not None:
            instance.previous = previous
        if published_at is not None:
            instance.published_at = published_at
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> SeasonSummary:
        instance = cls()
        if not dict_:
            return instance
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
        if "passCodes" in dict_ and dict_["passCodes"] is not None:
            instance.pass_codes = [str(i0) for i0 in dict_["passCodes"]]
        elif include_empty:
            instance.pass_codes = []
        if "previous" in dict_ and dict_["previous"] is not None:
            instance.previous = SeasonSummary.create_from_dict(dict_["previous"], include_empty=include_empty)
        elif include_empty:
            instance.previous = SeasonSummary()
        if "publishedAt" in dict_ and dict_["publishedAt"] is not None:
            instance.published_at = str(dict_["publishedAt"])
        elif include_empty:
            instance.published_at = str()
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "end": "end",
            "id": "id_",
            "name": "name",
            "namespace": "namespace",
            "start": "start",
            "status": "status",
            "passCodes": "pass_codes",
            "previous": "previous",
            "publishedAt": "published_at",
        }

    # endregion static methods
