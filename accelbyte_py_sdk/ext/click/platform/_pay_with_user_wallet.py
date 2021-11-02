# justice-platform-service (3.34.0)

# Copyright (c) 2018 - 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.

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
from ....api.platform import pay_with_user_wallet as pay_with_user_wallet_internal
from ....api.platform.models import ErrorEntity
from ....api.platform.models import PaymentRequest
from ....api.platform.models import ValidationErrorEntity
from ....api.platform.models import WalletInfo


@click.command()
@click.argument("user_id", type=str)
@click.argument("currency_code", type=str)
@click.option("--body", "body", type=str)
@click.option("--namespace", type=str)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
@click.option("--doc", type=bool)
def pay_with_user_wallet(
        user_id: str,
        currency_code: str,
        body: Optional[str] = None,
        namespace: Optional[str] = None,
        login_as: Optional[str] = None,
        doc: Optional[bool] = None,
):
    if doc:
        click.echo(pay_with_user_wallet_internal.__doc__)
        return
    login_as_internal(login_as)
    try:
        body_json = json.loads(body)
        body = PaymentRequest.create_from_dict(body_json)
    except ValueError as e:
        raise Exception(f"Invalid JSON for 'body'. {str(e)}") from e
    _, error = pay_with_user_wallet_internal(
        user_id=user_id,
        currency_code=currency_code,
        body=body,
        namespace=namespace,
    )
    if error:
        raise Exception(f"payWithUserWallet failed: {str(error)}")
    click.echo("payWithUserWallet success")