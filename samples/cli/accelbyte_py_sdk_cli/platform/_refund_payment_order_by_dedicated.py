# justice-platform-service (3.40.0)

# Copyright (c) 2018 - 2022 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.

# template_file: python-cli-command.j2

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
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from accelbyte_py_sdk.api.platform import refund_payment_order_by_dedicated as refund_payment_order_by_dedicated_internal
from accelbyte_py_sdk.api.platform.models import ErrorEntity
from accelbyte_py_sdk.api.platform.models import PaymentOrderRefund
from accelbyte_py_sdk.api.platform.models import PaymentOrderRefundResult
from accelbyte_py_sdk.api.platform.models import ValidationErrorEntity


@click.command()
@click.argument("payment_order_no", type=str)
@click.option("--body", "body", type=str)
@click.option("--namespace", type=str)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
@click.option("--doc", type=bool)
def refund_payment_order_by_dedicated(
        payment_order_no: str,
        body: Optional[str] = None,
        namespace: Optional[str] = None,
        login_as: Optional[str] = None,
        doc: Optional[bool] = None,
):
    if doc:
        click.echo(refund_payment_order_by_dedicated_internal.__doc__)
        return
    login_as_internal(login_as)
    try:
        body_json = json.loads(body)
        body = PaymentOrderRefund.create_from_dict(body_json)
    except ValueError as e:
        raise Exception(f"Invalid JSON for 'body'. {str(e)}") from e
    _, error = refund_payment_order_by_dedicated_internal(
        payment_order_no=payment_order_no,
        body=body,
        namespace=namespace,
    )
    if error:
        raise Exception(f"refundPaymentOrderByDedicated failed: {str(error)}")
    click.echo("refundPaymentOrderByDedicated success")
