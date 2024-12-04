# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: ags_py_codegen

# Custom Service Manager

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


class ApimodelGetListOfConfigurationsV2DataItem(Model):
    """Apimodel get list of configurations V2 data item (apimodel.GetListOfConfigurationsV2DataItem)

    Properties:
        config_id: (configId) REQUIRED str

        config_name: (configName) REQUIRED str

        config_type: (configType) REQUIRED str

        deployment_status: (deploymentStatus) REQUIRED str

        is_hidden: (isHidden) REQUIRED bool

        value: (value) REQUIRED str

        apply_mask: (applyMask) OPTIONAL bool

        description: (description) OPTIONAL str

        editable: (editable) OPTIONAL bool

        source: (source) OPTIONAL str
    """

    # region fields

    config_id: str  # REQUIRED
    config_name: str  # REQUIRED
    config_type: str  # REQUIRED
    deployment_status: str  # REQUIRED
    is_hidden: bool  # REQUIRED
    value: str  # REQUIRED
    apply_mask: bool  # OPTIONAL
    description: str  # OPTIONAL
    editable: bool  # OPTIONAL
    source: str  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_config_id(self, value: str) -> ApimodelGetListOfConfigurationsV2DataItem:
        self.config_id = value
        return self

    def with_config_name(self, value: str) -> ApimodelGetListOfConfigurationsV2DataItem:
        self.config_name = value
        return self

    def with_config_type(self, value: str) -> ApimodelGetListOfConfigurationsV2DataItem:
        self.config_type = value
        return self

    def with_deployment_status(
        self, value: str
    ) -> ApimodelGetListOfConfigurationsV2DataItem:
        self.deployment_status = value
        return self

    def with_is_hidden(self, value: bool) -> ApimodelGetListOfConfigurationsV2DataItem:
        self.is_hidden = value
        return self

    def with_value(self, value: str) -> ApimodelGetListOfConfigurationsV2DataItem:
        self.value = value
        return self

    def with_apply_mask(self, value: bool) -> ApimodelGetListOfConfigurationsV2DataItem:
        self.apply_mask = value
        return self

    def with_description(self, value: str) -> ApimodelGetListOfConfigurationsV2DataItem:
        self.description = value
        return self

    def with_editable(self, value: bool) -> ApimodelGetListOfConfigurationsV2DataItem:
        self.editable = value
        return self

    def with_source(self, value: str) -> ApimodelGetListOfConfigurationsV2DataItem:
        self.source = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "config_id"):
            result["configId"] = str(self.config_id)
        elif include_empty:
            result["configId"] = ""
        if hasattr(self, "config_name"):
            result["configName"] = str(self.config_name)
        elif include_empty:
            result["configName"] = ""
        if hasattr(self, "config_type"):
            result["configType"] = str(self.config_type)
        elif include_empty:
            result["configType"] = ""
        if hasattr(self, "deployment_status"):
            result["deploymentStatus"] = str(self.deployment_status)
        elif include_empty:
            result["deploymentStatus"] = ""
        if hasattr(self, "is_hidden"):
            result["isHidden"] = bool(self.is_hidden)
        elif include_empty:
            result["isHidden"] = False
        if hasattr(self, "value"):
            result["value"] = str(self.value)
        elif include_empty:
            result["value"] = ""
        if hasattr(self, "apply_mask"):
            result["applyMask"] = bool(self.apply_mask)
        elif include_empty:
            result["applyMask"] = False
        if hasattr(self, "description"):
            result["description"] = str(self.description)
        elif include_empty:
            result["description"] = ""
        if hasattr(self, "editable"):
            result["editable"] = bool(self.editable)
        elif include_empty:
            result["editable"] = False
        if hasattr(self, "source"):
            result["source"] = str(self.source)
        elif include_empty:
            result["source"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        config_id: str,
        config_name: str,
        config_type: str,
        deployment_status: str,
        is_hidden: bool,
        value: str,
        apply_mask: Optional[bool] = None,
        description: Optional[str] = None,
        editable: Optional[bool] = None,
        source: Optional[str] = None,
        **kwargs,
    ) -> ApimodelGetListOfConfigurationsV2DataItem:
        instance = cls()
        instance.config_id = config_id
        instance.config_name = config_name
        instance.config_type = config_type
        instance.deployment_status = deployment_status
        instance.is_hidden = is_hidden
        instance.value = value
        if apply_mask is not None:
            instance.apply_mask = apply_mask
        if description is not None:
            instance.description = description
        if editable is not None:
            instance.editable = editable
        if source is not None:
            instance.source = source
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ApimodelGetListOfConfigurationsV2DataItem:
        instance = cls()
        if not dict_:
            return instance
        if "configId" in dict_ and dict_["configId"] is not None:
            instance.config_id = str(dict_["configId"])
        elif include_empty:
            instance.config_id = ""
        if "configName" in dict_ and dict_["configName"] is not None:
            instance.config_name = str(dict_["configName"])
        elif include_empty:
            instance.config_name = ""
        if "configType" in dict_ and dict_["configType"] is not None:
            instance.config_type = str(dict_["configType"])
        elif include_empty:
            instance.config_type = ""
        if "deploymentStatus" in dict_ and dict_["deploymentStatus"] is not None:
            instance.deployment_status = str(dict_["deploymentStatus"])
        elif include_empty:
            instance.deployment_status = ""
        if "isHidden" in dict_ and dict_["isHidden"] is not None:
            instance.is_hidden = bool(dict_["isHidden"])
        elif include_empty:
            instance.is_hidden = False
        if "value" in dict_ and dict_["value"] is not None:
            instance.value = str(dict_["value"])
        elif include_empty:
            instance.value = ""
        if "applyMask" in dict_ and dict_["applyMask"] is not None:
            instance.apply_mask = bool(dict_["applyMask"])
        elif include_empty:
            instance.apply_mask = False
        if "description" in dict_ and dict_["description"] is not None:
            instance.description = str(dict_["description"])
        elif include_empty:
            instance.description = ""
        if "editable" in dict_ and dict_["editable"] is not None:
            instance.editable = bool(dict_["editable"])
        elif include_empty:
            instance.editable = False
        if "source" in dict_ and dict_["source"] is not None:
            instance.source = str(dict_["source"])
        elif include_empty:
            instance.source = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ApimodelGetListOfConfigurationsV2DataItem]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ApimodelGetListOfConfigurationsV2DataItem]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ApimodelGetListOfConfigurationsV2DataItem,
        List[ApimodelGetListOfConfigurationsV2DataItem],
        Dict[Any, ApimodelGetListOfConfigurationsV2DataItem],
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
            "configId": "config_id",
            "configName": "config_name",
            "configType": "config_type",
            "deploymentStatus": "deployment_status",
            "isHidden": "is_hidden",
            "value": "value",
            "applyMask": "apply_mask",
            "description": "description",
            "editable": "editable",
            "source": "source",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "configId": True,
            "configName": True,
            "configType": True,
            "deploymentStatus": True,
            "isHidden": True,
            "value": True,
            "applyMask": False,
            "description": False,
            "editable": False,
            "source": False,
        }

    # endregion static methods
