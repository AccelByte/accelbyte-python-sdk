import json
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from ....api.sessionbrowser import query_session as query_session_internal
from ....api.sessionbrowser.models import ModelsSessionQueryResponse
from ....api.sessionbrowser.models import ResponseError


@click.command()
@click.argument("session_type", type=str)
@click.option("--user_id", "user_id", type=str)
@click.option("--game_mode", "game_mode", type=str)
@click.option("--game_version", "game_version", type=str)
@click.option("--joinable", "joinable", type=str)
@click.option("--match_id", "match_id", type=str)
@click.option("--match_exist", "match_exist", type=str)
@click.option("--server_status", "server_status", type=str)
@click.option("--offset", "offset", type=str)
@click.option("--limit", "limit", type=str)
@click.option("--namespace", type=str)
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def query_session(
        session_type: str,
        user_id: Optional[str] = None,
        game_mode: Optional[str] = None,
        game_version: Optional[str] = None,
        joinable: Optional[str] = None,
        match_id: Optional[str] = None,
        match_exist: Optional[str] = None,
        server_status: Optional[str] = None,
        offset: Optional[str] = None,
        limit: Optional[str] = None,
        namespace: Optional[str] = None,
        doc: Optional[bool] = None,
        login_as: Optional[str] = None,
):
    login_as_internal(login_as)
    if doc:
        click.echo(query_session_internal.__doc__)
    result, error = query_session_internal(
        session_type=session_type,
        user_id=user_id,
        game_mode=game_mode,
        game_version=game_version,
        joinable=joinable,
        match_id=match_id,
        match_exist=match_exist,
        server_status=server_status,
        offset=offset,
        limit=limit,
        namespace=namespace,
    )
    if error:
        raise Exception(f"QuerySession failed: {str(error)}")
    click.echo("QuerySession success")
