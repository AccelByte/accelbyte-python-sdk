# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: accelbyte_cloud_py_codegen

# AccelByte Cloud Lobby Server (staging)

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


class HandlersUserPresence(Model):
    """Handlers user presence (handlers.UserPresence)

    Properties:
        activity: (activity) REQUIRED str

        availability: (availability) REQUIRED str

        last_seen_at: (lastSeenAt) REQUIRED str

        namespace: (namespace) REQUIRED str

        user_id: (userID) REQUIRED str
    """

    # region fields

    activity: str  # REQUIRED
    availability: str  # REQUIRED
    last_seen_at: str  # REQUIRED
    namespace: str  # REQUIRED
    user_id: str  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_activity(self, value: str) -> HandlersUserPresence:
        self.activity = value
        return self

    def with_availability(self, value: str) -> HandlersUserPresence:
        self.availability = value
        return self

    def with_last_seen_at(self, value: str) -> HandlersUserPresence:
        self.last_seen_at = value
        return self

    def with_namespace(self, value: str) -> HandlersUserPresence:
        self.namespace = value
        return self

    def with_user_id(self, value: str) -> HandlersUserPresence:
        self.user_id = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "activity"):
            result["activity"] = str(self.activity)
        elif include_empty:
            result["activity"] = ""
        if hasattr(self, "availability"):
            result["availability"] = str(self.availability)
        elif include_empty:
            result["availability"] = ""
        if hasattr(self, "last_seen_at"):
            result["lastSeenAt"] = str(self.last_seen_at)
        elif include_empty:
            result["lastSeenAt"] = ""
        if hasattr(self, "namespace"):
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = ""
        if hasattr(self, "user_id"):
            result["userID"] = str(self.user_id)
        elif include_empty:
            result["userID"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        activity: str,
        availability: str,
        last_seen_at: str,
        namespace: str,
        user_id: str,
    ) -> HandlersUserPresence:
        instance = cls()
        instance.activity = activity
        instance.availability = availability
        instance.last_seen_at = last_seen_at
        instance.namespace = namespace
        instance.user_id = user_id
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> HandlersUserPresence:
        instance = cls()
        if not dict_:
            return instance
        if "activity" in dict_ and dict_["activity"] is not None:
            instance.activity = str(dict_["activity"])
        elif include_empty:
            instance.activity = ""
        if "availability" in dict_ and dict_["availability"] is not None:
            instance.availability = str(dict_["availability"])
        elif include_empty:
            instance.availability = ""
        if "lastSeenAt" in dict_ and dict_["lastSeenAt"] is not None:
            instance.last_seen_at = str(dict_["lastSeenAt"])
        elif include_empty:
            instance.last_seen_at = ""
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = ""
        if "userID" in dict_ and dict_["userID"] is not None:
            instance.user_id = str(dict_["userID"])
        elif include_empty:
            instance.user_id = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, HandlersUserPresence]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[HandlersUserPresence]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        HandlersUserPresence,
        List[HandlersUserPresence],
        Dict[Any, HandlersUserPresence],
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
            "activity": "activity",
            "availability": "availability",
            "lastSeenAt": "last_seen_at",
            "namespace": "namespace",
            "userID": "user_id",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "activity": True,
            "availability": True,
            "lastSeenAt": True,
            "namespace": True,
            "userID": True,
        }

    # endregion static methods
