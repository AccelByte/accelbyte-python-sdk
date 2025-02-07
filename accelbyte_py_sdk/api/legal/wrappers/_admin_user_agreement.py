# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: ags_py_codegen

# pylint: disable=duplicate-code
# pylint: disable=line-too-long
# pylint: disable=missing-function-docstring
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

from typing import Any, Dict, List, Optional, Tuple, Union

from ....core import HeaderStr
from ....core import get_namespace as get_services_namespace
from ....core import run_request
from ....core import run_request_async
from ....core import same_doc_as

from ..models import AcceptAgreementRequest
from ..models import AcceptAgreementResponse

from ..operations.admin_user_agreement import IndirectBulkAcceptVersionedPolicy


@same_doc_as(IndirectBulkAcceptVersionedPolicy)
def indirect_bulk_accept_versioned_policy(
    client_id: str,
    country_code: str,
    user_id: str,
    body: Optional[List[AcceptAgreementRequest]] = None,
    publisher_user_id: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Admin bulk accept Policy Versions (indirectBulkAcceptVersionedPolicy)

    Accepts many legal policy versions all at once. Supply with localized version policy id and userId to accept an agreement.

    Properties:
        url: /agreement/admin/namespaces/{namespace}/users/{userId}/agreements/policies

        method: POST

        tags: ["Admin User Agreement"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) OPTIONAL List[AcceptAgreementRequest] in body

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

        publisher_user_id: (publisherUserId) OPTIONAL str in query

        client_id: (clientId) REQUIRED str in query

        country_code: (countryCode) REQUIRED str in query

    Responses:
        201: Created - AcceptAgreementResponse (successful operation)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = IndirectBulkAcceptVersionedPolicy.create(
        client_id=client_id,
        country_code=country_code,
        user_id=user_id,
        body=body,
        publisher_user_id=publisher_user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(IndirectBulkAcceptVersionedPolicy)
async def indirect_bulk_accept_versioned_policy_async(
    client_id: str,
    country_code: str,
    user_id: str,
    body: Optional[List[AcceptAgreementRequest]] = None,
    publisher_user_id: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Admin bulk accept Policy Versions (indirectBulkAcceptVersionedPolicy)

    Accepts many legal policy versions all at once. Supply with localized version policy id and userId to accept an agreement.

    Properties:
        url: /agreement/admin/namespaces/{namespace}/users/{userId}/agreements/policies

        method: POST

        tags: ["Admin User Agreement"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) OPTIONAL List[AcceptAgreementRequest] in body

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

        publisher_user_id: (publisherUserId) OPTIONAL str in query

        client_id: (clientId) REQUIRED str in query

        country_code: (countryCode) REQUIRED str in query

    Responses:
        201: Created - AcceptAgreementResponse (successful operation)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = IndirectBulkAcceptVersionedPolicy.create(
        client_id=client_id,
        country_code=country_code,
        user_id=user_id,
        body=body,
        publisher_user_id=publisher_user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )
