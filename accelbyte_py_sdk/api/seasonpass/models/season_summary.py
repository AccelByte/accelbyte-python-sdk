# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: accelbyte_cloud_py_codegen

# AccelByte Cloud Seasonpass Service (1.18.0)

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
from ....core import StrEnum


class StatusEnum(StrEnum):
    DRAFT = "DRAFT"
    PUBLISHED = "PUBLISHED"
    RETIRED = "RETIRED"


class SeasonSummary(Model):
    """A DTO object for season summary. (SeasonSummary)

    Properties:
        end: (end) REQUIRED str

        id_: (id) REQUIRED str

        name: (name) REQUIRED str

        namespace: (namespace) REQUIRED str

        start: (start) REQUIRED str

        status: (status) REQUIRED Union[str, StatusEnum]

        pass_codes: (passCodes) OPTIONAL List[str]

        previous: (previous) OPTIONAL SeasonSummary

        published_at: (publishedAt) OPTIONAL str
    """

    # region fields

    end: str  # REQUIRED
    id_: str  # REQUIRED
    name: str  # REQUIRED
    namespace: str  # REQUIRED
    start: str  # REQUIRED
    status: Union[str, StatusEnum]  # REQUIRED
    pass_codes: List[str]  # OPTIONAL
    previous: SeasonSummary  # OPTIONAL
    published_at: str  # OPTIONAL

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

    def with_status(self, value: Union[str, StatusEnum]) -> SeasonSummary:
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
            result["end"] = ""
        if hasattr(self, "id_"):
            result["id"] = str(self.id_)
        elif include_empty:
            result["id"] = ""
        if hasattr(self, "name"):
            result["name"] = str(self.name)
        elif include_empty:
            result["name"] = ""
        if hasattr(self, "namespace"):
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = ""
        if hasattr(self, "start"):
            result["start"] = str(self.start)
        elif include_empty:
            result["start"] = ""
        if hasattr(self, "status"):
            result["status"] = str(self.status)
        elif include_empty:
            result["status"] = Union[str, StatusEnum]()
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
            result["publishedAt"] = ""
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
        status: Union[str, StatusEnum],
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
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> SeasonSummary:
        instance = cls()
        if not dict_:
            return instance
        if "end" in dict_ and dict_["end"] is not None:
            instance.end = str(dict_["end"])
        elif include_empty:
            instance.end = ""
        if "id" in dict_ and dict_["id"] is not None:
            instance.id_ = str(dict_["id"])
        elif include_empty:
            instance.id_ = ""
        if "name" in dict_ and dict_["name"] is not None:
            instance.name = str(dict_["name"])
        elif include_empty:
            instance.name = ""
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = ""
        if "start" in dict_ and dict_["start"] is not None:
            instance.start = str(dict_["start"])
        elif include_empty:
            instance.start = ""
        if "status" in dict_ and dict_["status"] is not None:
            instance.status = str(dict_["status"])
        elif include_empty:
            instance.status = Union[str, StatusEnum]()
        if "passCodes" in dict_ and dict_["passCodes"] is not None:
            instance.pass_codes = [str(i0) for i0 in dict_["passCodes"]]
        elif include_empty:
            instance.pass_codes = []
        if "previous" in dict_ and dict_["previous"] is not None:
            instance.previous = SeasonSummary.create_from_dict(
                dict_["previous"], include_empty=include_empty
            )
        elif include_empty:
            instance.previous = SeasonSummary()
        if "publishedAt" in dict_ and dict_["publishedAt"] is not None:
            instance.published_at = str(dict_["publishedAt"])
        elif include_empty:
            instance.published_at = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, SeasonSummary]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[SeasonSummary]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[SeasonSummary, List[SeasonSummary], Dict[Any, SeasonSummary]]:
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

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "end": True,
            "id": True,
            "name": True,
            "namespace": True,
            "start": True,
            "status": True,
            "passCodes": False,
            "previous": False,
            "publishedAt": False,
        }

    @staticmethod
    def get_enum_map() -> Dict[str, List[Any]]:
        return {
            "status": ["DRAFT", "PUBLISHED", "RETIRED"],
        }

    # endregion static methods
