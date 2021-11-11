# justice-social-service (1.21.0)

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
from ....api.social import delete_user_stat_items_2 as delete_user_stat_items_2_internal
from ....api.social.models import ErrorEntity


@click.command()
@click.argument("stat_code", type=str)
@click.argument("user_id", type=str)
@click.option("--additional_key", "additional_key", type=str)
@click.option("--namespace", type=str)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
@click.option("--doc", type=bool)
def delete_user_stat_items_2(
        stat_code: str,
        user_id: str,
        additional_key: Optional[str] = None,
        namespace: Optional[str] = None,
        login_as: Optional[str] = None,
        doc: Optional[bool] = None,
):
    if doc:
        click.echo(delete_user_stat_items_2_internal.__doc__)
        return
    login_as_internal(login_as)
    _, error = delete_user_stat_items_2_internal(
        stat_code=stat_code,
        user_id=user_id,
        additional_key=additional_key,
        namespace=namespace,
    )
    if error:
        raise Exception(f"deleteUserStatItems_2 failed: {str(error)}")
    click.echo("deleteUserStatItems_2 success")
