# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: accelbyte_cloud_py_codegen

# AccelByte Cloud Iam Service (5.27.2)

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


class OauthcommonUserRevocationListRecord(Model):
    """Oauthcommon user revocation list record (oauthcommon.UserRevocationListRecord)

    Properties:
        id_: (id) REQUIRED str

        revoked_at: (revoked_at) REQUIRED str
    """

    # region fields

    id_: str  # REQUIRED
    revoked_at: str  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_id(self, value: str) -> OauthcommonUserRevocationListRecord:
        self.id_ = value
        return self

    def with_revoked_at(self, value: str) -> OauthcommonUserRevocationListRecord:
        self.revoked_at = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "id_"):
            result["id"] = str(self.id_)
        elif include_empty:
            result["id"] = ""
        if hasattr(self, "revoked_at"):
            result["revoked_at"] = str(self.revoked_at)
        elif include_empty:
            result["revoked_at"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        id_: str,
        revoked_at: str,
    ) -> OauthcommonUserRevocationListRecord:
        instance = cls()
        instance.id_ = id_
        instance.revoked_at = revoked_at
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> OauthcommonUserRevocationListRecord:
        instance = cls()
        if not dict_:
            return instance
        if "id" in dict_ and dict_["id"] is not None:
            instance.id_ = str(dict_["id"])
        elif include_empty:
            instance.id_ = ""
        if "revoked_at" in dict_ and dict_["revoked_at"] is not None:
            instance.revoked_at = str(dict_["revoked_at"])
        elif include_empty:
            instance.revoked_at = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, OauthcommonUserRevocationListRecord]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[OauthcommonUserRevocationListRecord]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        OauthcommonUserRevocationListRecord,
        List[OauthcommonUserRevocationListRecord],
        Dict[Any, OauthcommonUserRevocationListRecord],
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
            "revoked_at": "revoked_at",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "id": True,
            "revoked_at": True,
        }

    # endregion static methods
