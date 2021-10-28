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
from ....api.iam import admin_platform_link_v3 as admin_platform_link_v3_internal


@click.command()
@click.argument("ticket", type=str)
@click.argument("user_id", type=str)
@click.argument("platform_id", type=str)
@click.option("--namespace", type=str)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
@click.option("--doc", type=bool)
def admin_platform_link_v3(
        ticket: str,
        user_id: str,
        platform_id: str,
        namespace: Optional[str] = None,
        login_as: Optional[str] = None,
        doc: Optional[bool] = None,
):
    if doc:
        click.echo(admin_platform_link_v3_internal.__doc__)
        return
    login_as_internal(login_as)
    _, error = admin_platform_link_v3_internal(
        ticket=ticket,
        user_id=user_id,
        platform_id=platform_id,
        namespace=namespace,
    )
    if error:
        raise Exception(f"AdminPlatformLinkV3 failed: {str(error)}")
    click.echo("AdminPlatformLinkV3 success")
