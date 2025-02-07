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

from ..models import PaymentAccount

from ..operations.payment_account import PublicDeletePaymentAccount
from ..operations.payment_account import PublicDeletePaymentAccountTypeEnum
from ..operations.payment_account import PublicGetPaymentAccounts
from ..models import PaymentAccountTypeEnum


@same_doc_as(PublicDeletePaymentAccount)
def public_delete_payment_account(
    id_: str,
    type_: Union[str, PublicDeletePaymentAccountTypeEnum],
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Delete payment account (publicDeletePaymentAccount)

    [Not supported yet in AGS Shared Cloud] Delete payment account.
    Other detail info:

      * Returns :

    Properties:
        url: /platform/public/namespaces/{namespace}/users/{userId}/payment/accounts/{type}/{id}

        method: DELETE

        tags: ["PaymentAccount"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        id_: (id) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        type_: (type) REQUIRED Union[str, TypeEnum] in path

        user_id: (userId) REQUIRED str in path

    Responses:
        204: No Content - (delete a payment account successfully)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicDeletePaymentAccount.create(
        id_=id_,
        type_=type_,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PublicDeletePaymentAccount)
async def public_delete_payment_account_async(
    id_: str,
    type_: Union[str, PublicDeletePaymentAccountTypeEnum],
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Delete payment account (publicDeletePaymentAccount)

    [Not supported yet in AGS Shared Cloud] Delete payment account.
    Other detail info:

      * Returns :

    Properties:
        url: /platform/public/namespaces/{namespace}/users/{userId}/payment/accounts/{type}/{id}

        method: DELETE

        tags: ["PaymentAccount"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        id_: (id) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        type_: (type) REQUIRED Union[str, TypeEnum] in path

        user_id: (userId) REQUIRED str in path

    Responses:
        204: No Content - (delete a payment account successfully)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicDeletePaymentAccount.create(
        id_=id_,
        type_=type_,
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(PublicGetPaymentAccounts)
def public_get_payment_accounts(
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get payment accounts (publicGetPaymentAccounts)

    [Not supported yet in AGS Shared Cloud] Get payment accounts.
    Other detail info:

      * Returns : Payment account list

    Properties:
        url: /platform/public/namespaces/{namespace}/users/{userId}/payment/accounts

        method: GET

        tags: ["PaymentAccount"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - List[PaymentAccount] (successful operation)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicGetPaymentAccounts.create(
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PublicGetPaymentAccounts)
async def public_get_payment_accounts_async(
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get payment accounts (publicGetPaymentAccounts)

    [Not supported yet in AGS Shared Cloud] Get payment accounts.
    Other detail info:

      * Returns : Payment account list

    Properties:
        url: /platform/public/namespaces/{namespace}/users/{userId}/payment/accounts

        method: GET

        tags: ["PaymentAccount"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - List[PaymentAccount] (successful operation)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicGetPaymentAccounts.create(
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )
