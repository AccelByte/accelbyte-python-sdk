# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: ags_py_codegen

# AccelByte Gaming Services Login Queue Service

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


class ApimodelsConfigurationRequest(Model):
    """Apimodels configuration request (apimodels.ConfigurationRequest)

    Properties:
        enabled: (enabled) REQUIRED bool

        max_concurrency: (maxConcurrency) REQUIRED int

        max_login_rate: (maxLoginRate) REQUIRED int

        min_activation_period_in_second: (minActivationPeriodInSecond) REQUIRED int

        player_polling_time_in_second: (playerPollingTimeInSecond) REQUIRED int

        player_reconnect_grace_period_in_second: (playerReconnectGracePeriodInSecond) REQUIRED int

        queue_reconnect_grace_period_in_second: (queueReconnectGracePeriodInSecond) REQUIRED int

        safety_margin_percentage: (safetyMarginPercentage) REQUIRED int
    """

    # region fields

    enabled: bool  # REQUIRED
    max_concurrency: int  # REQUIRED
    max_login_rate: int  # REQUIRED
    min_activation_period_in_second: int  # REQUIRED
    player_polling_time_in_second: int  # REQUIRED
    player_reconnect_grace_period_in_second: int  # REQUIRED
    queue_reconnect_grace_period_in_second: int  # REQUIRED
    safety_margin_percentage: int  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_enabled(self, value: bool) -> ApimodelsConfigurationRequest:
        self.enabled = value
        return self

    def with_max_concurrency(self, value: int) -> ApimodelsConfigurationRequest:
        self.max_concurrency = value
        return self

    def with_max_login_rate(self, value: int) -> ApimodelsConfigurationRequest:
        self.max_login_rate = value
        return self

    def with_min_activation_period_in_second(
        self, value: int
    ) -> ApimodelsConfigurationRequest:
        self.min_activation_period_in_second = value
        return self

    def with_player_polling_time_in_second(
        self, value: int
    ) -> ApimodelsConfigurationRequest:
        self.player_polling_time_in_second = value
        return self

    def with_player_reconnect_grace_period_in_second(
        self, value: int
    ) -> ApimodelsConfigurationRequest:
        self.player_reconnect_grace_period_in_second = value
        return self

    def with_queue_reconnect_grace_period_in_second(
        self, value: int
    ) -> ApimodelsConfigurationRequest:
        self.queue_reconnect_grace_period_in_second = value
        return self

    def with_safety_margin_percentage(
        self, value: int
    ) -> ApimodelsConfigurationRequest:
        self.safety_margin_percentage = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "enabled"):
            result["enabled"] = bool(self.enabled)
        elif include_empty:
            result["enabled"] = False
        if hasattr(self, "max_concurrency"):
            result["maxConcurrency"] = int(self.max_concurrency)
        elif include_empty:
            result["maxConcurrency"] = 0
        if hasattr(self, "max_login_rate"):
            result["maxLoginRate"] = int(self.max_login_rate)
        elif include_empty:
            result["maxLoginRate"] = 0
        if hasattr(self, "min_activation_period_in_second"):
            result["minActivationPeriodInSecond"] = int(
                self.min_activation_period_in_second
            )
        elif include_empty:
            result["minActivationPeriodInSecond"] = 0
        if hasattr(self, "player_polling_time_in_second"):
            result["playerPollingTimeInSecond"] = int(
                self.player_polling_time_in_second
            )
        elif include_empty:
            result["playerPollingTimeInSecond"] = 0
        if hasattr(self, "player_reconnect_grace_period_in_second"):
            result["playerReconnectGracePeriodInSecond"] = int(
                self.player_reconnect_grace_period_in_second
            )
        elif include_empty:
            result["playerReconnectGracePeriodInSecond"] = 0
        if hasattr(self, "queue_reconnect_grace_period_in_second"):
            result["queueReconnectGracePeriodInSecond"] = int(
                self.queue_reconnect_grace_period_in_second
            )
        elif include_empty:
            result["queueReconnectGracePeriodInSecond"] = 0
        if hasattr(self, "safety_margin_percentage"):
            result["safetyMarginPercentage"] = int(self.safety_margin_percentage)
        elif include_empty:
            result["safetyMarginPercentage"] = 0
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        enabled: bool,
        max_concurrency: int,
        max_login_rate: int,
        min_activation_period_in_second: int,
        player_polling_time_in_second: int,
        player_reconnect_grace_period_in_second: int,
        queue_reconnect_grace_period_in_second: int,
        safety_margin_percentage: int,
        **kwargs,
    ) -> ApimodelsConfigurationRequest:
        instance = cls()
        instance.enabled = enabled
        instance.max_concurrency = max_concurrency
        instance.max_login_rate = max_login_rate
        instance.min_activation_period_in_second = min_activation_period_in_second
        instance.player_polling_time_in_second = player_polling_time_in_second
        instance.player_reconnect_grace_period_in_second = (
            player_reconnect_grace_period_in_second
        )
        instance.queue_reconnect_grace_period_in_second = (
            queue_reconnect_grace_period_in_second
        )
        instance.safety_margin_percentage = safety_margin_percentage
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ApimodelsConfigurationRequest:
        instance = cls()
        if not dict_:
            return instance
        if "enabled" in dict_ and dict_["enabled"] is not None:
            instance.enabled = bool(dict_["enabled"])
        elif include_empty:
            instance.enabled = False
        if "maxConcurrency" in dict_ and dict_["maxConcurrency"] is not None:
            instance.max_concurrency = int(dict_["maxConcurrency"])
        elif include_empty:
            instance.max_concurrency = 0
        if "maxLoginRate" in dict_ and dict_["maxLoginRate"] is not None:
            instance.max_login_rate = int(dict_["maxLoginRate"])
        elif include_empty:
            instance.max_login_rate = 0
        if (
            "minActivationPeriodInSecond" in dict_
            and dict_["minActivationPeriodInSecond"] is not None
        ):
            instance.min_activation_period_in_second = int(
                dict_["minActivationPeriodInSecond"]
            )
        elif include_empty:
            instance.min_activation_period_in_second = 0
        if (
            "playerPollingTimeInSecond" in dict_
            and dict_["playerPollingTimeInSecond"] is not None
        ):
            instance.player_polling_time_in_second = int(
                dict_["playerPollingTimeInSecond"]
            )
        elif include_empty:
            instance.player_polling_time_in_second = 0
        if (
            "playerReconnectGracePeriodInSecond" in dict_
            and dict_["playerReconnectGracePeriodInSecond"] is not None
        ):
            instance.player_reconnect_grace_period_in_second = int(
                dict_["playerReconnectGracePeriodInSecond"]
            )
        elif include_empty:
            instance.player_reconnect_grace_period_in_second = 0
        if (
            "queueReconnectGracePeriodInSecond" in dict_
            and dict_["queueReconnectGracePeriodInSecond"] is not None
        ):
            instance.queue_reconnect_grace_period_in_second = int(
                dict_["queueReconnectGracePeriodInSecond"]
            )
        elif include_empty:
            instance.queue_reconnect_grace_period_in_second = 0
        if (
            "safetyMarginPercentage" in dict_
            and dict_["safetyMarginPercentage"] is not None
        ):
            instance.safety_margin_percentage = int(dict_["safetyMarginPercentage"])
        elif include_empty:
            instance.safety_margin_percentage = 0
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ApimodelsConfigurationRequest]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ApimodelsConfigurationRequest]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ApimodelsConfigurationRequest,
        List[ApimodelsConfigurationRequest],
        Dict[Any, ApimodelsConfigurationRequest],
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
            "enabled": "enabled",
            "maxConcurrency": "max_concurrency",
            "maxLoginRate": "max_login_rate",
            "minActivationPeriodInSecond": "min_activation_period_in_second",
            "playerPollingTimeInSecond": "player_polling_time_in_second",
            "playerReconnectGracePeriodInSecond": "player_reconnect_grace_period_in_second",
            "queueReconnectGracePeriodInSecond": "queue_reconnect_grace_period_in_second",
            "safetyMarginPercentage": "safety_margin_percentage",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "enabled": True,
            "maxConcurrency": True,
            "maxLoginRate": True,
            "minActivationPeriodInSecond": True,
            "playerPollingTimeInSecond": True,
            "playerReconnectGracePeriodInSecond": True,
            "queueReconnectGracePeriodInSecond": True,
            "safetyMarginPercentage": True,
        }

    # endregion static methods
