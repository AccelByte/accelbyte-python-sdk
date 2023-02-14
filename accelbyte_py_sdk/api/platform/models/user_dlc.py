# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: accelbyte_cloud_py_codegen

# AccelByte Cloud Platform Service (4.23.0)

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

from ..models.dlc_record import DLCRecord


class PlatformEnum(StrEnum):
    EPICGAMES = "EPICGAMES"
    PSN = "PSN"
    STEAM = "STEAM"
    XBOX = "XBOX"


class UserDLC(Model):
    """User DLC (UserDLC)

    Properties:
        created_at: (createdAt) OPTIONAL str

        dlcs: (dlcs) OPTIONAL List[DLCRecord]

        id_: (id) OPTIONAL str

        namespace: (namespace) OPTIONAL str

        platform: (platform) OPTIONAL Union[str, PlatformEnum]

        rvn: (rvn) OPTIONAL int

        updated_at: (updatedAt) OPTIONAL str

        user_id: (userId) OPTIONAL str
    """

    # region fields

    created_at: str  # OPTIONAL
    dlcs: List[DLCRecord]  # OPTIONAL
    id_: str  # OPTIONAL
    namespace: str  # OPTIONAL
    platform: Union[str, PlatformEnum]  # OPTIONAL
    rvn: int  # OPTIONAL
    updated_at: str  # OPTIONAL
    user_id: str  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_created_at(self, value: str) -> UserDLC:
        self.created_at = value
        return self

    def with_dlcs(self, value: List[DLCRecord]) -> UserDLC:
        self.dlcs = value
        return self

    def with_id(self, value: str) -> UserDLC:
        self.id_ = value
        return self

    def with_namespace(self, value: str) -> UserDLC:
        self.namespace = value
        return self

    def with_platform(self, value: Union[str, PlatformEnum]) -> UserDLC:
        self.platform = value
        return self

    def with_rvn(self, value: int) -> UserDLC:
        self.rvn = value
        return self

    def with_updated_at(self, value: str) -> UserDLC:
        self.updated_at = value
        return self

    def with_user_id(self, value: str) -> UserDLC:
        self.user_id = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "created_at"):
            result["createdAt"] = str(self.created_at)
        elif include_empty:
            result["createdAt"] = ""
        if hasattr(self, "dlcs"):
            result["dlcs"] = [
                i0.to_dict(include_empty=include_empty) for i0 in self.dlcs
            ]
        elif include_empty:
            result["dlcs"] = []
        if hasattr(self, "id_"):
            result["id"] = str(self.id_)
        elif include_empty:
            result["id"] = ""
        if hasattr(self, "namespace"):
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = ""
        if hasattr(self, "platform"):
            result["platform"] = str(self.platform)
        elif include_empty:
            result["platform"] = Union[str, PlatformEnum]()
        if hasattr(self, "rvn"):
            result["rvn"] = int(self.rvn)
        elif include_empty:
            result["rvn"] = 0
        if hasattr(self, "updated_at"):
            result["updatedAt"] = str(self.updated_at)
        elif include_empty:
            result["updatedAt"] = ""
        if hasattr(self, "user_id"):
            result["userId"] = str(self.user_id)
        elif include_empty:
            result["userId"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        created_at: Optional[str] = None,
        dlcs: Optional[List[DLCRecord]] = None,
        id_: Optional[str] = None,
        namespace: Optional[str] = None,
        platform: Optional[Union[str, PlatformEnum]] = None,
        rvn: Optional[int] = None,
        updated_at: Optional[str] = None,
        user_id: Optional[str] = None,
    ) -> UserDLC:
        instance = cls()
        if created_at is not None:
            instance.created_at = created_at
        if dlcs is not None:
            instance.dlcs = dlcs
        if id_ is not None:
            instance.id_ = id_
        if namespace is not None:
            instance.namespace = namespace
        if platform is not None:
            instance.platform = platform
        if rvn is not None:
            instance.rvn = rvn
        if updated_at is not None:
            instance.updated_at = updated_at
        if user_id is not None:
            instance.user_id = user_id
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> UserDLC:
        instance = cls()
        if not dict_:
            return instance
        if "createdAt" in dict_ and dict_["createdAt"] is not None:
            instance.created_at = str(dict_["createdAt"])
        elif include_empty:
            instance.created_at = ""
        if "dlcs" in dict_ and dict_["dlcs"] is not None:
            instance.dlcs = [
                DLCRecord.create_from_dict(i0, include_empty=include_empty)
                for i0 in dict_["dlcs"]
            ]
        elif include_empty:
            instance.dlcs = []
        if "id" in dict_ and dict_["id"] is not None:
            instance.id_ = str(dict_["id"])
        elif include_empty:
            instance.id_ = ""
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = ""
        if "platform" in dict_ and dict_["platform"] is not None:
            instance.platform = str(dict_["platform"])
        elif include_empty:
            instance.platform = Union[str, PlatformEnum]()
        if "rvn" in dict_ and dict_["rvn"] is not None:
            instance.rvn = int(dict_["rvn"])
        elif include_empty:
            instance.rvn = 0
        if "updatedAt" in dict_ and dict_["updatedAt"] is not None:
            instance.updated_at = str(dict_["updatedAt"])
        elif include_empty:
            instance.updated_at = ""
        if "userId" in dict_ and dict_["userId"] is not None:
            instance.user_id = str(dict_["userId"])
        elif include_empty:
            instance.user_id = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, UserDLC]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[UserDLC]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[UserDLC, List[UserDLC], Dict[Any, UserDLC]]:
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
            "createdAt": "created_at",
            "dlcs": "dlcs",
            "id": "id_",
            "namespace": "namespace",
            "platform": "platform",
            "rvn": "rvn",
            "updatedAt": "updated_at",
            "userId": "user_id",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "createdAt": False,
            "dlcs": False,
            "id": False,
            "namespace": False,
            "platform": False,
            "rvn": False,
            "updatedAt": False,
            "userId": False,
        }

    @staticmethod
    def get_enum_map() -> Dict[str, List[Any]]:
        return {
            "platform": ["EPICGAMES", "PSN", "STEAM", "XBOX"],
        }

    # endregion static methods
