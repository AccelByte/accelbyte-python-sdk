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
from ....api.platform import update_ali_pay_config as update_ali_pay_config_internal
from ....api.platform.models import AliPayConfig
from ....api.platform.models import ErrorEntity
from ....api.platform.models import PaymentMerchantConfigInfo


@click.command()
@click.argument("id_", type=str)
@click.option("--body", "body", type=str)
@click.option("--validate", "validate", type=bool)
@click.option("--sandbox", "sandbox", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
@click.option("--doc", type=bool)
def update_ali_pay_config(
        id_: str,
        body: Optional[str] = None,
        validate: Optional[bool] = None,
        sandbox: Optional[bool] = None,
        login_as: Optional[str] = None,
        doc: Optional[bool] = None,
):
    if doc:
        click.echo(update_ali_pay_config_internal.__doc__)
        return
    login_as_internal(login_as)
    try:
        body_json = json.loads(body)
        body = AliPayConfig.create_from_dict(body_json)
    except ValueError as e:
        raise Exception(f"Invalid JSON for 'body'. {str(e)}") from e
    _, error = update_ali_pay_config_internal(
        id_=id_,
        body=body,
        validate=validate,
        sandbox=sandbox,
    )
    if error:
        raise Exception(f"updateAliPayConfig failed: {str(error)}")
    click.echo("updateAliPayConfig success")
