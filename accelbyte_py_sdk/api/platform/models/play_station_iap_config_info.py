# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.

# template file: justice_py_sdk_codegen/__main__.py

# justice-platform-service (4.4.2)

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
import re
from typing import Any, Dict, List, Optional, Tuple, Union

from ....core import Model


class PlayStationIAPConfigInfo(Model):
    """Play station IAP config info (PlayStationIAPConfigInfo)

    Properties:
        environment: (environment) REQUIRED str

        namespace: (namespace) REQUIRED str
    """

    # region fields

    environment: str                                                                               # REQUIRED
    namespace: str                                                                                 # REQUIRED

    # endregion fields

    # region with_x methods

    def with_environment(self, value: str) -> PlayStationIAPConfigInfo:
        self.environment = value
        return self

    def with_namespace(self, value: str) -> PlayStationIAPConfigInfo:
        self.namespace = value
        return self

    # endregion with_x methods

    # region is/has methods

    # noinspection PyMethodMayBeStatic
    def is_valid(self) -> bool:
        # pylint: no-self-use
        # required checks
        if not hasattr(self, "environment") or self.environment is None:
            return False
        if not hasattr(self, "namespace") or self.namespace is None:
            return False
        # pattern checks
        return True

    # endregion is/has methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "environment"):
            result["environment"] = str(self.environment)
        elif include_empty:
            result["environment"] = str()
        if hasattr(self, "namespace"):
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = str()
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        environment: str,
        namespace: str,
    ) -> PlayStationIAPConfigInfo:
        instance = cls()
        instance.environment = environment
        instance.namespace = namespace
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> PlayStationIAPConfigInfo:
        instance = cls()
        if not dict_:
            return instance
        if "environment" in dict_ and dict_["environment"] is not None:
            instance.environment = str(dict_["environment"])
        elif include_empty:
            instance.environment = str()
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = str()
        return instance

    @classmethod
    def create_many_from_dict(cls, dict_: dict, include_empty: bool = False) -> Dict[str, PlayStationIAPConfigInfo]:
        return {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_} if dict_ else {}

    @classmethod
    def create_many_from_list(cls, list_: list, include_empty: bool = False) -> List[PlayStationIAPConfigInfo]:
        return [cls.create_from_dict(i, include_empty=include_empty) for i in list_] if list_ else []

    @classmethod
    def create_from_any(cls, any_: any, include_empty: bool = False, many: bool = False) -> Union[PlayStationIAPConfigInfo, List[PlayStationIAPConfigInfo]]:
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
            "environment": "environment",
            "namespace": "namespace",
        }

    # endregion static methods
