# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: accelbyte_cloud_py_codegen

# AccelByte Cloud Platform Service (4.17.0)

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


class RedeemHistoryInfo(Model):
    """Redeem history info (RedeemHistoryInfo)

    Properties:
        campaign_id: (campaignId) REQUIRED str

        code: (code) REQUIRED str

        created_at: (createdAt) REQUIRED str

        id_: (id) REQUIRED str

        namespace: (namespace) REQUIRED str

        updated_at: (updatedAt) REQUIRED str

        user_id: (userId) REQUIRED str

        order_no: (orderNo) OPTIONAL str

        redeemed_at: (redeemedAt) OPTIONAL str
    """

    # region fields

    campaign_id: str  # REQUIRED
    code: str  # REQUIRED
    created_at: str  # REQUIRED
    id_: str  # REQUIRED
    namespace: str  # REQUIRED
    updated_at: str  # REQUIRED
    user_id: str  # REQUIRED
    order_no: str  # OPTIONAL
    redeemed_at: str  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_campaign_id(self, value: str) -> RedeemHistoryInfo:
        self.campaign_id = value
        return self

    def with_code(self, value: str) -> RedeemHistoryInfo:
        self.code = value
        return self

    def with_created_at(self, value: str) -> RedeemHistoryInfo:
        self.created_at = value
        return self

    def with_id(self, value: str) -> RedeemHistoryInfo:
        self.id_ = value
        return self

    def with_namespace(self, value: str) -> RedeemHistoryInfo:
        self.namespace = value
        return self

    def with_updated_at(self, value: str) -> RedeemHistoryInfo:
        self.updated_at = value
        return self

    def with_user_id(self, value: str) -> RedeemHistoryInfo:
        self.user_id = value
        return self

    def with_order_no(self, value: str) -> RedeemHistoryInfo:
        self.order_no = value
        return self

    def with_redeemed_at(self, value: str) -> RedeemHistoryInfo:
        self.redeemed_at = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "campaign_id"):
            result["campaignId"] = str(self.campaign_id)
        elif include_empty:
            result["campaignId"] = ""
        if hasattr(self, "code"):
            result["code"] = str(self.code)
        elif include_empty:
            result["code"] = ""
        if hasattr(self, "created_at"):
            result["createdAt"] = str(self.created_at)
        elif include_empty:
            result["createdAt"] = ""
        if hasattr(self, "id_"):
            result["id"] = str(self.id_)
        elif include_empty:
            result["id"] = ""
        if hasattr(self, "namespace"):
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = ""
        if hasattr(self, "updated_at"):
            result["updatedAt"] = str(self.updated_at)
        elif include_empty:
            result["updatedAt"] = ""
        if hasattr(self, "user_id"):
            result["userId"] = str(self.user_id)
        elif include_empty:
            result["userId"] = ""
        if hasattr(self, "order_no"):
            result["orderNo"] = str(self.order_no)
        elif include_empty:
            result["orderNo"] = ""
        if hasattr(self, "redeemed_at"):
            result["redeemedAt"] = str(self.redeemed_at)
        elif include_empty:
            result["redeemedAt"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        campaign_id: str,
        code: str,
        created_at: str,
        id_: str,
        namespace: str,
        updated_at: str,
        user_id: str,
        order_no: Optional[str] = None,
        redeemed_at: Optional[str] = None,
    ) -> RedeemHistoryInfo:
        instance = cls()
        instance.campaign_id = campaign_id
        instance.code = code
        instance.created_at = created_at
        instance.id_ = id_
        instance.namespace = namespace
        instance.updated_at = updated_at
        instance.user_id = user_id
        if order_no is not None:
            instance.order_no = order_no
        if redeemed_at is not None:
            instance.redeemed_at = redeemed_at
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> RedeemHistoryInfo:
        instance = cls()
        if not dict_:
            return instance
        if "campaignId" in dict_ and dict_["campaignId"] is not None:
            instance.campaign_id = str(dict_["campaignId"])
        elif include_empty:
            instance.campaign_id = ""
        if "code" in dict_ and dict_["code"] is not None:
            instance.code = str(dict_["code"])
        elif include_empty:
            instance.code = ""
        if "createdAt" in dict_ and dict_["createdAt"] is not None:
            instance.created_at = str(dict_["createdAt"])
        elif include_empty:
            instance.created_at = ""
        if "id" in dict_ and dict_["id"] is not None:
            instance.id_ = str(dict_["id"])
        elif include_empty:
            instance.id_ = ""
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = ""
        if "updatedAt" in dict_ and dict_["updatedAt"] is not None:
            instance.updated_at = str(dict_["updatedAt"])
        elif include_empty:
            instance.updated_at = ""
        if "userId" in dict_ and dict_["userId"] is not None:
            instance.user_id = str(dict_["userId"])
        elif include_empty:
            instance.user_id = ""
        if "orderNo" in dict_ and dict_["orderNo"] is not None:
            instance.order_no = str(dict_["orderNo"])
        elif include_empty:
            instance.order_no = ""
        if "redeemedAt" in dict_ and dict_["redeemedAt"] is not None:
            instance.redeemed_at = str(dict_["redeemedAt"])
        elif include_empty:
            instance.redeemed_at = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, RedeemHistoryInfo]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[RedeemHistoryInfo]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        RedeemHistoryInfo, List[RedeemHistoryInfo], Dict[Any, RedeemHistoryInfo]
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
            "campaignId": "campaign_id",
            "code": "code",
            "createdAt": "created_at",
            "id": "id_",
            "namespace": "namespace",
            "updatedAt": "updated_at",
            "userId": "user_id",
            "orderNo": "order_no",
            "redeemedAt": "redeemed_at",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "campaignId": True,
            "code": True,
            "createdAt": True,
            "id": True,
            "namespace": True,
            "updatedAt": True,
            "userId": True,
            "orderNo": False,
            "redeemedAt": False,
        }

    # endregion static methods
