# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: accelbyte_cloud_py_codegen

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
    request = GetDefaultProvider.create()
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GetDefaultProvider)
async def get_default_provider_async(
    x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    request = GetDefaultProvider.create()
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(ListProviders)
def list_providers(x_additional_headers: Optional[Dict[str, str]] = None, **kwargs):
    request = ListProviders.create()
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(ListProviders)
async def list_providers_async(
    x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    request = ListProviders.create()
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(ListProvidersByRegion)
def list_providers_by_region(
    region: str, x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    request = ListProvidersByRegion.create(
        region=region,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(ListProvidersByRegion)
async def list_providers_by_region_async(
    region: str, x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    request = ListProvidersByRegion.create(
        region=region,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )
