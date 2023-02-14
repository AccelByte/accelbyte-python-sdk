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

from ..models.client_request_parameter import ClientRequestParameter
from ..models.consume_item import ConsumeItem
from ..models.request_history import RequestHistory


class IapTypeEnum(StrEnum):
    APPLE = "APPLE"
    EPICGAMES = "EPICGAMES"
    GOOGLE = "GOOGLE"
    PLAYSTATION = "PLAYSTATION"
    STADIA = "STADIA"
    STEAM = "STEAM"
    TWITCH = "TWITCH"
    XBOX = "XBOX"


class StatusEnum(StrEnum):
    FAIL = "FAIL"
    PENDING = "PENDING"
    SUCCESS = "SUCCESS"


class IAPConsumeHistoryInfo(Model):
    """IAP consume history info (IAPConsumeHistoryInfo)

    Properties:
        client_request_parameter: (clientRequestParameter) OPTIONAL ClientRequestParameter

        consume_items: (consumeItems) OPTIONAL List[ConsumeItem]

        iap_type: (iapType) OPTIONAL Union[str, IapTypeEnum]

        id_: (id) OPTIONAL str

        namespace: (namespace) OPTIONAL str

        request_body: (requestBody) OPTIONAL Dict[str, Any]

        request_histories: (requestHistories) OPTIONAL List[RequestHistory]

        request_url: (requestUrl) OPTIONAL str

        status: (status) OPTIONAL Union[str, StatusEnum]

        user_id: (userId) OPTIONAL str
    """

    # region fields

    client_request_parameter: ClientRequestParameter  # OPTIONAL
    consume_items: List[ConsumeItem]  # OPTIONAL
    iap_type: Union[str, IapTypeEnum]  # OPTIONAL
    id_: str  # OPTIONAL
    namespace: str  # OPTIONAL
    request_body: Dict[str, Any]  # OPTIONAL
    request_histories: List[RequestHistory]  # OPTIONAL
    request_url: str  # OPTIONAL
    status: Union[str, StatusEnum]  # OPTIONAL
    user_id: str  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_client_request_parameter(
        self, value: ClientRequestParameter
    ) -> IAPConsumeHistoryInfo:
        self.client_request_parameter = value
        return self

    def with_consume_items(self, value: List[ConsumeItem]) -> IAPConsumeHistoryInfo:
        self.consume_items = value
        return self

    def with_iap_type(self, value: Union[str, IapTypeEnum]) -> IAPConsumeHistoryInfo:
        self.iap_type = value
        return self

    def with_id(self, value: str) -> IAPConsumeHistoryInfo:
        self.id_ = value
        return self

    def with_namespace(self, value: str) -> IAPConsumeHistoryInfo:
        self.namespace = value
        return self

    def with_request_body(self, value: Dict[str, Any]) -> IAPConsumeHistoryInfo:
        self.request_body = value
        return self

    def with_request_histories(
        self, value: List[RequestHistory]
    ) -> IAPConsumeHistoryInfo:
        self.request_histories = value
        return self

    def with_request_url(self, value: str) -> IAPConsumeHistoryInfo:
        self.request_url = value
        return self

    def with_status(self, value: Union[str, StatusEnum]) -> IAPConsumeHistoryInfo:
        self.status = value
        return self

    def with_user_id(self, value: str) -> IAPConsumeHistoryInfo:
        self.user_id = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "client_request_parameter"):
            result["clientRequestParameter"] = self.client_request_parameter.to_dict(
                include_empty=include_empty
            )
        elif include_empty:
            result["clientRequestParameter"] = ClientRequestParameter()
        if hasattr(self, "consume_items"):
            result["consumeItems"] = [
                i0.to_dict(include_empty=include_empty) for i0 in self.consume_items
            ]
        elif include_empty:
            result["consumeItems"] = []
        if hasattr(self, "iap_type"):
            result["iapType"] = str(self.iap_type)
        elif include_empty:
            result["iapType"] = Union[str, IapTypeEnum]()
        if hasattr(self, "id_"):
            result["id"] = str(self.id_)
        elif include_empty:
            result["id"] = ""
        if hasattr(self, "namespace"):
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = ""
        if hasattr(self, "request_body"):
            result["requestBody"] = {
                str(k0): v0 for k0, v0 in self.request_body.items()
            }
        elif include_empty:
            result["requestBody"] = {}
        if hasattr(self, "request_histories"):
            result["requestHistories"] = [
                i0.to_dict(include_empty=include_empty) for i0 in self.request_histories
            ]
        elif include_empty:
            result["requestHistories"] = []
        if hasattr(self, "request_url"):
            result["requestUrl"] = str(self.request_url)
        elif include_empty:
            result["requestUrl"] = ""
        if hasattr(self, "status"):
            result["status"] = str(self.status)
        elif include_empty:
            result["status"] = Union[str, StatusEnum]()
        if hasattr(self, "user_id"):
            result["userId"] = str(self.user_id)
        elif include_empty:
            result["userId"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        client_request_parameter: Optional[ClientRequestParameter] = None,
        consume_items: Optional[List[ConsumeItem]] = None,
        iap_type: Optional[Union[str, IapTypeEnum]] = None,
        id_: Optional[str] = None,
        namespace: Optional[str] = None,
        request_body: Optional[Dict[str, Any]] = None,
        request_histories: Optional[List[RequestHistory]] = None,
        request_url: Optional[str] = None,
        status: Optional[Union[str, StatusEnum]] = None,
        user_id: Optional[str] = None,
    ) -> IAPConsumeHistoryInfo:
        instance = cls()
        if client_request_parameter is not None:
            instance.client_request_parameter = client_request_parameter
        if consume_items is not None:
            instance.consume_items = consume_items
        if iap_type is not None:
            instance.iap_type = iap_type
        if id_ is not None:
            instance.id_ = id_
        if namespace is not None:
            instance.namespace = namespace
        if request_body is not None:
            instance.request_body = request_body
        if request_histories is not None:
            instance.request_histories = request_histories
        if request_url is not None:
            instance.request_url = request_url
        if status is not None:
            instance.status = status
        if user_id is not None:
            instance.user_id = user_id
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> IAPConsumeHistoryInfo:
        instance = cls()
        if not dict_:
            return instance
        if (
            "clientRequestParameter" in dict_
            and dict_["clientRequestParameter"] is not None
        ):
            instance.client_request_parameter = ClientRequestParameter.create_from_dict(
                dict_["clientRequestParameter"], include_empty=include_empty
            )
        elif include_empty:
            instance.client_request_parameter = ClientRequestParameter()
        if "consumeItems" in dict_ and dict_["consumeItems"] is not None:
            instance.consume_items = [
                ConsumeItem.create_from_dict(i0, include_empty=include_empty)
                for i0 in dict_["consumeItems"]
            ]
        elif include_empty:
            instance.consume_items = []
        if "iapType" in dict_ and dict_["iapType"] is not None:
            instance.iap_type = str(dict_["iapType"])
        elif include_empty:
            instance.iap_type = Union[str, IapTypeEnum]()
        if "id" in dict_ and dict_["id"] is not None:
            instance.id_ = str(dict_["id"])
        elif include_empty:
            instance.id_ = ""
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = ""
        if "requestBody" in dict_ and dict_["requestBody"] is not None:
            instance.request_body = {
                str(k0): v0 for k0, v0 in dict_["requestBody"].items()
            }
        elif include_empty:
            instance.request_body = {}
        if "requestHistories" in dict_ and dict_["requestHistories"] is not None:
            instance.request_histories = [
                RequestHistory.create_from_dict(i0, include_empty=include_empty)
                for i0 in dict_["requestHistories"]
            ]
        elif include_empty:
            instance.request_histories = []
        if "requestUrl" in dict_ and dict_["requestUrl"] is not None:
            instance.request_url = str(dict_["requestUrl"])
        elif include_empty:
            instance.request_url = ""
        if "status" in dict_ and dict_["status"] is not None:
            instance.status = str(dict_["status"])
        elif include_empty:
            instance.status = Union[str, StatusEnum]()
        if "userId" in dict_ and dict_["userId"] is not None:
            instance.user_id = str(dict_["userId"])
        elif include_empty:
            instance.user_id = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, IAPConsumeHistoryInfo]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[IAPConsumeHistoryInfo]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        IAPConsumeHistoryInfo,
        List[IAPConsumeHistoryInfo],
        Dict[Any, IAPConsumeHistoryInfo],
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
            "clientRequestParameter": "client_request_parameter",
            "consumeItems": "consume_items",
            "iapType": "iap_type",
            "id": "id_",
            "namespace": "namespace",
            "requestBody": "request_body",
            "requestHistories": "request_histories",
            "requestUrl": "request_url",
            "status": "status",
            "userId": "user_id",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "clientRequestParameter": False,
            "consumeItems": False,
            "iapType": False,
            "id": False,
            "namespace": False,
            "requestBody": False,
            "requestHistories": False,
            "requestUrl": False,
            "status": False,
            "userId": False,
        }

    @staticmethod
    def get_enum_map() -> Dict[str, List[Any]]:
        return {
            "iapType": [
                "APPLE",
                "EPICGAMES",
                "GOOGLE",
                "PLAYSTATION",
                "STADIA",
                "STEAM",
                "TWITCH",
                "XBOX",
            ],
            "status": ["FAIL", "PENDING", "SUCCESS"],
        }

    # endregion static methods
