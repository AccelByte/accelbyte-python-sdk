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
from ....api.iam import list_cross_namespace_account_link as list_cross_namespace_account_link_internal


@click.command()
@click.argument("linking_token", type=str)
@click.argument("user_id", type=str)
@click.option("--platform_id", "platform_id", type=str)
@click.option("--namespace", type=str)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
@click.option("--doc", type=bool)
def list_cross_namespace_account_link(
        linking_token: str,
        user_id: str,
        platform_id: Optional[str] = None,
        namespace: Optional[str] = None,
        login_as: Optional[str] = None,
        doc: Optional[bool] = None,
):
    if doc:
        click.echo(list_cross_namespace_account_link_internal.__doc__)
        return
    login_as_internal(login_as)
    _, error = list_cross_namespace_account_link_internal(
        linking_token=linking_token,
        user_id=user_id,
        platform_id=platform_id,
        namespace=namespace,
    )
    if error:
        raise Exception(f"ListCrossNamespaceAccountLink failed: {str(error)}")
    click.echo("ListCrossNamespaceAccountLink success")