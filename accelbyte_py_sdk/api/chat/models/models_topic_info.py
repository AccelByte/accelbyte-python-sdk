# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: ags_py_codegen

# AccelByte Gaming Services Chat Service

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

from ..models.topic_info_member import TopicInfoMember


class ModelsTopicInfo(Model):
    """Models topic info (models.TopicInfo)

    Properties:
        created_at: (createdAt) REQUIRED int

        id_: (id) REQUIRED str

        name: (name) REQUIRED str

        sub_type: (subType) REQUIRED str

        type_: (type) REQUIRED str

        deleted_at: (deletedAt) OPTIONAL int

        members: (members) OPTIONAL List[TopicInfoMember]
    """

    # region fields

    created_at: int  # REQUIRED
    id_: str  # REQUIRED
    name: str  # REQUIRED
    sub_type: str  # REQUIRED
    type_: str  # REQUIRED
    deleted_at: int  # OPTIONAL
    members: List[TopicInfoMember]  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_created_at(self, value: int) -> ModelsTopicInfo:
        self.created_at = value
        return self

    def with_id(self, value: str) -> ModelsTopicInfo:
        self.id_ = value
        return self

    def with_name(self, value: str) -> ModelsTopicInfo:
        self.name = value
        return self

    def with_sub_type(self, value: str) -> ModelsTopicInfo:
        self.sub_type = value
        return self

    def with_type(self, value: str) -> ModelsTopicInfo:
        self.type_ = value
        return self

    def with_deleted_at(self, value: int) -> ModelsTopicInfo:
        self.deleted_at = value
        return self

    def with_members(self, value: List[TopicInfoMember]) -> ModelsTopicInfo:
        self.members = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "created_at"):
            result["createdAt"] = int(self.created_at)
        elif include_empty:
            result["createdAt"] = 0
        if hasattr(self, "id_"):
            result["id"] = str(self.id_)
        elif include_empty:
            result["id"] = ""
        if hasattr(self, "name"):
            result["name"] = str(self.name)
        elif include_empty:
            result["name"] = ""
        if hasattr(self, "sub_type"):
            result["subType"] = str(self.sub_type)
        elif include_empty:
            result["subType"] = ""
        if hasattr(self, "type_"):
            result["type"] = str(self.type_)
        elif include_empty:
            result["type"] = ""
        if hasattr(self, "deleted_at"):
            result["deletedAt"] = int(self.deleted_at)
        elif include_empty:
            result["deletedAt"] = 0
        if hasattr(self, "members"):
            result["members"] = [
                i0.to_dict(include_empty=include_empty) for i0 in self.members
            ]
        elif include_empty:
            result["members"] = []
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        created_at: int,
        id_: str,
        name: str,
        sub_type: str,
        type_: str,
        deleted_at: Optional[int] = None,
        members: Optional[List[TopicInfoMember]] = None,
        **kwargs,
    ) -> ModelsTopicInfo:
        instance = cls()
        instance.created_at = created_at
        instance.id_ = id_
        instance.name = name
        instance.sub_type = sub_type
        instance.type_ = type_
        if deleted_at is not None:
            instance.deleted_at = deleted_at
        if members is not None:
            instance.members = members
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ModelsTopicInfo:
        instance = cls()
        if not dict_:
            return instance
        if "createdAt" in dict_ and dict_["createdAt"] is not None:
            instance.created_at = int(dict_["createdAt"])
        elif include_empty:
            instance.created_at = 0
        if "id" in dict_ and dict_["id"] is not None:
            instance.id_ = str(dict_["id"])
        elif include_empty:
            instance.id_ = ""
        if "name" in dict_ and dict_["name"] is not None:
            instance.name = str(dict_["name"])
        elif include_empty:
            instance.name = ""
        if "subType" in dict_ and dict_["subType"] is not None:
            instance.sub_type = str(dict_["subType"])
        elif include_empty:
            instance.sub_type = ""
        if "type" in dict_ and dict_["type"] is not None:
            instance.type_ = str(dict_["type"])
        elif include_empty:
            instance.type_ = ""
        if "deletedAt" in dict_ and dict_["deletedAt"] is not None:
            instance.deleted_at = int(dict_["deletedAt"])
        elif include_empty:
            instance.deleted_at = 0
        if "members" in dict_ and dict_["members"] is not None:
            instance.members = [
                TopicInfoMember.create_from_dict(i0, include_empty=include_empty)
                for i0 in dict_["members"]
            ]
        elif include_empty:
            instance.members = []
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ModelsTopicInfo]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ModelsTopicInfo]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[ModelsTopicInfo, List[ModelsTopicInfo], Dict[Any, ModelsTopicInfo]]:
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
            "id": "id_",
            "name": "name",
            "subType": "sub_type",
            "type": "type_",
            "deletedAt": "deleted_at",
            "members": "members",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "createdAt": True,
            "id": True,
            "name": True,
            "subType": True,
            "type": True,
            "deletedAt": False,
            "members": False,
        }

    # endregion static methods
