# justice-legal-service (1.14.0)

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

from ...models import AcceptAgreementRequest
from ...models import AcceptAgreementResponse


class BulkAcceptVersionedPolicy(Operation):
    """Bulk Accept Policy Versions (bulkAcceptVersionedPolicy)

    Accepts many legal policy versions all at once. Supply with localized version
    policy id to accept an agreement.<br>Other detail info: <ul><li><i>Required
    permission</i>: login user</li></ul>


    Properties:
        url: /agreement/public/agreements/policies

        method: POST

        tags: ["Agreement"]

        consumes: []

        produces: ["application/json"]

        security: bearer

        body: (body) OPTIONAL List[AcceptAgreementRequest] in body

    Responses:
        201: Created - AcceptAgreementResponse (successful operation)
    """

    # region fields

    _url: str = "/agreement/public/agreements/policies"
    _method: str = "POST"
    _consumes: List[str] = []
    _produces: List[str] = ["application/json"]
    _security: Optional[str] = "bearer"
    _location_query: str = None

    body: List[AcceptAgreementRequest]                                                             # OPTIONAL in [body]

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
        )

    # noinspection PyMethodMayBeStatic
    def get_all_required_fields(self) -> List[str]:
        return [
        ]

    # endregion get methods

    # region get_x_params methods

    def get_all_params(self) -> dict:
        return {
            "body": self.get_body_params(),
        }

    def get_body_params(self) -> Any:
        return [i.to_dict() for i in self.body]

    # endregion get_x_params methods

    # region is/has methods

    def is_valid(self) -> bool:
        return True

    # endregion is/has methods

    # region with_x methods

    def with_body(self, value: List[AcceptAgreementRequest]) -> BulkAcceptVersionedPolicy:
        self.body = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "body") and self.body:
            result["body"] = [i0.to_dict(include_empty=include_empty) for i0 in self.body]
        elif include_empty:
            result["body"] = []
        return result

    # endregion to methods

    # region response methods

    # noinspection PyMethodMayBeStatic
    def parse_response(self, code: int, content_type: str, content: Any) -> Tuple[Union[None, AcceptAgreementResponse], Union[None, HttpResponse]]:
        """Parse the given response.

        201: Created - AcceptAgreementResponse (successful operation)
        """
        if code == 201:
            return AcceptAgreementResponse.create_from_dict(content), None
        was_handled, undocumented_response = HttpResponse.try_create_undocumented_response(code, content)
        if was_handled:
            return None, undocumented_response
        return None, HttpResponse.create_unhandled_error()

    # endregion response methods

    # region static methods

    @classmethod
    def create(
        cls,
        body: Optional[List[AcceptAgreementRequest]] = None,
    ) -> BulkAcceptVersionedPolicy:
        instance = cls()
        if body is not None:
            instance.body = body
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> BulkAcceptVersionedPolicy:
        instance = cls()
        if "body" in dict_ and dict_["body"] is not None:
            instance.body = [AcceptAgreementRequest.create_from_dict(i0, include_empty=include_empty) for i0 in dict_["body"]]
        elif include_empty:
            instance.body = []
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "body": "body",
        }

    # endregion static methods
