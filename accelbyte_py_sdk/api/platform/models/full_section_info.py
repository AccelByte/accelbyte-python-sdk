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
from ..models.item_naming import ItemNaming
from ..models.localization import Localization
from ..models.section_item import SectionItem


class RotationTypeEnum(StrEnum):
    CUSTOM = "CUSTOM"
    FIXED_PERIOD = "FIXED_PERIOD"
    NONE = "NONE"


class FullSectionInfo(Model):
    """Full section info (FullSectionInfo)

    Properties:
        active: (active) REQUIRED bool

        created_at: (createdAt) REQUIRED str

        end_date: (endDate) REQUIRED str

        localizations: (localizations) REQUIRED Dict[str, Localization]

        name: (name) REQUIRED str

        namespace: (namespace) REQUIRED str

        section_id: (sectionId) REQUIRED str

        start_date: (startDate) REQUIRED str

        updated_at: (updatedAt) REQUIRED str

        view_id: (viewId) REQUIRED str

        view_name: (viewName) REQUIRED str

        display_order: (displayOrder) OPTIONAL int

        ext: (ext) OPTIONAL Dict[str, Any]

        fixed_period_rotation_config: (fixedPeriodRotationConfig) OPTIONAL FixedPeriodRotationConfig

        item_namings: (itemNamings) OPTIONAL List[ItemNaming]

        items: (items) OPTIONAL List[SectionItem]

        rotation_type: (rotationType) OPTIONAL Union[str, RotationTypeEnum]
    """

    # region fields

    active: bool  # REQUIRED
    created_at: str  # REQUIRED
    end_date: str  # REQUIRED
    localizations: Dict[str, Localization]  # REQUIRED
    name: str  # REQUIRED
    namespace: str  # REQUIRED
    section_id: str  # REQUIRED
    start_date: str  # REQUIRED
    updated_at: str  # REQUIRED
    view_id: str  # REQUIRED
    view_name: str  # REQUIRED
    display_order: int  # OPTIONAL
    ext: Dict[str, Any]  # OPTIONAL
    fixed_period_rotation_config: FixedPeriodRotationConfig  # OPTIONAL
    item_namings: List[ItemNaming]  # OPTIONAL
    items: List[SectionItem]  # OPTIONAL
    rotation_type: Union[str, RotationTypeEnum]  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_active(self, value: bool) -> FullSectionInfo:
        self.active = value
        return self

    def with_created_at(self, value: str) -> FullSectionInfo:
        self.created_at = value
        return self

    def with_end_date(self, value: str) -> FullSectionInfo:
        self.end_date = value
        return self

    def with_localizations(self, value: Dict[str, Localization]) -> FullSectionInfo:
        self.localizations = value
        return self

    def with_name(self, value: str) -> FullSectionInfo:
        self.name = value
        return self

    def with_namespace(self, value: str) -> FullSectionInfo:
        self.namespace = value
        return self

    def with_section_id(self, value: str) -> FullSectionInfo:
        self.section_id = value
        return self

    def with_start_date(self, value: str) -> FullSectionInfo:
        self.start_date = value
        return self

    def with_updated_at(self, value: str) -> FullSectionInfo:
        self.updated_at = value
        return self

    def with_view_id(self, value: str) -> FullSectionInfo:
        self.view_id = value
        return self

    def with_view_name(self, value: str) -> FullSectionInfo:
        self.view_name = value
        return self

    def with_display_order(self, value: int) -> FullSectionInfo:
        self.display_order = value
        return self

    def with_ext(self, value: Dict[str, Any]) -> FullSectionInfo:
        self.ext = value
        return self

    def with_fixed_period_rotation_config(
        self, value: FixedPeriodRotationConfig
    ) -> FullSectionInfo:
        self.fixed_period_rotation_config = value
        return self

    def with_item_namings(self, value: List[ItemNaming]) -> FullSectionInfo:
        self.item_namings = value
        return self

    def with_items(self, value: List[SectionItem]) -> FullSectionInfo:
        self.items = value
        return self

    def with_rotation_type(
        self, value: Union[str, RotationTypeEnum]
    ) -> FullSectionInfo:
        self.rotation_type = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "active"):
            result["active"] = bool(self.active)
        elif include_empty:
            result["active"] = False
        if hasattr(self, "created_at"):
            result["createdAt"] = str(self.created_at)
        elif include_empty:
            result["createdAt"] = ""
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
        if hasattr(self, "namespace"):
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = ""
        if hasattr(self, "section_id"):
            result["sectionId"] = str(self.section_id)
        elif include_empty:
            result["sectionId"] = ""
        if hasattr(self, "start_date"):
            result["startDate"] = str(self.start_date)
        elif include_empty:
            result["startDate"] = ""
        if hasattr(self, "updated_at"):
            result["updatedAt"] = str(self.updated_at)
        elif include_empty:
            result["updatedAt"] = ""
        if hasattr(self, "view_id"):
            result["viewId"] = str(self.view_id)
        elif include_empty:
            result["viewId"] = ""
        if hasattr(self, "view_name"):
            result["viewName"] = str(self.view_name)
        elif include_empty:
            result["viewName"] = ""
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
        if hasattr(self, "item_namings"):
            result["itemNamings"] = [
                i0.to_dict(include_empty=include_empty) for i0 in self.item_namings
            ]
        elif include_empty:
            result["itemNamings"] = []
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
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        active: bool,
        created_at: str,
        end_date: str,
        localizations: Dict[str, Localization],
        name: str,
        namespace: str,
        section_id: str,
        start_date: str,
        updated_at: str,
        view_id: str,
        view_name: str,
        display_order: Optional[int] = None,
        ext: Optional[Dict[str, Any]] = None,
        fixed_period_rotation_config: Optional[FixedPeriodRotationConfig] = None,
        item_namings: Optional[List[ItemNaming]] = None,
        items: Optional[List[SectionItem]] = None,
        rotation_type: Optional[Union[str, RotationTypeEnum]] = None,
    ) -> FullSectionInfo:
        instance = cls()
        instance.active = active
        instance.created_at = created_at
        instance.end_date = end_date
        instance.localizations = localizations
        instance.name = name
        instance.namespace = namespace
        instance.section_id = section_id
        instance.start_date = start_date
        instance.updated_at = updated_at
        instance.view_id = view_id
        instance.view_name = view_name
        if display_order is not None:
            instance.display_order = display_order
        if ext is not None:
            instance.ext = ext
        if fixed_period_rotation_config is not None:
            instance.fixed_period_rotation_config = fixed_period_rotation_config
        if item_namings is not None:
            instance.item_namings = item_namings
        if items is not None:
            instance.items = items
        if rotation_type is not None:
            instance.rotation_type = rotation_type
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> FullSectionInfo:
        instance = cls()
        if not dict_:
            return instance
        if "active" in dict_ and dict_["active"] is not None:
            instance.active = bool(dict_["active"])
        elif include_empty:
            instance.active = False
        if "createdAt" in dict_ and dict_["createdAt"] is not None:
            instance.created_at = str(dict_["createdAt"])
        elif include_empty:
            instance.created_at = ""
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
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = ""
        if "sectionId" in dict_ and dict_["sectionId"] is not None:
            instance.section_id = str(dict_["sectionId"])
        elif include_empty:
            instance.section_id = ""
        if "startDate" in dict_ and dict_["startDate"] is not None:
            instance.start_date = str(dict_["startDate"])
        elif include_empty:
            instance.start_date = ""
        if "updatedAt" in dict_ and dict_["updatedAt"] is not None:
            instance.updated_at = str(dict_["updatedAt"])
        elif include_empty:
            instance.updated_at = ""
        if "viewId" in dict_ and dict_["viewId"] is not None:
            instance.view_id = str(dict_["viewId"])
        elif include_empty:
            instance.view_id = ""
        if "viewName" in dict_ and dict_["viewName"] is not None:
            instance.view_name = str(dict_["viewName"])
        elif include_empty:
            instance.view_name = ""
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
        if "itemNamings" in dict_ and dict_["itemNamings"] is not None:
            instance.item_namings = [
                ItemNaming.create_from_dict(i0, include_empty=include_empty)
                for i0 in dict_["itemNamings"]
            ]
        elif include_empty:
            instance.item_namings = []
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
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, FullSectionInfo]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[FullSectionInfo]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[FullSectionInfo, List[FullSectionInfo], Dict[Any, FullSectionInfo]]:
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
            "active": "active",
            "createdAt": "created_at",
            "endDate": "end_date",
            "localizations": "localizations",
            "name": "name",
            "namespace": "namespace",
            "sectionId": "section_id",
            "startDate": "start_date",
            "updatedAt": "updated_at",
            "viewId": "view_id",
            "viewName": "view_name",
            "displayOrder": "display_order",
            "ext": "ext",
            "fixedPeriodRotationConfig": "fixed_period_rotation_config",
            "itemNamings": "item_namings",
            "items": "items",
            "rotationType": "rotation_type",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "active": True,
            "createdAt": True,
            "endDate": True,
            "localizations": True,
            "name": True,
            "namespace": True,
            "sectionId": True,
            "startDate": True,
            "updatedAt": True,
            "viewId": True,
            "viewName": True,
            "displayOrder": False,
            "ext": False,
            "fixedPeriodRotationConfig": False,
            "itemNamings": False,
            "items": False,
            "rotationType": False,
        }

    @staticmethod
    def get_enum_map() -> Dict[str, List[Any]]:
        return {
            "rotationType": ["CUSTOM", "FIXED_PERIOD", "NONE"],
        }

    # endregion static methods
