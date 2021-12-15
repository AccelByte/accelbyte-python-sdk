# justice-event-log-service ()

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
from ....api.eventlog import query_event_stream_handler as query_event_stream_handler_internal
from ....api.eventlog.models import ModelsEventResponseV2
from ....api.eventlog.models import ModelsGenericQueryPayload


@click.command()
@click.argument("body", type=str)
@click.option("--end_date", "end_date", type=str)
@click.option("--offset", "offset", type=float)
@click.option("--page_size", "page_size", type=float)
@click.option("--start_date", "start_date", type=str)
@click.option("--namespace", type=str)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
@click.option("--doc", type=bool)
def query_event_stream_handler(
        body: str,
        end_date: Optional[str] = None,
        offset: Optional[float] = None,
        page_size: Optional[float] = None,
        start_date: Optional[str] = None,
        namespace: Optional[str] = None,
        login_as: Optional[str] = None,
        doc: Optional[bool] = None,
):
    if doc:
        click.echo(query_event_stream_handler_internal.__doc__)
        return
    login_as_internal(login_as)
    try:
        body_json = json.loads(body)
        body = ModelsGenericQueryPayload.create_from_dict(body_json)
    except ValueError as e:
        raise Exception(f"Invalid JSON for 'body'. {str(e)}") from e
    _, error = query_event_stream_handler_internal(
        body=body,
        end_date=end_date,
        offset=offset,
        page_size=page_size,
        start_date=start_date,
        namespace=namespace,
    )
    if error:
        raise Exception(f"QueryEventStreamHandler failed: {str(error)}")
    click.echo("QueryEventStreamHandler success")
