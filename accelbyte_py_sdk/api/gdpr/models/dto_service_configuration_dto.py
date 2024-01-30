# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: ags_py_codegen

# AccelByte Gaming Services Gdpr Service

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

from ..models.dto_extend_config_dto import DtoExtendConfigDTO
from ..models.dto_service_config_dto import DtoServiceConfigDTO


class TypeEnum(StrEnum):
    EXTEND = "EXTEND"
    SERVICE = "SERVICE"


class DtoServiceConfigurationDTO(Model):
    """Dto service configuration DTO (dto.ServiceConfigurationDTO)

    Properties:
        id_: (id) REQUIRED str

        type_: (type) REQUIRED Union[str, TypeEnum]

        extend_config: (extendConfig) OPTIONAL DtoExtendConfigDTO

        service_config: (serviceConfig) OPTIONAL DtoServiceConfigDTO
    """

    # region fields

    id_: str  # REQUIRED
    type_: Union[str, TypeEnum]  # REQUIRED
    extend_config: DtoExtendConfigDTO  # OPTIONAL
    service_config: DtoServiceConfigDTO  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_id(self, value: str) -> DtoServiceConfigurationDTO:
        self.id_ = value
        return self

    def with_type(self, value: Union[str, TypeEnum]) -> DtoServiceConfigurationDTO:
        self.type_ = value
        return self

    def with_extend_config(
        self, value: DtoExtendConfigDTO
    ) -> DtoServiceConfigurationDTO:
        self.extend_config = value
        return self

    def with_service_config(
        self, value: DtoServiceConfigDTO
    ) -> DtoServiceConfigurationDTO:
        self.service_config = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "id_"):
            result["id"] = str(self.id_)
        elif include_empty:
            result["id"] = ""
        if hasattr(self, "type_"):
            result["type"] = str(self.type_)
        elif include_empty:
            result["type"] = Union[str, TypeEnum]()
        if hasattr(self, "extend_config"):
            result["extendConfig"] = self.extend_config.to_dict(
                include_empty=include_empty
            )
        elif include_empty:
            result["extendConfig"] = DtoExtendConfigDTO()
        if hasattr(self, "service_config"):
            result["serviceConfig"] = self.service_config.to_dict(
                include_empty=include_empty
            )
        elif include_empty:
            result["serviceConfig"] = DtoServiceConfigDTO()
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        id_: str,
        type_: Union[str, TypeEnum],
        extend_config: Optional[DtoExtendConfigDTO] = None,
        service_config: Optional[DtoServiceConfigDTO] = None,
        **kwargs,
    ) -> DtoServiceConfigurationDTO:
        instance = cls()
        instance.id_ = id_
        instance.type_ = type_
        if extend_config is not None:
            instance.extend_config = extend_config
        if service_config is not None:
            instance.service_config = service_config
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> DtoServiceConfigurationDTO:
        instance = cls()
        if not dict_:
            return instance
        if "id" in dict_ and dict_["id"] is not None:
            instance.id_ = str(dict_["id"])
        elif include_empty:
            instance.id_ = ""
        if "type" in dict_ and dict_["type"] is not None:
            instance.type_ = str(dict_["type"])
        elif include_empty:
            instance.type_ = Union[str, TypeEnum]()
        if "extendConfig" in dict_ and dict_["extendConfig"] is not None:
            instance.extend_config = DtoExtendConfigDTO.create_from_dict(
                dict_["extendConfig"], include_empty=include_empty
            )
        elif include_empty:
            instance.extend_config = DtoExtendConfigDTO()
        if "serviceConfig" in dict_ and dict_["serviceConfig"] is not None:
            instance.service_config = DtoServiceConfigDTO.create_from_dict(
                dict_["serviceConfig"], include_empty=include_empty
            )
        elif include_empty:
            instance.service_config = DtoServiceConfigDTO()
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, DtoServiceConfigurationDTO]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[DtoServiceConfigurationDTO]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        DtoServiceConfigurationDTO,
        List[DtoServiceConfigurationDTO],
        Dict[Any, DtoServiceConfigurationDTO],
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
            "id": "id_",
            "type": "type_",
            "extendConfig": "extend_config",
            "serviceConfig": "service_config",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "id": True,
            "type": True,
            "extendConfig": False,
            "serviceConfig": False,
        }

    @staticmethod
    def get_enum_map() -> Dict[str, List[Any]]:
        return {
            "type": ["EXTEND", "SERVICE"],
        }

    # endregion static methods
