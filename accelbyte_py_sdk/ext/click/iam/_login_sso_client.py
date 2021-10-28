# justice-iam-service (4.4.1)

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
from ....api.iam import login_sso_client as login_sso_client_internal


@click.command()
@click.argument("platform_id", type=str)
@click.option("--payload", "payload", type=str)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
@click.option("--doc", type=bool)
def login_sso_client(
        platform_id: str,
        payload: Optional[str] = None,
        login_as: Optional[str] = None,
        doc: Optional[bool] = None,
):
    if doc:
        click.echo(login_sso_client_internal.__doc__)
        return
    login_as_internal(login_as)
    _, error = login_sso_client_internal(
        platform_id=platform_id,
        payload=payload,
    )
    if error:
        raise Exception(f"LoginSSOClient failed: {str(error)}")
    click.echo("LoginSSOClient success")
