# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: ags_py_codegen

# AccelByte Gaming Services Session Service (2.8.2)

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


class ModelsNativeSessionSetting(Model):
    """Models native session setting (models.NativeSessionSetting)

    Properties:
        psn_service_label: (PSNServiceLabel) REQUIRED int

        session_title: (SessionTitle) REQUIRED str

        xbox_service_config_id: (XboxServiceConfigID) REQUIRED str

        xbox_session_template_name: (XboxSessionTemplateName) REQUIRED str
    """

    # region fields

    psn_service_label: int  # REQUIRED
    session_title: str  # REQUIRED
    xbox_service_config_id: str  # REQUIRED
    xbox_session_template_name: str  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_psn_service_label(self, value: int) -> ModelsNativeSessionSetting:
        self.psn_service_label = value
        return self

    def with_session_title(self, value: str) -> ModelsNativeSessionSetting:
        self.session_title = value
        return self

    def with_xbox_service_config_id(self, value: str) -> ModelsNativeSessionSetting:
        self.xbox_service_config_id = value
        return self

    def with_xbox_session_template_name(self, value: str) -> ModelsNativeSessionSetting:
        self.xbox_session_template_name = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "psn_service_label"):
            result["PSNServiceLabel"] = int(self.psn_service_label)
        elif include_empty:
            result["PSNServiceLabel"] = 0
        if hasattr(self, "session_title"):
            result["SessionTitle"] = str(self.session_title)
        elif include_empty:
            result["SessionTitle"] = ""
        if hasattr(self, "xbox_service_config_id"):
            result["XboxServiceConfigID"] = str(self.xbox_service_config_id)
        elif include_empty:
            result["XboxServiceConfigID"] = ""
        if hasattr(self, "xbox_session_template_name"):
            result["XboxSessionTemplateName"] = str(self.xbox_session_template_name)
        elif include_empty:
            result["XboxSessionTemplateName"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        psn_service_label: int,
        session_title: str,
        xbox_service_config_id: str,
        xbox_session_template_name: str,
        **kwargs,
    ) -> ModelsNativeSessionSetting:
        instance = cls()
        instance.psn_service_label = psn_service_label
        instance.session_title = session_title
        instance.xbox_service_config_id = xbox_service_config_id
        instance.xbox_session_template_name = xbox_session_template_name
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ModelsNativeSessionSetting:
        instance = cls()
        if not dict_:
            return instance
        if "PSNServiceLabel" in dict_ and dict_["PSNServiceLabel"] is not None:
            instance.psn_service_label = int(dict_["PSNServiceLabel"])
        elif include_empty:
            instance.psn_service_label = 0
        if "SessionTitle" in dict_ and dict_["SessionTitle"] is not None:
            instance.session_title = str(dict_["SessionTitle"])
        elif include_empty:
            instance.session_title = ""
        if "XboxServiceConfigID" in dict_ and dict_["XboxServiceConfigID"] is not None:
            instance.xbox_service_config_id = str(dict_["XboxServiceConfigID"])
        elif include_empty:
            instance.xbox_service_config_id = ""
        if (
            "XboxSessionTemplateName" in dict_
            and dict_["XboxSessionTemplateName"] is not None
        ):
            instance.xbox_session_template_name = str(dict_["XboxSessionTemplateName"])
        elif include_empty:
            instance.xbox_session_template_name = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ModelsNativeSessionSetting]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ModelsNativeSessionSetting]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ModelsNativeSessionSetting,
        List[ModelsNativeSessionSetting],
        Dict[Any, ModelsNativeSessionSetting],
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
            "PSNServiceLabel": "psn_service_label",
            "SessionTitle": "session_title",
            "XboxServiceConfigID": "xbox_service_config_id",
            "XboxSessionTemplateName": "xbox_session_template_name",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "PSNServiceLabel": True,
            "SessionTitle": True,
            "XboxServiceConfigID": True,
            "XboxSessionTemplateName": True,
        }

    # endregion static methods
