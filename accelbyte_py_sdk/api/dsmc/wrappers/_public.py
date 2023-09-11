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

from ..models import ModelsDefaultProvider

from ..operations.public import GetDefaultProvider
from ..operations.public import ListProviders
from ..operations.public import ListProvidersByRegion


@same_doc_as(GetDefaultProvider)
def get_default_provider(
    x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    """Get default provider (GetDefaultProvider)

    This endpoints returns the default provider.

    Properties:
        url: /dsmcontroller/public/provider/default

        method: GET

        tags: ["Public"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

    Responses:
        200: OK - ModelsDefaultProvider (Default provider got)
    """
    request = GetDefaultProvider.create()
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GetDefaultProvider)
async def get_default_provider_async(
    x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    """Get default provider (GetDefaultProvider)

    This endpoints returns the default provider.

    Properties:
        url: /dsmcontroller/public/provider/default

        method: GET

        tags: ["Public"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

    Responses:
        200: OK - ModelsDefaultProvider (Default provider got)
    """
    request = GetDefaultProvider.create()
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(ListProviders)
def list_providers(x_additional_headers: Optional[Dict[str, str]] = None, **kwargs):
    """List all supported providers (ListProviders)

    This endpoints returns list of supported providers. Armada is the default provider.

    Properties:
        url: /dsmcontroller/public/providers

        method: GET

        tags: ["Public"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

    Responses:
        200: OK - List[str] (Providers listed)
    """
    request = ListProviders.create()
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(ListProviders)
async def list_providers_async(
    x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    """List all supported providers (ListProviders)

    This endpoints returns list of supported providers. Armada is the default provider.

    Properties:
        url: /dsmcontroller/public/providers

        method: GET

        tags: ["Public"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

    Responses:
        200: OK - List[str] (Providers listed)
    """
    request = ListProviders.create()
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(ListProvidersByRegion)
def list_providers_by_region(
    region: str, x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    """List providers by region (ListProvidersByRegion)

    This endpoint returns the providers by region.

    Properties:
        url: /dsmcontroller/public/providers/regions/{region}

        method: GET

        tags: ["Public"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        region: (region) REQUIRED str in path

    Responses:
        200: OK - List[str] (Default providers got)
    """
    request = ListProvidersByRegion.create(
        region=region,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(ListProvidersByRegion)
async def list_providers_by_region_async(
    region: str, x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    """List providers by region (ListProvidersByRegion)

    This endpoint returns the providers by region.

    Properties:
        url: /dsmcontroller/public/providers/regions/{region}

        method: GET

        tags: ["Public"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        region: (region) REQUIRED str in path

    Responses:
        200: OK - List[str] (Default providers got)
    """
    request = ListProvidersByRegion.create(
        region=region,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )
