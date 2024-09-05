# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: ags_py_codegen

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

# AccelByte Gaming Services Gdpr Service

from __future__ import annotations
from typing import Any, Dict, List, Optional, Tuple, Union

from .....core import Operation
from .....core import HeaderStr
from .....core import HttpResponse

from ...models import DtoListFinishedDataRequests
from ...models import ResponseError


class S2SGetListFinishedPersonalDataRequest(Operation):
    """Get list of finished personal data requests (S2SGetListFinishedPersonalDataRequest)

    Scope: account

    Get list of finished personal data requests based on the finished time period.
    Unfinished personal data requests will not appear here, i.e. have Status **Pending**, **In-Progress** or **Canceled**.

    **Anonymize userId for deleted account:**
    For user accounts that have been deleted, the **userId** field in this API will be anonymized automatically after **7 days** from the success deletion.
    This measure is implemented to ensure compliance with GDPR regulations. Please make sure to synchronize the data from this API before it undergoes anonymization.

    ---
    ## This API for S2S integration purpose only

    Properties:
        url: /gdpr/s2s/namespaces/{namespace}/requests/finished

        method: GET

        tags: ["Data Retrieval (S2S)"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        end: (end) REQUIRED str in query

        start: (start) REQUIRED str in query

    Responses:
        200: OK - DtoListFinishedDataRequests (OK)

        400: Bad Request - ResponseError (Bad Request)

        401: Unauthorized - ResponseError (Unauthorized)

        403: Forbidden - ResponseError (Forbidden)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """

    # region fields

    _url: str = "/gdpr/s2s/namespaces/{namespace}/requests/finished"
    _method: str = "GET"
    _consumes: List[str] = ["application/json"]
    _produces: List[str] = ["application/json"]
    _securities: List[List[str]] = [["BEARER_AUTH"]]
    _location_query: str = None

    namespace: str  # REQUIRED in [path]
    end: str  # REQUIRED in [query]
    start: str  # REQUIRED in [query]

    # endregion fields

    # region properties

    @property
    def url(self) -> str:
        return self._url

    @property
    def method(self) -> str:
        return self._method

    @property
    def consumes(self) -> List[str]:
        return self._consumes

    @property
    def produces(self) -> List[str]:
        return self._produces

    @property
    def securities(self) -> List[List[str]]:
        return self._securities

    @property
    def location_query(self) -> str:
        return self._location_query

    # endregion properties

    # region get methods

    # endregion get methods

    # region get_x_params methods

    def get_all_params(self) -> dict:
        return {
            "path": self.get_path_params(),
            "query": self.get_query_params(),
        }

    def get_path_params(self) -> dict:
        result = {}
        if hasattr(self, "namespace"):
            result["namespace"] = self.namespace
        return result

    def get_query_params(self) -> dict:
        result = {}
        if hasattr(self, "end"):
            result["end"] = self.end
        if hasattr(self, "start"):
            result["start"] = self.start
        return result

    # endregion get_x_params methods

    # region is/has methods

    # endregion is/has methods

    # region with_x methods

    def with_namespace(self, value: str) -> S2SGetListFinishedPersonalDataRequest:
        self.namespace = value
        return self

    def with_end(self, value: str) -> S2SGetListFinishedPersonalDataRequest:
        self.end = value
        return self

    def with_start(self, value: str) -> S2SGetListFinishedPersonalDataRequest:
        self.start = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "namespace") and self.namespace:
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = ""
        if hasattr(self, "end") and self.end:
            result["end"] = str(self.end)
        elif include_empty:
            result["end"] = ""
        if hasattr(self, "start") and self.start:
            result["start"] = str(self.start)
        elif include_empty:
            result["start"] = ""
        return result

    # endregion to methods

    # region response methods

    # noinspection PyMethodMayBeStatic
    def parse_response(
        self, code: int, content_type: str, content: Any
    ) -> Tuple[
        Union[None, DtoListFinishedDataRequests],
        Union[None, HttpResponse, ResponseError],
    ]:
        """Parse the given response.

        200: OK - DtoListFinishedDataRequests (OK)

        400: Bad Request - ResponseError (Bad Request)

        401: Unauthorized - ResponseError (Unauthorized)

        403: Forbidden - ResponseError (Forbidden)

        500: Internal Server Error - ResponseError (Internal Server Error)

        ---: HttpResponse (Undocumented Response)

        ---: HttpResponse (Unexpected Content-Type Error)

        ---: HttpResponse (Unhandled Error)
        """
        pre_processed_response, error = self.pre_process_response(
            code=code, content_type=content_type, content=content
        )
        if error is not None:
            return None, None if error.is_no_content() else error
        code, content_type, content = pre_processed_response

        if code == 200:
            return DtoListFinishedDataRequests.create_from_dict(content), None
        if code == 400:
            return None, ResponseError.create_from_dict(content)
        if code == 401:
            return None, ResponseError.create_from_dict(content)
        if code == 403:
            return None, ResponseError.create_from_dict(content)
        if code == 500:
            return None, ResponseError.create_from_dict(content)

        return self.handle_undocumented_response(
            code=code, content_type=content_type, content=content
        )

    # endregion response methods

    # region static methods

    @classmethod
    def create(
        cls, namespace: str, end: str, start: str, **kwargs
    ) -> S2SGetListFinishedPersonalDataRequest:
        instance = cls()
        instance.namespace = namespace
        instance.end = end
        instance.start = start
        if x_flight_id := kwargs.get("x_flight_id", None):
            instance.x_flight_id = x_flight_id
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> S2SGetListFinishedPersonalDataRequest:
        instance = cls()
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = ""
        if "end" in dict_ and dict_["end"] is not None:
            instance.end = str(dict_["end"])
        elif include_empty:
            instance.end = ""
        if "start" in dict_ and dict_["start"] is not None:
            instance.start = str(dict_["start"])
        elif include_empty:
            instance.start = ""
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "namespace": "namespace",
            "end": "end",
            "start": "start",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "namespace": True,
            "end": True,
            "start": True,
        }

    # endregion static methods
