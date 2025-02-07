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

from ..models import RetrieveSimplePolicyPublicResponseV2

from ..operations.policies_with_namespace_v2 import (
    RetrieveLatestPoliciesByNamespaceAndCountryPublic1,
)


@same_doc_as(RetrieveLatestPoliciesByNamespaceAndCountryPublic1)
def retrieve_latest_policies_by_namespace_and_country_public_1(
    client_id: str,
    country_code: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Retrieve Latest Policies by Namespace and Country (retrieveLatestPoliciesByNamespaceAndCountryPublic_1)

    This API is used to list all the related doc in register page, include optional & mandatory (when env config APP_LEGAL_AGREEMENT_ALWAYS_INCLUDE_DEFAULT=true).
    Other detail info:

    Here are the result of different cases
        * Document 1, Region US (default, mandatory), UA (optional); clientID: [client_A]
        * Document 2, Region US (default, optional), UA (mandatory); clientID: [client_A]
        * Document 3, Region UA (default, mandatory); clientID: [client_A]
        * Document 4, Region US (default, optional); clientID: [client_A]
        * Document 5, Region US (default, optional); clientID: [client_B]
        * Document 6, Region CA (mandatory, optional), UA (optional); clientID: [client_B]
        * Query by: Region UA + client_A
        * Response: Document 1 (UA, optional), Document 2 (UA, mandatory), Document 3 (UA, mandatory), Document 4 (US, optional)
        * Query by: Region CA + client_A
        * Response: Document 1 (US, mandatory), Document 2 (US, mandatory), Document 3 (UA, mandatory), Document 4 (US, optional)
        * Query by: Region UA + client_B
        * Response: Document 5 (US, optional), Document 6 (UA, optional)
        * Query by: Region CN + client_B
        * Response: Document 5 (US, optional), Document 6 (CA, mandatory)
    Note: If APP_LEGAL_AGREEMENT_ALWAYS_INCLUDE_DEFAULT=false the behavior will be same with `/agreement/public/policies/namespaces/{namespace}/countries/{country_code}?defaultOnEmpty=true&visibleOnly;=true`;Here are the result of different cases
        * Query by: Region UA + client_A
        * Response: Document 1 (UA, optional), Document 2 (UA, mandatory), Document 3 (UA, mandatory)
        * Query by: Region UA + client_B
        * Response: Document 5 (US, optional)

    Properties:
        url: /agreement/v2/public/policies/namespaces/{namespace}/countries/{countryCode}

        method: GET

        tags: ["Policies With Namespace V2"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        country_code: (countryCode) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        client_id: (clientId) REQUIRED str in query

    Responses:
        200: OK - List[RetrieveSimplePolicyPublicResponseV2] (successful operation)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = RetrieveLatestPoliciesByNamespaceAndCountryPublic1.create(
        client_id=client_id,
        country_code=country_code,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(RetrieveLatestPoliciesByNamespaceAndCountryPublic1)
async def retrieve_latest_policies_by_namespace_and_country_public_1_async(
    client_id: str,
    country_code: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Retrieve Latest Policies by Namespace and Country (retrieveLatestPoliciesByNamespaceAndCountryPublic_1)

    This API is used to list all the related doc in register page, include optional & mandatory (when env config APP_LEGAL_AGREEMENT_ALWAYS_INCLUDE_DEFAULT=true).
    Other detail info:

    Here are the result of different cases
        * Document 1, Region US (default, mandatory), UA (optional); clientID: [client_A]
        * Document 2, Region US (default, optional), UA (mandatory); clientID: [client_A]
        * Document 3, Region UA (default, mandatory); clientID: [client_A]
        * Document 4, Region US (default, optional); clientID: [client_A]
        * Document 5, Region US (default, optional); clientID: [client_B]
        * Document 6, Region CA (mandatory, optional), UA (optional); clientID: [client_B]
        * Query by: Region UA + client_A
        * Response: Document 1 (UA, optional), Document 2 (UA, mandatory), Document 3 (UA, mandatory), Document 4 (US, optional)
        * Query by: Region CA + client_A
        * Response: Document 1 (US, mandatory), Document 2 (US, mandatory), Document 3 (UA, mandatory), Document 4 (US, optional)
        * Query by: Region UA + client_B
        * Response: Document 5 (US, optional), Document 6 (UA, optional)
        * Query by: Region CN + client_B
        * Response: Document 5 (US, optional), Document 6 (CA, mandatory)
    Note: If APP_LEGAL_AGREEMENT_ALWAYS_INCLUDE_DEFAULT=false the behavior will be same with `/agreement/public/policies/namespaces/{namespace}/countries/{country_code}?defaultOnEmpty=true&visibleOnly;=true`;Here are the result of different cases
        * Query by: Region UA + client_A
        * Response: Document 1 (UA, optional), Document 2 (UA, mandatory), Document 3 (UA, mandatory)
        * Query by: Region UA + client_B
        * Response: Document 5 (US, optional)

    Properties:
        url: /agreement/v2/public/policies/namespaces/{namespace}/countries/{countryCode}

        method: GET

        tags: ["Policies With Namespace V2"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        country_code: (countryCode) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        client_id: (clientId) REQUIRED str in query

    Responses:
        200: OK - List[RetrieveSimplePolicyPublicResponseV2] (successful operation)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = RetrieveLatestPoliciesByNamespaceAndCountryPublic1.create(
        client_id=client_id,
        country_code=country_code,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )
