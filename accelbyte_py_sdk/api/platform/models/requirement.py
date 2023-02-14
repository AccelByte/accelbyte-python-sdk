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


class Requirement(Model):
    """Requirement (Requirement)

    Properties:
        label: (label) REQUIRED str

        additionals: (additionals) OPTIONAL str

        direct_x_version: (directXVersion) OPTIONAL str

        disk_space: (diskSpace) OPTIONAL str

        graphics: (graphics) OPTIONAL str

        os_version: (osVersion) OPTIONAL str

        processor: (processor) OPTIONAL str

        ram: (ram) OPTIONAL str

        sound_card: (soundCard) OPTIONAL str
    """

    # region fields

    label: str  # REQUIRED
    additionals: str  # OPTIONAL
    direct_x_version: str  # OPTIONAL
    disk_space: str  # OPTIONAL
    graphics: str  # OPTIONAL
    os_version: str  # OPTIONAL
    processor: str  # OPTIONAL
    ram: str  # OPTIONAL
    sound_card: str  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_label(self, value: str) -> Requirement:
        self.label = value
        return self

    def with_additionals(self, value: str) -> Requirement:
        self.additionals = value
        return self

    def with_direct_x_version(self, value: str) -> Requirement:
        self.direct_x_version = value
        return self

    def with_disk_space(self, value: str) -> Requirement:
        self.disk_space = value
        return self

    def with_graphics(self, value: str) -> Requirement:
        self.graphics = value
        return self

    def with_os_version(self, value: str) -> Requirement:
        self.os_version = value
        return self

    def with_processor(self, value: str) -> Requirement:
        self.processor = value
        return self

    def with_ram(self, value: str) -> Requirement:
        self.ram = value
        return self

    def with_sound_card(self, value: str) -> Requirement:
        self.sound_card = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "label"):
            result["label"] = str(self.label)
        elif include_empty:
            result["label"] = ""
        if hasattr(self, "additionals"):
            result["additionals"] = str(self.additionals)
        elif include_empty:
            result["additionals"] = ""
        if hasattr(self, "direct_x_version"):
            result["directXVersion"] = str(self.direct_x_version)
        elif include_empty:
            result["directXVersion"] = ""
        if hasattr(self, "disk_space"):
            result["diskSpace"] = str(self.disk_space)
        elif include_empty:
            result["diskSpace"] = ""
        if hasattr(self, "graphics"):
            result["graphics"] = str(self.graphics)
        elif include_empty:
            result["graphics"] = ""
        if hasattr(self, "os_version"):
            result["osVersion"] = str(self.os_version)
        elif include_empty:
            result["osVersion"] = ""
        if hasattr(self, "processor"):
            result["processor"] = str(self.processor)
        elif include_empty:
            result["processor"] = ""
        if hasattr(self, "ram"):
            result["ram"] = str(self.ram)
        elif include_empty:
            result["ram"] = ""
        if hasattr(self, "sound_card"):
            result["soundCard"] = str(self.sound_card)
        elif include_empty:
            result["soundCard"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        label: str,
        additionals: Optional[str] = None,
        direct_x_version: Optional[str] = None,
        disk_space: Optional[str] = None,
        graphics: Optional[str] = None,
        os_version: Optional[str] = None,
        processor: Optional[str] = None,
        ram: Optional[str] = None,
        sound_card: Optional[str] = None,
    ) -> Requirement:
        instance = cls()
        instance.label = label
        if additionals is not None:
            instance.additionals = additionals
        if direct_x_version is not None:
            instance.direct_x_version = direct_x_version
        if disk_space is not None:
            instance.disk_space = disk_space
        if graphics is not None:
            instance.graphics = graphics
        if os_version is not None:
            instance.os_version = os_version
        if processor is not None:
            instance.processor = processor
        if ram is not None:
            instance.ram = ram
        if sound_card is not None:
            instance.sound_card = sound_card
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> Requirement:
        instance = cls()
        if not dict_:
            return instance
        if "label" in dict_ and dict_["label"] is not None:
            instance.label = str(dict_["label"])
        elif include_empty:
            instance.label = ""
        if "additionals" in dict_ and dict_["additionals"] is not None:
            instance.additionals = str(dict_["additionals"])
        elif include_empty:
            instance.additionals = ""
        if "directXVersion" in dict_ and dict_["directXVersion"] is not None:
            instance.direct_x_version = str(dict_["directXVersion"])
        elif include_empty:
            instance.direct_x_version = ""
        if "diskSpace" in dict_ and dict_["diskSpace"] is not None:
            instance.disk_space = str(dict_["diskSpace"])
        elif include_empty:
            instance.disk_space = ""
        if "graphics" in dict_ and dict_["graphics"] is not None:
            instance.graphics = str(dict_["graphics"])
        elif include_empty:
            instance.graphics = ""
        if "osVersion" in dict_ and dict_["osVersion"] is not None:
            instance.os_version = str(dict_["osVersion"])
        elif include_empty:
            instance.os_version = ""
        if "processor" in dict_ and dict_["processor"] is not None:
            instance.processor = str(dict_["processor"])
        elif include_empty:
            instance.processor = ""
        if "ram" in dict_ and dict_["ram"] is not None:
            instance.ram = str(dict_["ram"])
        elif include_empty:
            instance.ram = ""
        if "soundCard" in dict_ and dict_["soundCard"] is not None:
            instance.sound_card = str(dict_["soundCard"])
        elif include_empty:
            instance.sound_card = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, Requirement]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[Requirement]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[Requirement, List[Requirement], Dict[Any, Requirement]]:
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
            "label": "label",
            "additionals": "additionals",
            "directXVersion": "direct_x_version",
            "diskSpace": "disk_space",
            "graphics": "graphics",
            "osVersion": "os_version",
            "processor": "processor",
            "ram": "ram",
            "soundCard": "sound_card",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "label": True,
            "additionals": False,
            "directXVersion": False,
            "diskSpace": False,
            "graphics": False,
            "osVersion": False,
            "processor": False,
            "ram": False,
            "soundCard": False,
        }

    # endregion static methods
