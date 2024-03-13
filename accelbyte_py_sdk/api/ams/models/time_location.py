# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: ags_py_codegen

# Fleet Commander

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

from ..models.time_zone import TimeZone
from ..models.time_zone_trans import TimeZoneTrans


class TimeLocation(Model):
    """Time location (time.Location)

    Properties:
        cache_end: (cacheEnd) REQUIRED int

        cache_start: (cacheStart) REQUIRED int

        cache_zone: (cacheZone) REQUIRED TimeZone

        extend: (extend) REQUIRED str

        name: (name) REQUIRED str

        tx: (tx) REQUIRED List[TimeZoneTrans]

        zone: (zone) REQUIRED List[TimeZone]
    """

    # region fields

    cache_end: int  # REQUIRED
    cache_start: int  # REQUIRED
    cache_zone: TimeZone  # REQUIRED
    extend: str  # REQUIRED
    name: str  # REQUIRED
    tx: List[TimeZoneTrans]  # REQUIRED
    zone: List[TimeZone]  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_cache_end(self, value: int) -> TimeLocation:
        self.cache_end = value
        return self

    def with_cache_start(self, value: int) -> TimeLocation:
        self.cache_start = value
        return self

    def with_cache_zone(self, value: TimeZone) -> TimeLocation:
        self.cache_zone = value
        return self

    def with_extend(self, value: str) -> TimeLocation:
        self.extend = value
        return self

    def with_name(self, value: str) -> TimeLocation:
        self.name = value
        return self

    def with_tx(self, value: List[TimeZoneTrans]) -> TimeLocation:
        self.tx = value
        return self

    def with_zone(self, value: List[TimeZone]) -> TimeLocation:
        self.zone = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "cache_end"):
            result["cacheEnd"] = int(self.cache_end)
        elif include_empty:
            result["cacheEnd"] = 0
        if hasattr(self, "cache_start"):
            result["cacheStart"] = int(self.cache_start)
        elif include_empty:
            result["cacheStart"] = 0
        if hasattr(self, "cache_zone"):
            result["cacheZone"] = self.cache_zone.to_dict(include_empty=include_empty)
        elif include_empty:
            result["cacheZone"] = TimeZone()
        if hasattr(self, "extend"):
            result["extend"] = str(self.extend)
        elif include_empty:
            result["extend"] = ""
        if hasattr(self, "name"):
            result["name"] = str(self.name)
        elif include_empty:
            result["name"] = ""
        if hasattr(self, "tx"):
            result["tx"] = [i0.to_dict(include_empty=include_empty) for i0 in self.tx]
        elif include_empty:
            result["tx"] = []
        if hasattr(self, "zone"):
            result["zone"] = [
                i0.to_dict(include_empty=include_empty) for i0 in self.zone
            ]
        elif include_empty:
            result["zone"] = []
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        cache_end: int,
        cache_start: int,
        cache_zone: TimeZone,
        extend: str,
        name: str,
        tx: List[TimeZoneTrans],
        zone: List[TimeZone],
        **kwargs,
    ) -> TimeLocation:
        instance = cls()
        instance.cache_end = cache_end
        instance.cache_start = cache_start
        instance.cache_zone = cache_zone
        instance.extend = extend
        instance.name = name
        instance.tx = tx
        instance.zone = zone
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> TimeLocation:
        instance = cls()
        if not dict_:
            return instance
        if "cacheEnd" in dict_ and dict_["cacheEnd"] is not None:
            instance.cache_end = int(dict_["cacheEnd"])
        elif include_empty:
            instance.cache_end = 0
        if "cacheStart" in dict_ and dict_["cacheStart"] is not None:
            instance.cache_start = int(dict_["cacheStart"])
        elif include_empty:
            instance.cache_start = 0
        if "cacheZone" in dict_ and dict_["cacheZone"] is not None:
            instance.cache_zone = TimeZone.create_from_dict(
                dict_["cacheZone"], include_empty=include_empty
            )
        elif include_empty:
            instance.cache_zone = TimeZone()
        if "extend" in dict_ and dict_["extend"] is not None:
            instance.extend = str(dict_["extend"])
        elif include_empty:
            instance.extend = ""
        if "name" in dict_ and dict_["name"] is not None:
            instance.name = str(dict_["name"])
        elif include_empty:
            instance.name = ""
        if "tx" in dict_ and dict_["tx"] is not None:
            instance.tx = [
                TimeZoneTrans.create_from_dict(i0, include_empty=include_empty)
                for i0 in dict_["tx"]
            ]
        elif include_empty:
            instance.tx = []
        if "zone" in dict_ and dict_["zone"] is not None:
            instance.zone = [
                TimeZone.create_from_dict(i0, include_empty=include_empty)
                for i0 in dict_["zone"]
            ]
        elif include_empty:
            instance.zone = []
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, TimeLocation]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[TimeLocation]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[TimeLocation, List[TimeLocation], Dict[Any, TimeLocation]]:
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
            "cacheEnd": "cache_end",
            "cacheStart": "cache_start",
            "cacheZone": "cache_zone",
            "extend": "extend",
            "name": "name",
            "tx": "tx",
            "zone": "zone",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "cacheEnd": True,
            "cacheStart": True,
            "cacheZone": True,
            "extend": True,
            "name": True,
            "tx": True,
            "zone": True,
        }

    # endregion static methods
