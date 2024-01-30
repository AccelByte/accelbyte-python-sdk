# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: ags_py_codegen

# AccelByte Gaming Services Matchmaking Service

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


class ModelsBucketMMRRule(Model):
    """Models bucket MMR rule (models.BucketMMRRule)

    Properties:
        disable_authority: (disable_authority) REQUIRED bool

        flex_authority_count: (flex_authority_count) REQUIRED int

        flex_flat_step_range: (flex_flat_step_range) REQUIRED int

        flex_immunity_count: (flex_immunity_count) REQUIRED int

        flex_range_max: (flex_range_max) REQUIRED int

        flex_rate_ms: (flex_rate_ms) REQUIRED int

        flex_step_max: (flex_step_max) REQUIRED int

        force_authority_match: (force_authority_match) REQUIRED bool

        initial_step_range: (initial_step_range) REQUIRED int

        mmr_max: (mmr_max) REQUIRED int

        mmr_mean: (mmr_mean) REQUIRED int

        mmr_min: (mmr_min) REQUIRED int

        mmr_std_dev: (mmr_std_dev) REQUIRED int

        override_mmr_data: (override_mmr_data) REQUIRED bool

        use_bucket_mmr: (use_bucket_mmr) REQUIRED bool

        use_flat_flex_step: (use_flat_flex_step) REQUIRED bool
    """

    # region fields

    disable_authority: bool  # REQUIRED
    flex_authority_count: int  # REQUIRED
    flex_flat_step_range: int  # REQUIRED
    flex_immunity_count: int  # REQUIRED
    flex_range_max: int  # REQUIRED
    flex_rate_ms: int  # REQUIRED
    flex_step_max: int  # REQUIRED
    force_authority_match: bool  # REQUIRED
    initial_step_range: int  # REQUIRED
    mmr_max: int  # REQUIRED
    mmr_mean: int  # REQUIRED
    mmr_min: int  # REQUIRED
    mmr_std_dev: int  # REQUIRED
    override_mmr_data: bool  # REQUIRED
    use_bucket_mmr: bool  # REQUIRED
    use_flat_flex_step: bool  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_disable_authority(self, value: bool) -> ModelsBucketMMRRule:
        self.disable_authority = value
        return self

    def with_flex_authority_count(self, value: int) -> ModelsBucketMMRRule:
        self.flex_authority_count = value
        return self

    def with_flex_flat_step_range(self, value: int) -> ModelsBucketMMRRule:
        self.flex_flat_step_range = value
        return self

    def with_flex_immunity_count(self, value: int) -> ModelsBucketMMRRule:
        self.flex_immunity_count = value
        return self

    def with_flex_range_max(self, value: int) -> ModelsBucketMMRRule:
        self.flex_range_max = value
        return self

    def with_flex_rate_ms(self, value: int) -> ModelsBucketMMRRule:
        self.flex_rate_ms = value
        return self

    def with_flex_step_max(self, value: int) -> ModelsBucketMMRRule:
        self.flex_step_max = value
        return self

    def with_force_authority_match(self, value: bool) -> ModelsBucketMMRRule:
        self.force_authority_match = value
        return self

    def with_initial_step_range(self, value: int) -> ModelsBucketMMRRule:
        self.initial_step_range = value
        return self

    def with_mmr_max(self, value: int) -> ModelsBucketMMRRule:
        self.mmr_max = value
        return self

    def with_mmr_mean(self, value: int) -> ModelsBucketMMRRule:
        self.mmr_mean = value
        return self

    def with_mmr_min(self, value: int) -> ModelsBucketMMRRule:
        self.mmr_min = value
        return self

    def with_mmr_std_dev(self, value: int) -> ModelsBucketMMRRule:
        self.mmr_std_dev = value
        return self

    def with_override_mmr_data(self, value: bool) -> ModelsBucketMMRRule:
        self.override_mmr_data = value
        return self

    def with_use_bucket_mmr(self, value: bool) -> ModelsBucketMMRRule:
        self.use_bucket_mmr = value
        return self

    def with_use_flat_flex_step(self, value: bool) -> ModelsBucketMMRRule:
        self.use_flat_flex_step = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "disable_authority"):
            result["disable_authority"] = bool(self.disable_authority)
        elif include_empty:
            result["disable_authority"] = False
        if hasattr(self, "flex_authority_count"):
            result["flex_authority_count"] = int(self.flex_authority_count)
        elif include_empty:
            result["flex_authority_count"] = 0
        if hasattr(self, "flex_flat_step_range"):
            result["flex_flat_step_range"] = int(self.flex_flat_step_range)
        elif include_empty:
            result["flex_flat_step_range"] = 0
        if hasattr(self, "flex_immunity_count"):
            result["flex_immunity_count"] = int(self.flex_immunity_count)
        elif include_empty:
            result["flex_immunity_count"] = 0
        if hasattr(self, "flex_range_max"):
            result["flex_range_max"] = int(self.flex_range_max)
        elif include_empty:
            result["flex_range_max"] = 0
        if hasattr(self, "flex_rate_ms"):
            result["flex_rate_ms"] = int(self.flex_rate_ms)
        elif include_empty:
            result["flex_rate_ms"] = 0
        if hasattr(self, "flex_step_max"):
            result["flex_step_max"] = int(self.flex_step_max)
        elif include_empty:
            result["flex_step_max"] = 0
        if hasattr(self, "force_authority_match"):
            result["force_authority_match"] = bool(self.force_authority_match)
        elif include_empty:
            result["force_authority_match"] = False
        if hasattr(self, "initial_step_range"):
            result["initial_step_range"] = int(self.initial_step_range)
        elif include_empty:
            result["initial_step_range"] = 0
        if hasattr(self, "mmr_max"):
            result["mmr_max"] = int(self.mmr_max)
        elif include_empty:
            result["mmr_max"] = 0
        if hasattr(self, "mmr_mean"):
            result["mmr_mean"] = int(self.mmr_mean)
        elif include_empty:
            result["mmr_mean"] = 0
        if hasattr(self, "mmr_min"):
            result["mmr_min"] = int(self.mmr_min)
        elif include_empty:
            result["mmr_min"] = 0
        if hasattr(self, "mmr_std_dev"):
            result["mmr_std_dev"] = int(self.mmr_std_dev)
        elif include_empty:
            result["mmr_std_dev"] = 0
        if hasattr(self, "override_mmr_data"):
            result["override_mmr_data"] = bool(self.override_mmr_data)
        elif include_empty:
            result["override_mmr_data"] = False
        if hasattr(self, "use_bucket_mmr"):
            result["use_bucket_mmr"] = bool(self.use_bucket_mmr)
        elif include_empty:
            result["use_bucket_mmr"] = False
        if hasattr(self, "use_flat_flex_step"):
            result["use_flat_flex_step"] = bool(self.use_flat_flex_step)
        elif include_empty:
            result["use_flat_flex_step"] = False
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        disable_authority: bool,
        flex_authority_count: int,
        flex_flat_step_range: int,
        flex_immunity_count: int,
        flex_range_max: int,
        flex_rate_ms: int,
        flex_step_max: int,
        force_authority_match: bool,
        initial_step_range: int,
        mmr_max: int,
        mmr_mean: int,
        mmr_min: int,
        mmr_std_dev: int,
        override_mmr_data: bool,
        use_bucket_mmr: bool,
        use_flat_flex_step: bool,
        **kwargs,
    ) -> ModelsBucketMMRRule:
        instance = cls()
        instance.disable_authority = disable_authority
        instance.flex_authority_count = flex_authority_count
        instance.flex_flat_step_range = flex_flat_step_range
        instance.flex_immunity_count = flex_immunity_count
        instance.flex_range_max = flex_range_max
        instance.flex_rate_ms = flex_rate_ms
        instance.flex_step_max = flex_step_max
        instance.force_authority_match = force_authority_match
        instance.initial_step_range = initial_step_range
        instance.mmr_max = mmr_max
        instance.mmr_mean = mmr_mean
        instance.mmr_min = mmr_min
        instance.mmr_std_dev = mmr_std_dev
        instance.override_mmr_data = override_mmr_data
        instance.use_bucket_mmr = use_bucket_mmr
        instance.use_flat_flex_step = use_flat_flex_step
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ModelsBucketMMRRule:
        instance = cls()
        if not dict_:
            return instance
        if "disable_authority" in dict_ and dict_["disable_authority"] is not None:
            instance.disable_authority = bool(dict_["disable_authority"])
        elif include_empty:
            instance.disable_authority = False
        if (
            "flex_authority_count" in dict_
            and dict_["flex_authority_count"] is not None
        ):
            instance.flex_authority_count = int(dict_["flex_authority_count"])
        elif include_empty:
            instance.flex_authority_count = 0
        if (
            "flex_flat_step_range" in dict_
            and dict_["flex_flat_step_range"] is not None
        ):
            instance.flex_flat_step_range = int(dict_["flex_flat_step_range"])
        elif include_empty:
            instance.flex_flat_step_range = 0
        if "flex_immunity_count" in dict_ and dict_["flex_immunity_count"] is not None:
            instance.flex_immunity_count = int(dict_["flex_immunity_count"])
        elif include_empty:
            instance.flex_immunity_count = 0
        if "flex_range_max" in dict_ and dict_["flex_range_max"] is not None:
            instance.flex_range_max = int(dict_["flex_range_max"])
        elif include_empty:
            instance.flex_range_max = 0
        if "flex_rate_ms" in dict_ and dict_["flex_rate_ms"] is not None:
            instance.flex_rate_ms = int(dict_["flex_rate_ms"])
        elif include_empty:
            instance.flex_rate_ms = 0
        if "flex_step_max" in dict_ and dict_["flex_step_max"] is not None:
            instance.flex_step_max = int(dict_["flex_step_max"])
        elif include_empty:
            instance.flex_step_max = 0
        if (
            "force_authority_match" in dict_
            and dict_["force_authority_match"] is not None
        ):
            instance.force_authority_match = bool(dict_["force_authority_match"])
        elif include_empty:
            instance.force_authority_match = False
        if "initial_step_range" in dict_ and dict_["initial_step_range"] is not None:
            instance.initial_step_range = int(dict_["initial_step_range"])
        elif include_empty:
            instance.initial_step_range = 0
        if "mmr_max" in dict_ and dict_["mmr_max"] is not None:
            instance.mmr_max = int(dict_["mmr_max"])
        elif include_empty:
            instance.mmr_max = 0
        if "mmr_mean" in dict_ and dict_["mmr_mean"] is not None:
            instance.mmr_mean = int(dict_["mmr_mean"])
        elif include_empty:
            instance.mmr_mean = 0
        if "mmr_min" in dict_ and dict_["mmr_min"] is not None:
            instance.mmr_min = int(dict_["mmr_min"])
        elif include_empty:
            instance.mmr_min = 0
        if "mmr_std_dev" in dict_ and dict_["mmr_std_dev"] is not None:
            instance.mmr_std_dev = int(dict_["mmr_std_dev"])
        elif include_empty:
            instance.mmr_std_dev = 0
        if "override_mmr_data" in dict_ and dict_["override_mmr_data"] is not None:
            instance.override_mmr_data = bool(dict_["override_mmr_data"])
        elif include_empty:
            instance.override_mmr_data = False
        if "use_bucket_mmr" in dict_ and dict_["use_bucket_mmr"] is not None:
            instance.use_bucket_mmr = bool(dict_["use_bucket_mmr"])
        elif include_empty:
            instance.use_bucket_mmr = False
        if "use_flat_flex_step" in dict_ and dict_["use_flat_flex_step"] is not None:
            instance.use_flat_flex_step = bool(dict_["use_flat_flex_step"])
        elif include_empty:
            instance.use_flat_flex_step = False
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ModelsBucketMMRRule]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ModelsBucketMMRRule]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ModelsBucketMMRRule, List[ModelsBucketMMRRule], Dict[Any, ModelsBucketMMRRule]
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
            "disable_authority": "disable_authority",
            "flex_authority_count": "flex_authority_count",
            "flex_flat_step_range": "flex_flat_step_range",
            "flex_immunity_count": "flex_immunity_count",
            "flex_range_max": "flex_range_max",
            "flex_rate_ms": "flex_rate_ms",
            "flex_step_max": "flex_step_max",
            "force_authority_match": "force_authority_match",
            "initial_step_range": "initial_step_range",
            "mmr_max": "mmr_max",
            "mmr_mean": "mmr_mean",
            "mmr_min": "mmr_min",
            "mmr_std_dev": "mmr_std_dev",
            "override_mmr_data": "override_mmr_data",
            "use_bucket_mmr": "use_bucket_mmr",
            "use_flat_flex_step": "use_flat_flex_step",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "disable_authority": True,
            "flex_authority_count": True,
            "flex_flat_step_range": True,
            "flex_immunity_count": True,
            "flex_range_max": True,
            "flex_rate_ms": True,
            "flex_step_max": True,
            "force_authority_match": True,
            "initial_step_range": True,
            "mmr_max": True,
            "mmr_mean": True,
            "mmr_min": True,
            "mmr_std_dev": True,
            "override_mmr_data": True,
            "use_bucket_mmr": True,
            "use_flat_flex_step": True,
        }

    # endregion static methods
