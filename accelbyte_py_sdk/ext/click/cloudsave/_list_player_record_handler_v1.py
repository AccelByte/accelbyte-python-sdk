# justice-cloudsave-service (1.9.0)

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
from ....api.cloudsave import list_player_record_handler_v1 as list_player_record_handler_v1_internal
from ....api.cloudsave.models import ModelsListPlayerRecordKeys
from ....api.cloudsave.models import ModelsResponseError


@click.command()
@click.option("--limit", "limit", type=int)
@click.option("--offset", "offset", type=int)
@click.option("--query", "query", type=str)
@click.option("--namespace", type=str)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
@click.option("--doc", type=bool)
def list_player_record_handler_v1(
        limit: Optional[int] = None,
        offset: Optional[int] = None,
        query: Optional[str] = None,
        namespace: Optional[str] = None,
        login_as: Optional[str] = None,
        doc: Optional[bool] = None,
):
    if doc:
        click.echo(list_player_record_handler_v1_internal.__doc__)
        return
    login_as_internal(login_as)
    _, error = list_player_record_handler_v1_internal(
        limit=limit,
        offset=offset,
        query=query,
        namespace=namespace,
    )
    if error:
        raise Exception(f"listPlayerRecordHandlerV1 failed: {str(error)}")
    click.echo("listPlayerRecordHandlerV1 success")
