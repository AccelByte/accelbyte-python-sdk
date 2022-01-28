# Justice Matchmaking Service (2.13.2)

# Copyright (c) 2018 - 2022 AccelByte Inc. All Rights Reserved.
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
from accelbyte_py_sdk.api.matchmaking import update_play_time_weight as update_play_time_weight_internal
from accelbyte_py_sdk.api.matchmaking.models import ModelsUpdatePlayTimeWeightRequest
from accelbyte_py_sdk.api.matchmaking.models import ModelsUpdatePlayerPlaytimeWeightResponse
from accelbyte_py_sdk.api.matchmaking.models import ResponseError
from accelbyte_py_sdk.api.matchmaking.models import ResponseErrorV1


@click.command()
@click.argument("body", type=str)
@click.option("--namespace", type=str)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
@click.option("--doc", type=bool)
def update_play_time_weight(
        body: str,
        namespace: Optional[str] = None,
        login_as: Optional[str] = None,
        doc: Optional[bool] = None,
):
    if doc:
        click.echo(update_play_time_weight_internal.__doc__)
        return
    login_as_internal(login_as)
    if body is not None:
        try:
            body_json = json.loads(body)
            body = ModelsUpdatePlayTimeWeightRequest.create_from_dict(body_json)
        except ValueError as e:
            raise Exception(f"Invalid JSON for 'body'. {str(e)}") from e
    _, error = update_play_time_weight_internal(
        body=body,
        namespace=namespace,
    )
    if error:
        raise Exception(f"UpdatePlayTimeWeight failed: {str(error)}")
    click.echo("UpdatePlayTimeWeight success")
