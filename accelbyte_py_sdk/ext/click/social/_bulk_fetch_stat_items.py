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
from ....api.social import bulk_fetch_stat_items as bulk_fetch_stat_items_internal
from ....api.social.models import UserStatItemInfo
from ....api.social.models import ValidationErrorEntity


@click.command()
@click.argument("stat_code", type=str)
@click.argument("user_ids", type=str)
@click.option("--namespace", type=str)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
@click.option("--doc", type=bool)
def bulk_fetch_stat_items(
        stat_code: str,
        user_ids: str,
        namespace: Optional[str] = None,
        login_as: Optional[str] = None,
        doc: Optional[bool] = None,
):
    if doc:
        click.echo(bulk_fetch_stat_items_internal.__doc__)
        return
    login_as_internal(login_as)
    _, error = bulk_fetch_stat_items_internal(
        stat_code=stat_code,
        user_ids=user_ids,
        namespace=namespace,
    )
    if error:
        raise Exception(f"bulkFetchStatItems failed: {str(error)}")
    click.echo("bulkFetchStatItems success")
