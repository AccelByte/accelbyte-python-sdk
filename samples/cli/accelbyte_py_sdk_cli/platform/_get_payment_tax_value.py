# justice-platform-service (3.39.0)

# Copyright (c) 2018 - 2021 AccelByte Inc. All Rights Reserved.
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
from accelbyte_py_sdk.api.platform import get_payment_tax_value as get_payment_tax_value_internal
from accelbyte_py_sdk.api.platform.models import ErrorEntity
from accelbyte_py_sdk.api.platform.models import TaxResult


@click.command()
@click.argument("payment_order_no", type=str)
@click.argument("payment_provider", type=str)
@click.option("--zip_code", "zip_code", type=str)
@click.option("--namespace", type=str)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
@click.option("--doc", type=bool)
def get_payment_tax_value(
        payment_order_no: str,
        payment_provider: str,
        zip_code: Optional[str] = None,
        namespace: Optional[str] = None,
        login_as: Optional[str] = None,
        doc: Optional[bool] = None,
):
    if doc:
        click.echo(get_payment_tax_value_internal.__doc__)
        return
    login_as_internal(login_as)
    _, error = get_payment_tax_value_internal(
        payment_order_no=payment_order_no,
        payment_provider=payment_provider,
        zip_code=zip_code,
        namespace=namespace,
    )
    if error:
        raise Exception(f"getPaymentTaxValue failed: {str(error)}")
    click.echo("getPaymentTaxValue success")