# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template_file: python-cli-command.j2

# justice-platform-service (4.9.0)

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

import json
import yaml
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from .._utils import to_dict
from accelbyte_py_sdk.api.platform import public_normalize_payment_return_url as public_normalize_payment_return_url_internal


@click.command()
@click.argument("order_no", type=str)
@click.argument("payment_order_no", type=str)
@click.argument("payment_provider", type=str)
@click.argument("return_url", type=str)
@click.option("--payer_id", "payer_id", type=str)
@click.option("--foreinginvoice", "foreinginvoice", type=str)
@click.option("--invoice_id", "invoice_id", type=str)
@click.option("--payload", "payload", type=str)
@click.option("--redirect_result", "redirect_result", type=str)
@click.option("--result_code", "result_code", type=str)
@click.option("--session_id", "session_id", type=str)
@click.option("--status", "status", type=str)
@click.option("--token", "token", type=str)
@click.option("--type", "type_", type=str)
@click.option("--user_id", "user_id", type=str)
@click.option("--namespace", type=str)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
@click.option("--login_with_auth", type=str)
@click.option("--doc", type=bool)
def public_normalize_payment_return_url(
        order_no: str,
        payment_order_no: str,
        payment_provider: str,
        return_url: str,
        payer_id: Optional[str] = None,
        foreinginvoice: Optional[str] = None,
        invoice_id: Optional[str] = None,
        payload: Optional[str] = None,
        redirect_result: Optional[str] = None,
        result_code: Optional[str] = None,
        session_id: Optional[str] = None,
        status: Optional[str] = None,
        token: Optional[str] = None,
        type_: Optional[str] = None,
        user_id: Optional[str] = None,
        namespace: Optional[str] = None,
        login_as: Optional[str] = None,
        login_with_auth: Optional[str] = None,
        doc: Optional[bool] = None,
):
    if doc:
        click.echo(public_normalize_payment_return_url_internal.__doc__)
        return
    x_additional_headers = None
    if login_with_auth:
        x_additional_headers = {
            "Authorization": login_with_auth
        }
    else:
        login_as_internal(login_as)
    result, error = public_normalize_payment_return_url_internal(
        order_no=order_no,
        payment_order_no=payment_order_no,
        payment_provider=payment_provider,
        return_url=return_url,
        payer_id=payer_id,
        foreinginvoice=foreinginvoice,
        invoice_id=invoice_id,
        payload=payload,
        redirect_result=redirect_result,
        result_code=result_code,
        session_id=session_id,
        status=status,
        token=token,
        type_=type_,
        user_id=user_id,
        namespace=namespace,
        x_additional_headers=x_additional_headers,
    )
    if error:
        raise Exception(f"publicNormalizePaymentReturnUrl failed: {str(error)}")
    click.echo(yaml.safe_dump(to_dict(result), sort_keys=False))


public_normalize_payment_return_url.operation_id = "publicNormalizePaymentReturnUrl"
public_normalize_payment_return_url.is_deprecated = False
