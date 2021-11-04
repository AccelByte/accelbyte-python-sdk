# justice-dsm-controller-service (2.6.0)

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

from ..models.models_image_record import ModelsImageRecord


class ModelsGetImageDetailResponse(Model):
    """Models get image detail response (models.GetImageDetailResponse)

    Properties:
        data: (data) REQUIRED ModelsImageRecord
    """

    # region fields

    data: ModelsImageRecord                                                                        # REQUIRED

    # endregion fields

    # region with_x methods

    def with_data(self, value: ModelsImageRecord) -> ModelsGetImageDetailResponse:
        self.data = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "data"):
            result["data"] = self.data.to_dict(include_empty=include_empty)
        elif include_empty:
            result["data"] = ModelsImageRecord()
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        data: ModelsImageRecord,
    ) -> ModelsGetImageDetailResponse:
        instance = cls()
        instance.data = data
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> ModelsGetImageDetailResponse:
        instance = cls()
        if not dict_:
            return instance
        if "data" in dict_ and dict_["data"] is not None:
            instance.data = ModelsImageRecord.create_from_dict(dict_["data"], include_empty=include_empty)
        elif include_empty:
            instance.data = ModelsImageRecord()
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "data": "data",
        }

    # endregion static methods
