# Auto-generated at 2021-10-21T08:52:24.296133+08:00
# from: Justice dsmc Service (2.6.0)

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


class ModelsShutdownServerRequest(Model):
    """Models shutdown server request (models.ShutdownServerRequest)

    Properties:
        kill_me: (kill_me) REQUIRED bool

        pod_name: (pod_name) REQUIRED str
    """

    # region fields

    kill_me: bool                                                                                  # REQUIRED
    pod_name: str                                                                                  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_kill_me(self, value: bool) -> ModelsShutdownServerRequest:
        self.kill_me = value
        return self

    def with_pod_name(self, value: str) -> ModelsShutdownServerRequest:
        self.pod_name = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "kill_me") and self.kill_me:
            result["kill_me"] = bool(self.kill_me)
        elif include_empty:
            result["kill_me"] = bool()
        if hasattr(self, "pod_name") and self.pod_name:
            result["pod_name"] = str(self.pod_name)
        elif include_empty:
            result["pod_name"] = str()
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        kill_me: bool,
        pod_name: str,
    ) -> ModelsShutdownServerRequest:
        instance = cls()
        instance.kill_me = kill_me
        instance.pod_name = pod_name
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> ModelsShutdownServerRequest:
        instance = cls()
        if not dict_:
            return instance
        if "kill_me" in dict_ and dict_["kill_me"] is not None:
            instance.kill_me = bool(dict_["kill_me"])
        elif include_empty:
            instance.kill_me = bool()
        if "pod_name" in dict_ and dict_["pod_name"] is not None:
            instance.pod_name = str(dict_["pod_name"])
        elif include_empty:
            instance.pod_name = str()
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "kill_me": "kill_me",
            "pod_name": "pod_name",
        }

    # endregion static methods
