# justice-event-log-service ()

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
from accelbyte_py_sdk.api.eventlog import get_event_specific_user_v2_handler as get_event_specific_user_v2_handler_internal
from accelbyte_py_sdk.api.eventlog.models import ModelsEventResponseV2


@click.command()
@click.argument("user_id", type=str)
@click.option("--end_date", "end_date", type=str)
@click.option("--event_name", "event_name", type=str)
@click.option("--offset", "offset", type=float)
@click.option("--page_size", "page_size", type=float)
@click.option("--start_date", "start_date", type=str)
@click.option("--namespace", type=str)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
@click.option("--doc", type=bool)
def get_event_specific_user_v2_handler(
        user_id: str,
        end_date: Optional[str] = None,
        event_name: Optional[str] = None,
        offset: Optional[float] = None,
        page_size: Optional[float] = None,
        start_date: Optional[str] = None,
        namespace: Optional[str] = None,
        login_as: Optional[str] = None,
        doc: Optional[bool] = None,
):
    if doc:
        click.echo(get_event_specific_user_v2_handler_internal.__doc__)
        return
    login_as_internal(login_as)
    _, error = get_event_specific_user_v2_handler_internal(
        user_id=user_id,
        end_date=end_date,
        event_name=event_name,
        offset=offset,
        page_size=page_size,
        start_date=start_date,
        namespace=namespace,
    )
    if error:
        raise Exception(f"GetEventSpecificUserV2Handler failed: {str(error)}")
    click.echo("GetEventSpecificUserV2Handler success")
