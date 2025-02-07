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

from ..models import ErrorEntity
from ..models import RetrieveUserEligibilitiesIndirectResponse

from ..operations.admin_user_eligibilities import AdminRetrieveEligibilities


@same_doc_as(AdminRetrieveEligibilities)
def admin_retrieve_eligibilities(
    client_id: str,
    country_code: str,
    user_id: str,
    publisher_user_id: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Check User Legal Eligibility (adminRetrieveEligibilities)

    Retrieve the active policies and its conformance status by user.
    This process only supports cross-namespace checking between game namespace and publisher namespace , that means if the active policy already accepted by the same user in publisher namespace, then it will also be considered as eligible in non-publisher namespace.

    Properties:
        url: /agreement/admin/namespaces/{namespace}/users/{userId}/eligibilities

        method: GET

        tags: ["Admin User Eligibilities"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

        publisher_user_id: (publisherUserId) OPTIONAL str in query

        client_id: (clientId) REQUIRED str in query

        country_code: (countryCode) REQUIRED str in query

    Responses:
        200: OK - RetrieveUserEligibilitiesIndirectResponse (successful operation)

        400: Bad Request - ErrorEntity (40045: errors.net.accelbyte.platform.legal.user_id_needed)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminRetrieveEligibilities.create(
        client_id=client_id,
        country_code=country_code,
        user_id=user_id,
        publisher_user_id=publisher_user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminRetrieveEligibilities)
async def admin_retrieve_eligibilities_async(
    client_id: str,
    country_code: str,
    user_id: str,
    publisher_user_id: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Check User Legal Eligibility (adminRetrieveEligibilities)

    Retrieve the active policies and its conformance status by user.
    This process only supports cross-namespace checking between game namespace and publisher namespace , that means if the active policy already accepted by the same user in publisher namespace, then it will also be considered as eligible in non-publisher namespace.

    Properties:
        url: /agreement/admin/namespaces/{namespace}/users/{userId}/eligibilities

        method: GET

        tags: ["Admin User Eligibilities"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

        publisher_user_id: (publisherUserId) OPTIONAL str in query

        client_id: (clientId) REQUIRED str in query

        country_code: (countryCode) REQUIRED str in query

    Responses:
        200: OK - RetrieveUserEligibilitiesIndirectResponse (successful operation)

        400: Bad Request - ErrorEntity (40045: errors.net.accelbyte.platform.legal.user_id_needed)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminRetrieveEligibilities.create(
        client_id=client_id,
        country_code=country_code,
        user_id=user_id,
        publisher_user_id=publisher_user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )
