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


class GeneratedGetAppReleaseV1Response(Model):
    """Generated get app release V1 response (generated.GetAppReleaseV1Response)

    Properties:
        deployment_id: (deploymentId) OPTIONAL str

        image_tag: (imageTag) OPTIONAL str

        release_date: (releaseDate) OPTIONAL str
    """

    # region fields

    deployment_id: str  # OPTIONAL
    image_tag: str  # OPTIONAL
    release_date: str  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_deployment_id(self, value: str) -> GeneratedGetAppReleaseV1Response:
        self.deployment_id = value
        return self

    def with_image_tag(self, value: str) -> GeneratedGetAppReleaseV1Response:
        self.image_tag = value
        return self

    def with_release_date(self, value: str) -> GeneratedGetAppReleaseV1Response:
        self.release_date = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "deployment_id"):
            result["deploymentId"] = str(self.deployment_id)
        elif include_empty:
            result["deploymentId"] = ""
        if hasattr(self, "image_tag"):
            result["imageTag"] = str(self.image_tag)
        elif include_empty:
            result["imageTag"] = ""
        if hasattr(self, "release_date"):
            result["releaseDate"] = str(self.release_date)
        elif include_empty:
            result["releaseDate"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        deployment_id: Optional[str] = None,
        image_tag: Optional[str] = None,
        release_date: Optional[str] = None,
        **kwargs,
    ) -> GeneratedGetAppReleaseV1Response:
        instance = cls()
        if deployment_id is not None:
            instance.deployment_id = deployment_id
        if image_tag is not None:
            instance.image_tag = image_tag
        if release_date is not None:
            instance.release_date = release_date
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> GeneratedGetAppReleaseV1Response:
        instance = cls()
        if not dict_:
            return instance
        if "deploymentId" in dict_ and dict_["deploymentId"] is not None:
            instance.deployment_id = str(dict_["deploymentId"])
        elif include_empty:
            instance.deployment_id = ""
        if "imageTag" in dict_ and dict_["imageTag"] is not None:
            instance.image_tag = str(dict_["imageTag"])
        elif include_empty:
            instance.image_tag = ""
        if "releaseDate" in dict_ and dict_["releaseDate"] is not None:
            instance.release_date = str(dict_["releaseDate"])
        elif include_empty:
            instance.release_date = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, GeneratedGetAppReleaseV1Response]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[GeneratedGetAppReleaseV1Response]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        GeneratedGetAppReleaseV1Response,
        List[GeneratedGetAppReleaseV1Response],
        Dict[Any, GeneratedGetAppReleaseV1Response],
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
            "deploymentId": "deployment_id",
            "imageTag": "image_tag",
            "releaseDate": "release_date",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "deploymentId": False,
            "imageTag": False,
            "releaseDate": False,
        }

    # endregion static methods
