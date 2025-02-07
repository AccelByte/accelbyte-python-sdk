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
from ....core import deprecated
from ....core import same_doc_as

from ..models import ErrorEntity
from ..models import PaymentCallbackConfigInfo
from ..models import PaymentCallbackConfigUpdate

from ..operations.payment_callback_config import GetPaymentCallbackConfig
from ..operations.payment_callback_config import UpdatePaymentCallbackConfig


@deprecated
@same_doc_as(GetPaymentCallbackConfig)
def get_payment_callback_config(
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get payment callback configuration (getPaymentCallbackConfig)

    ### The endpoint is going to be deprecated

    [Not supported yet in AGS Shared Cloud] Get payment callback configuration.
    Other detail info:

      * Returns : Payment callback config

    Properties:
        url: /platform/admin/namespaces/{namespace}/payment/config/callback

        method: GET

        tags: ["PaymentCallbackConfig"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - PaymentCallbackConfigInfo (successful operation)

        404: Not Found - ErrorEntity (33243: Payment callback config for [{namespace}] does not exist)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetPaymentCallbackConfig.create(
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@deprecated
@same_doc_as(GetPaymentCallbackConfig)
async def get_payment_callback_config_async(
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get payment callback configuration (getPaymentCallbackConfig)

    ### The endpoint is going to be deprecated

    [Not supported yet in AGS Shared Cloud] Get payment callback configuration.
    Other detail info:

      * Returns : Payment callback config

    Properties:
        url: /platform/admin/namespaces/{namespace}/payment/config/callback

        method: GET

        tags: ["PaymentCallbackConfig"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - PaymentCallbackConfigInfo (successful operation)

        404: Not Found - ErrorEntity (33243: Payment callback config for [{namespace}] does not exist)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetPaymentCallbackConfig.create(
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@deprecated
@same_doc_as(UpdatePaymentCallbackConfig)
def update_payment_callback_config(
    body: PaymentCallbackConfigUpdate,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update payment callback configuration (updatePaymentCallbackConfig)

    ### The endpoint is going to be deprecated

    [Not supported yet in AGS Shared Cloud] Update payment callback configuration.
    Other detail info:

      * Returns : Payment callback config

    Properties:
        url: /platform/admin/namespaces/{namespace}/payment/config/callback

        method: PUT

        tags: ["PaymentCallbackConfig"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED PaymentCallbackConfigUpdate in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - PaymentCallbackConfigInfo (successful operation)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = UpdatePaymentCallbackConfig.create(
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@deprecated
@same_doc_as(UpdatePaymentCallbackConfig)
async def update_payment_callback_config_async(
    body: PaymentCallbackConfigUpdate,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update payment callback configuration (updatePaymentCallbackConfig)

    ### The endpoint is going to be deprecated

    [Not supported yet in AGS Shared Cloud] Update payment callback configuration.
    Other detail info:

      * Returns : Payment callback config

    Properties:
        url: /platform/admin/namespaces/{namespace}/payment/config/callback

        method: PUT

        tags: ["PaymentCallbackConfig"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED PaymentCallbackConfigUpdate in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - PaymentCallbackConfigInfo (successful operation)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = UpdatePaymentCallbackConfig.create(
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )
