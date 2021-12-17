# justice-cloudsave-service (1.9.1)

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
from ....api.cloudsave import list_game_records_handler_v1 as list_game_records_handler_v1_internal
from ....api.cloudsave.models import ModelsListGameRecordKeys
from ....api.cloudsave.models import ModelsResponseError


@click.command()
@click.argument("limit", type=int)
@click.argument("offset", type=int)
@click.option("--namespace", type=str)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
@click.option("--doc", type=bool)
def list_game_records_handler_v1(
        limit: int,
        offset: int,
        namespace: Optional[str] = None,
        login_as: Optional[str] = None,
        doc: Optional[bool] = None,
):
    if doc:
        click.echo(list_game_records_handler_v1_internal.__doc__)
        return
    login_as_internal(login_as)
    _, error = list_game_records_handler_v1_internal(
        limit=limit,
        offset=offset,
        namespace=namespace,
    )
    if error:
        raise Exception(f"listGameRecordsHandlerV1 failed: {str(error)}")
    click.echo("listGameRecordsHandlerV1 success")
