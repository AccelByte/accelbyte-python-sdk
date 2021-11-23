# justice-platform-service (3.37.1)

# Copyright (c) 2018 - 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.

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

from .....core import Operation
from .....core import HttpResponse

from ...models import ErrorEntity
from ...models import FulfillmentScriptCreate
from ...models import FulfillmentScriptInfo


class CreateFulfillmentScript(Operation):
    """Create fulfillment script (createFulfillmentScript)

    Create fulfillment script.<br>Other detail info: <ul><li><i>Required
    permission</i>: resource="ADMIN:FULFILLMENT", action=1
    (CREATE)</li></ul>Fulfillment scripts are used for adding custom fulfillment
    logic based on <b>ITEM_TYPE</b>: [MEDIA,INGAMEITEM] for now, and the custom
    scripts only cover grantDays.<br>Example for grantDays: <br><code>order &&
    ((order.currency && order.currency.currencyCode) == 'LP' || order.isFree) ? 30
    : -1</code><br>


    Properties:
        url: /platform/admin/fulfillment/scripts/{id}

        method: POST

        tags: ["FulfillmentScript"]

        consumes: []

        produces: []

        security: bearer

        body: (body) OPTIONAL FulfillmentScriptCreate in body

        id_: (id) REQUIRED str in path

    Responses:
        201: Created - FulfillmentScriptInfo (successful operation)

        409: Conflict - ErrorEntity (38171: Fulfillment script already exists)
    """

    # region fields

    _url: str = "/platform/admin/fulfillment/scripts/{id}"
    _method: str = "POST"
    _consumes: List[str] = []
    _produces: List[str] = []
    _security: Optional[str] = "bearer"
    _location_query: str = None

    body: FulfillmentScriptCreate                                                                  # OPTIONAL in [body]
    id_: str                                                                                       # REQUIRED in [path]

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
    def security(self) -> Optional[str]:
        return self._security

    @property
    def location_query(self) -> str:
        return self._location_query

    # endregion properties

    # region get methods

    def get_full_url(self, base_url: Union[None, str] = None) -> str:
        return self.create_full_url(
            url=self.url,
            base_url=base_url,
            path_params=self.get_path_params(),
            query_params=self.get_query_params(),
        )

    # noinspection PyMethodMayBeStatic
    def get_all_required_fields(self) -> List[str]:
        return [
            "id_",
        ]

    # endregion get methods

    # region get_x_params methods

    def get_all_params(self) -> dict:
        return {
            "body": self.get_body_params(),
            "path": self.get_path_params(),
        }

    def get_body_params(self) -> Any:
        return self.body.to_dict()

    def get_path_params(self) -> dict:
        result = {}
        if hasattr(self, "id_"):
            result["id"] = self.id_
        return result

    # endregion get_x_params methods

    # region is/has methods

    def is_valid(self) -> bool:
        if not hasattr(self, "id_") or self.id_ is None:
            return False
        return True

    # endregion is/has methods

    # region with_x methods

    def with_body(self, value: FulfillmentScriptCreate) -> CreateFulfillmentScript:
        self.body = value
        return self

    def with_id_(self, value: str) -> CreateFulfillmentScript:
        self.id_ = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "body") and self.body:
            result["body"] = self.body.to_dict(include_empty=include_empty)
        elif include_empty:
            result["body"] = FulfillmentScriptCreate()
        if hasattr(self, "id_") and self.id_:
            result["id"] = str(self.id_)
        elif include_empty:
            result["id"] = str()
        return result

    # endregion to methods

    # region response methods

    # noinspection PyMethodMayBeStatic
    def parse_response(self, code: int, content_type: str, content: Any) -> Tuple[Union[None, FulfillmentScriptInfo], Union[None, ErrorEntity]]:
        """Parse the given response.

        201: Created - FulfillmentScriptInfo (successful operation)

        409: Conflict - ErrorEntity (38171: Fulfillment script already exists)
        """
        if code == 201:
            return FulfillmentScriptInfo.create_from_dict(content), None
        if code == 409:
            return None, ErrorEntity.create_from_dict(content)
        was_handled, undocumented_response = HttpResponse.try_create_undocumented_response(code, content)
        if was_handled:
            return None, undocumented_response
        return None, HttpResponse.create_unhandled_error()

    # endregion response methods

    # region static methods

    @classmethod
    def create(
        cls,
        id_: str,
        body: Optional[FulfillmentScriptCreate] = None,
    ) -> CreateFulfillmentScript:
        instance = cls()
        instance.id_ = id_
        if body is not None:
            instance.body = body
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> CreateFulfillmentScript:
        instance = cls()
        if "body" in dict_ and dict_["body"] is not None:
            instance.body = FulfillmentScriptCreate.create_from_dict(dict_["body"], include_empty=include_empty)
        elif include_empty:
            instance.body = FulfillmentScriptCreate()
        if "id" in dict_ and dict_["id"] is not None:
            instance.id_ = str(dict_["id"])
        elif include_empty:
            instance.id_ = str()
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "body": "body",
            "id": "id_",
        }

    # endregion static methods
