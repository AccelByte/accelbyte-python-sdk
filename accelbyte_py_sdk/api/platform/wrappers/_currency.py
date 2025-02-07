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

from ..models import CurrencyConfig
from ..models import CurrencyCreate
from ..models import CurrencyInfo
from ..models import CurrencySummary
from ..models import CurrencyUpdate
from ..models import ErrorEntity
from ..models import ValidationErrorEntity

from ..operations.currency import CreateCurrency
from ..operations.currency import DeleteCurrency
from ..operations.currency import GetCurrencyConfig
from ..operations.currency import GetCurrencySummary
from ..operations.currency import ListCurrencies
from ..operations.currency import ListCurrenciesCurrencyTypeEnum
from ..operations.currency import PublicListCurrencies
from ..operations.currency import PublicListCurrenciesCurrencyTypeEnum
from ..operations.currency import UpdateCurrency
from ..models import CurrencyCreateCurrencyTypeEnum
from ..models import CurrencyInfoCurrencyTypeEnum
from ..models import CurrencySummaryCurrencyTypeEnum


@same_doc_as(CreateCurrency)
def create_currency(
    body: CurrencyCreate,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Create a currency (createCurrency)

    Create a currency.
    Other detail info:

      * Returns : created currency

    Properties:
        url: /platform/admin/namespaces/{namespace}/currencies

        method: POST

        tags: ["Currency"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED CurrencyCreate in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - CurrencyInfo (successful operation)

        409: Conflict - ErrorEntity (36171: Currency [{currencyCode}] already exists in namespace [{namespace}] | 36172: Real Currency [{currencyCode}] not allowed in game namespace [{namespace}])

        422: Unprocessable Entity - ValidationErrorEntity (20002: validation error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = CreateCurrency.create(
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(CreateCurrency)
async def create_currency_async(
    body: CurrencyCreate,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Create a currency (createCurrency)

    Create a currency.
    Other detail info:

      * Returns : created currency

    Properties:
        url: /platform/admin/namespaces/{namespace}/currencies

        method: POST

        tags: ["Currency"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED CurrencyCreate in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - CurrencyInfo (successful operation)

        409: Conflict - ErrorEntity (36171: Currency [{currencyCode}] already exists in namespace [{namespace}] | 36172: Real Currency [{currencyCode}] not allowed in game namespace [{namespace}])

        422: Unprocessable Entity - ValidationErrorEntity (20002: validation error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = CreateCurrency.create(
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(DeleteCurrency)
def delete_currency(
    currency_code: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Delete a currency (deleteCurrency)

    Delete a currency by currency code.
    Other detail info:

      * Returns :

    Properties:
        url: /platform/admin/namespaces/{namespace}/currencies/{currencyCode}

        method: DELETE

        tags: ["Currency"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        currency_code: (currencyCode) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - CurrencyInfo (successful operation)

        404: Not Found - ErrorEntity (36141: Currency [{currencyCode}] does not exist in namespace [{namespace}])
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = DeleteCurrency.create(
        currency_code=currency_code,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(DeleteCurrency)
async def delete_currency_async(
    currency_code: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Delete a currency (deleteCurrency)

    Delete a currency by currency code.
    Other detail info:

      * Returns :

    Properties:
        url: /platform/admin/namespaces/{namespace}/currencies/{currencyCode}

        method: DELETE

        tags: ["Currency"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        currency_code: (currencyCode) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - CurrencyInfo (successful operation)

        404: Not Found - ErrorEntity (36141: Currency [{currencyCode}] does not exist in namespace [{namespace}])
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = DeleteCurrency.create(
        currency_code=currency_code,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(GetCurrencyConfig)
def get_currency_config(
    currency_code: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get currency config (getCurrencyConfig)

    [SERVICE COMMUNICATION ONLY] Get currency config by code.
    Other detail info:

      * Returns : simplified Currency

    Properties:
        url: /platform/admin/namespaces/{namespace}/currencies/{currencyCode}/config

        method: GET

        tags: ["Currency"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        currency_code: (currencyCode) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - CurrencyConfig (successful operation)

        404: Not Found - ErrorEntity (36141: Currency [{currencyCode}] does not exist in namespace [{namespace}])
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetCurrencyConfig.create(
        currency_code=currency_code,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GetCurrencyConfig)
async def get_currency_config_async(
    currency_code: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get currency config (getCurrencyConfig)

    [SERVICE COMMUNICATION ONLY] Get currency config by code.
    Other detail info:

      * Returns : simplified Currency

    Properties:
        url: /platform/admin/namespaces/{namespace}/currencies/{currencyCode}/config

        method: GET

        tags: ["Currency"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        currency_code: (currencyCode) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - CurrencyConfig (successful operation)

        404: Not Found - ErrorEntity (36141: Currency [{currencyCode}] does not exist in namespace [{namespace}])
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetCurrencyConfig.create(
        currency_code=currency_code,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(GetCurrencySummary)
def get_currency_summary(
    currency_code: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get currency summary (getCurrencySummary)

    Get currency summary by code.
    Other detail info:

      * Returns : simplified Currency

    Properties:
        url: /platform/admin/namespaces/{namespace}/currencies/{currencyCode}/summary

        method: GET

        tags: ["Currency"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        currency_code: (currencyCode) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - CurrencySummary (successful operation)

        404: Not Found - ErrorEntity (36141: Currency [{currencyCode}] does not exist in namespace [{namespace}])
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetCurrencySummary.create(
        currency_code=currency_code,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GetCurrencySummary)
async def get_currency_summary_async(
    currency_code: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get currency summary (getCurrencySummary)

    Get currency summary by code.
    Other detail info:

      * Returns : simplified Currency

    Properties:
        url: /platform/admin/namespaces/{namespace}/currencies/{currencyCode}/summary

        method: GET

        tags: ["Currency"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        currency_code: (currencyCode) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - CurrencySummary (successful operation)

        404: Not Found - ErrorEntity (36141: Currency [{currencyCode}] does not exist in namespace [{namespace}])
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetCurrencySummary.create(
        currency_code=currency_code,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(ListCurrencies)
def list_currencies(
    currency_type: Optional[Union[str, ListCurrenciesCurrencyTypeEnum]] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """List currencies (listCurrencies)

    List currencies of a namespace.
    Other detail info:

      * Returns : Currency List

    Properties:
        url: /platform/admin/namespaces/{namespace}/currencies

        method: GET

        tags: ["Currency"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        currency_type: (currencyType) OPTIONAL Union[str, CurrencyTypeEnum] in query

    Responses:
        200: OK - List[CurrencyInfo] (successful operation)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = ListCurrencies.create(
        currency_type=currency_type,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(ListCurrencies)
async def list_currencies_async(
    currency_type: Optional[Union[str, ListCurrenciesCurrencyTypeEnum]] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """List currencies (listCurrencies)

    List currencies of a namespace.
    Other detail info:

      * Returns : Currency List

    Properties:
        url: /platform/admin/namespaces/{namespace}/currencies

        method: GET

        tags: ["Currency"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        currency_type: (currencyType) OPTIONAL Union[str, CurrencyTypeEnum] in query

    Responses:
        200: OK - List[CurrencyInfo] (successful operation)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = ListCurrencies.create(
        currency_type=currency_type,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(PublicListCurrencies)
def public_list_currencies(
    currency_type: Optional[Union[str, PublicListCurrenciesCurrencyTypeEnum]] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """list currencies (publicListCurrencies)

    List currencies of a namespace.
    Other detail info:

      * Returns : Currency List

    Properties:
        url: /platform/public/namespaces/{namespace}/currencies

        method: GET

        tags: ["Currency"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        currency_type: (currencyType) OPTIONAL Union[str, CurrencyTypeEnum] in query

    Responses:
        200: OK - List[CurrencyInfo] (successful operation)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicListCurrencies.create(
        currency_type=currency_type,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PublicListCurrencies)
async def public_list_currencies_async(
    currency_type: Optional[Union[str, PublicListCurrenciesCurrencyTypeEnum]] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """list currencies (publicListCurrencies)

    List currencies of a namespace.
    Other detail info:

      * Returns : Currency List

    Properties:
        url: /platform/public/namespaces/{namespace}/currencies

        method: GET

        tags: ["Currency"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        currency_type: (currencyType) OPTIONAL Union[str, CurrencyTypeEnum] in query

    Responses:
        200: OK - List[CurrencyInfo] (successful operation)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicListCurrencies.create(
        currency_type=currency_type,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(UpdateCurrency)
def update_currency(
    body: CurrencyUpdate,
    currency_code: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update a currency (updateCurrency)

    Update a currency by currency code.
    Other detail info:

      * Returns : updated currency

    Properties:
        url: /platform/admin/namespaces/{namespace}/currencies/{currencyCode}

        method: PUT

        tags: ["Currency"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED CurrencyUpdate in body

        currency_code: (currencyCode) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - CurrencyInfo (successful operation)

        404: Not Found - ErrorEntity (36141: Currency [{currencyCode}] does not exist in namespace [{namespace}] | 36172: Real Currency [{currencyCode}] not allowed in game namespace [{namespace}])

        422: Unprocessable Entity - ValidationErrorEntity (20002: validation error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = UpdateCurrency.create(
        body=body,
        currency_code=currency_code,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(UpdateCurrency)
async def update_currency_async(
    body: CurrencyUpdate,
    currency_code: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update a currency (updateCurrency)

    Update a currency by currency code.
    Other detail info:

      * Returns : updated currency

    Properties:
        url: /platform/admin/namespaces/{namespace}/currencies/{currencyCode}

        method: PUT

        tags: ["Currency"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED CurrencyUpdate in body

        currency_code: (currencyCode) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - CurrencyInfo (successful operation)

        404: Not Found - ErrorEntity (36141: Currency [{currencyCode}] does not exist in namespace [{namespace}] | 36172: Real Currency [{currencyCode}] not allowed in game namespace [{namespace}])

        422: Unprocessable Entity - ValidationErrorEntity (20002: validation error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = UpdateCurrency.create(
        body=body,
        currency_code=currency_code,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )
