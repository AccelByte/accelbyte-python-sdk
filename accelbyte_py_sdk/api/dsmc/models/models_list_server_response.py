# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: accelbyte_cloud_py_codegen

# AccelByte Cloud Dsm Controller Service (3.10.1)

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

from ..models.models_paging_cursor import ModelsPagingCursor
from ..models.models_server import ModelsServer


class ModelsListServerResponse(Model):
    """Models list server response (models.ListServerResponse)

    Properties:
        paging: (paging) REQUIRED ModelsPagingCursor

        servers: (servers) REQUIRED List[ModelsServer]
    """

    # region fields

    paging: ModelsPagingCursor  # REQUIRED
    servers: List[ModelsServer]  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_paging(self, value: ModelsPagingCursor) -> ModelsListServerResponse:
        self.paging = value
        return self

    def with_servers(self, value: List[ModelsServer]) -> ModelsListServerResponse:
        self.servers = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "paging"):
            result["paging"] = self.paging.to_dict(include_empty=include_empty)
        elif include_empty:
            result["paging"] = ModelsPagingCursor()
        if hasattr(self, "servers"):
            result["servers"] = [
                i0.to_dict(include_empty=include_empty) for i0 in self.servers
            ]
        elif include_empty:
            result["servers"] = []
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        paging: ModelsPagingCursor,
        servers: List[ModelsServer],
    ) -> ModelsListServerResponse:
        instance = cls()
        instance.paging = paging
        instance.servers = servers
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ModelsListServerResponse:
        instance = cls()
        if not dict_:
            return instance
        if "paging" in dict_ and dict_["paging"] is not None:
            instance.paging = ModelsPagingCursor.create_from_dict(
                dict_["paging"], include_empty=include_empty
            )
        elif include_empty:
            instance.paging = ModelsPagingCursor()
        if "servers" in dict_ and dict_["servers"] is not None:
            instance.servers = [
                ModelsServer.create_from_dict(i0, include_empty=include_empty)
                for i0 in dict_["servers"]
            ]
        elif include_empty:
            instance.servers = []
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ModelsListServerResponse]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ModelsListServerResponse]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ModelsListServerResponse,
        List[ModelsListServerResponse],
        Dict[Any, ModelsListServerResponse],
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
            "paging": "paging",
            "servers": "servers",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "paging": True,
            "servers": True,
        }

    # endregion static methods
