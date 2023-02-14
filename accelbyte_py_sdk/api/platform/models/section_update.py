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

from ..models.fixed_period_rotation_config import FixedPeriodRotationConfig
from ..models.localization import Localization
from ..models.section_item import SectionItem


class RotationTypeEnum(StrEnum):
    CUSTOM = "CUSTOM"
    FIXED_PERIOD = "FIXED_PERIOD"
    NONE = "NONE"


class SectionUpdate(Model):
    """A DTO object for updating section API call. (SectionUpdate)

    Properties:
        end_date: (endDate) REQUIRED str

        localizations: (localizations) REQUIRED Dict[str, Localization]

        name: (name) REQUIRED str

        start_date: (startDate) REQUIRED str

        active: (active) OPTIONAL bool

        display_order: (displayOrder) OPTIONAL int

        ext: (ext) OPTIONAL Dict[str, Any]

        fixed_period_rotation_config: (fixedPeriodRotationConfig) OPTIONAL FixedPeriodRotationConfig

        items: (items) OPTIONAL List[SectionItem]

        rotation_type: (rotationType) OPTIONAL Union[str, RotationTypeEnum]

        view_id: (viewId) OPTIONAL str
    """

    # region fields

    end_date: str  # REQUIRED
    localizations: Dict[str, Localization]  # REQUIRED
    name: str  # REQUIRED
    start_date: str  # REQUIRED
    active: bool  # OPTIONAL
    display_order: int  # OPTIONAL
    ext: Dict[str, Any]  # OPTIONAL
    fixed_period_rotation_config: FixedPeriodRotationConfig  # OPTIONAL
    items: List[SectionItem]  # OPTIONAL
    rotation_type: Union[str, RotationTypeEnum]  # OPTIONAL
    view_id: str  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_end_date(self, value: str) -> SectionUpdate:
        self.end_date = value
        return self

    def with_localizations(self, value: Dict[str, Localization]) -> SectionUpdate:
        self.localizations = value
        return self

    def with_name(self, value: str) -> SectionUpdate:
        self.name = value
        return self

    def with_start_date(self, value: str) -> SectionUpdate:
        self.start_date = value
        return self

    def with_active(self, value: bool) -> SectionUpdate:
        self.active = value
        return self

    def with_display_order(self, value: int) -> SectionUpdate:
        self.display_order = value
        return self

    def with_ext(self, value: Dict[str, Any]) -> SectionUpdate:
        self.ext = value
        return self

    def with_fixed_period_rotation_config(
        self, value: FixedPeriodRotationConfig
    ) -> SectionUpdate:
        self.fixed_period_rotation_config = value
        return self

    def with_items(self, value: List[SectionItem]) -> SectionUpdate:
        self.items = value
        return self

    def with_rotation_type(self, value: Union[str, RotationTypeEnum]) -> SectionUpdate:
        self.rotation_type = value
        return self

    def with_view_id(self, value: str) -> SectionUpdate:
        self.view_id = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "end_date"):
            result["endDate"] = str(self.end_date)
        elif include_empty:
            result["endDate"] = ""
        if hasattr(self, "localizations"):
            result["localizations"] = {
                str(k0): v0.to_dict(include_empty=include_empty)
                for k0, v0 in self.localizations.items()
            }
        elif include_empty:
            result["localizations"] = {}
        if hasattr(self, "name"):
            result["name"] = str(self.name)
        elif include_empty:
            result["name"] = ""
        if hasattr(self, "start_date"):
            result["startDate"] = str(self.start_date)
        elif include_empty:
            result["startDate"] = ""
        if hasattr(self, "active"):
            result["active"] = bool(self.active)
        elif include_empty:
            result["active"] = False
        if hasattr(self, "display_order"):
            result["displayOrder"] = int(self.display_order)
        elif include_empty:
            result["displayOrder"] = 0
        if hasattr(self, "ext"):
            result["ext"] = {str(k0): v0 for k0, v0 in self.ext.items()}
        elif include_empty:
            result["ext"] = {}
        if hasattr(self, "fixed_period_rotation_config"):
            result[
                "fixedPeriodRotationConfig"
            ] = self.fixed_period_rotation_config.to_dict(include_empty=include_empty)
        elif include_empty:
            result["fixedPeriodRotationConfig"] = FixedPeriodRotationConfig()
        if hasattr(self, "items"):
            result["items"] = [
                i0.to_dict(include_empty=include_empty) for i0 in self.items
            ]
        elif include_empty:
            result["items"] = []
        if hasattr(self, "rotation_type"):
            result["rotationType"] = str(self.rotation_type)
        elif include_empty:
            result["rotationType"] = Union[str, RotationTypeEnum]()
        if hasattr(self, "view_id"):
            result["viewId"] = str(self.view_id)
        elif include_empty:
            result["viewId"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        end_date: str,
        localizations: Dict[str, Localization],
        name: str,
        start_date: str,
        active: Optional[bool] = None,
        display_order: Optional[int] = None,
        ext: Optional[Dict[str, Any]] = None,
        fixed_period_rotation_config: Optional[FixedPeriodRotationConfig] = None,
        items: Optional[List[SectionItem]] = None,
        rotation_type: Optional[Union[str, RotationTypeEnum]] = None,
        view_id: Optional[str] = None,
    ) -> SectionUpdate:
        instance = cls()
        instance.end_date = end_date
        instance.localizations = localizations
        instance.name = name
        instance.start_date = start_date
        if active is not None:
            instance.active = active
        if display_order is not None:
            instance.display_order = display_order
        if ext is not None:
            instance.ext = ext
        if fixed_period_rotation_config is not None:
            instance.fixed_period_rotation_config = fixed_period_rotation_config
        if items is not None:
            instance.items = items
        if rotation_type is not None:
            instance.rotation_type = rotation_type
        if view_id is not None:
            instance.view_id = view_id
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> SectionUpdate:
        instance = cls()
        if not dict_:
            return instance
        if "endDate" in dict_ and dict_["endDate"] is not None:
            instance.end_date = str(dict_["endDate"])
        elif include_empty:
            instance.end_date = ""
        if "localizations" in dict_ and dict_["localizations"] is not None:
            instance.localizations = {
                str(k0): Localization.create_from_dict(v0, include_empty=include_empty)
                for k0, v0 in dict_["localizations"].items()
            }
        elif include_empty:
            instance.localizations = {}
        if "name" in dict_ and dict_["name"] is not None:
            instance.name = str(dict_["name"])
        elif include_empty:
            instance.name = ""
        if "startDate" in dict_ and dict_["startDate"] is not None:
            instance.start_date = str(dict_["startDate"])
        elif include_empty:
            instance.start_date = ""
        if "active" in dict_ and dict_["active"] is not None:
            instance.active = bool(dict_["active"])
        elif include_empty:
            instance.active = False
        if "displayOrder" in dict_ and dict_["displayOrder"] is not None:
            instance.display_order = int(dict_["displayOrder"])
        elif include_empty:
            instance.display_order = 0
        if "ext" in dict_ and dict_["ext"] is not None:
            instance.ext = {str(k0): v0 for k0, v0 in dict_["ext"].items()}
        elif include_empty:
            instance.ext = {}
        if (
            "fixedPeriodRotationConfig" in dict_
            and dict_["fixedPeriodRotationConfig"] is not None
        ):
            instance.fixed_period_rotation_config = (
                FixedPeriodRotationConfig.create_from_dict(
                    dict_["fixedPeriodRotationConfig"], include_empty=include_empty
                )
            )
        elif include_empty:
            instance.fixed_period_rotation_config = FixedPeriodRotationConfig()
        if "items" in dict_ and dict_["items"] is not None:
            instance.items = [
                SectionItem.create_from_dict(i0, include_empty=include_empty)
                for i0 in dict_["items"]
            ]
        elif include_empty:
            instance.items = []
        if "rotationType" in dict_ and dict_["rotationType"] is not None:
            instance.rotation_type = str(dict_["rotationType"])
        elif include_empty:
            instance.rotation_type = Union[str, RotationTypeEnum]()
        if "viewId" in dict_ and dict_["viewId"] is not None:
            instance.view_id = str(dict_["viewId"])
        elif include_empty:
            instance.view_id = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, SectionUpdate]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[SectionUpdate]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[SectionUpdate, List[SectionUpdate], Dict[Any, SectionUpdate]]:
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
            "endDate": "end_date",
            "localizations": "localizations",
            "name": "name",
            "startDate": "start_date",
            "active": "active",
            "displayOrder": "display_order",
            "ext": "ext",
            "fixedPeriodRotationConfig": "fixed_period_rotation_config",
            "items": "items",
            "rotationType": "rotation_type",
            "viewId": "view_id",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "endDate": True,
            "localizations": True,
            "name": True,
            "startDate": True,
            "active": False,
            "displayOrder": False,
            "ext": False,
            "fixedPeriodRotationConfig": False,
            "items": False,
            "rotationType": False,
            "viewId": False,
        }

    @staticmethod
    def get_enum_map() -> Dict[str, List[Any]]:
        return {
            "rotationType": ["CUSTOM", "FIXED_PERIOD", "NONE"],
        }

    # endregion static methods
