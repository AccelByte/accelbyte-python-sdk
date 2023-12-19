# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template_file: python-cli-command.j2

# AGS Event Log Service (2.2.1)

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
import yaml
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from .._utils import to_dict
from accelbyte_py_sdk.api.eventlog import (
    get_event_by_user_id_and_event_id_handler as get_event_by_user_id_and_event_id_handler_internal,
)
from accelbyte_py_sdk.api.eventlog.models import ModelsEventResponse


@click.command()
@click.argument("event_id", type=float)
@click.argument("user_id", type=str)
@click.argument("end_date", type=str)
@click.argument("page_size", type=int)
@click.argument("start_date", type=str)
@click.option("--offset", "offset", type=int)
@click.option("--namespace", type=str)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
@click.option("--login_with_auth", type=str)
@click.option("--doc", type=bool)
def get_event_by_user_id_and_event_id_handler(
    event_id: float,
    user_id: str,
    end_date: str,
    page_size: int,
    start_date: str,
    offset: Optional[int] = None,
    namespace: Optional[str] = None,
    login_as: Optional[str] = None,
    login_with_auth: Optional[str] = None,
    doc: Optional[bool] = None,
):
    if doc:
        click.echo(get_event_by_user_id_and_event_id_handler_internal.__doc__)
        return
    x_additional_headers = None
    if login_with_auth:
        x_additional_headers = {"Authorization": login_with_auth}
    else:
        login_as_internal(login_as)
    result, error = get_event_by_user_id_and_event_id_handler_internal(
        event_id=event_id,
        user_id=user_id,
        end_date=end_date,
        page_size=page_size,
        start_date=start_date,
        offset=offset,
        namespace=namespace,
        x_additional_headers=x_additional_headers,
    )
    if error:
        raise Exception(f"GetEventByUserIDAndEventIDHandler failed: {str(error)}")
    click.echo(yaml.safe_dump(to_dict(result), sort_keys=False))


get_event_by_user_id_and_event_id_handler.operation_id = (
    "GetEventByUserIDAndEventIDHandler"
)
get_event_by_user_id_and_event_id_handler.is_deprecated = True
