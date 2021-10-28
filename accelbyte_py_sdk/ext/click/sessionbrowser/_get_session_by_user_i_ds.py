import json
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from ....api.sessionbrowser import get_session_by_user_i_ds as get_session_by_user_i_ds_internal
from ....api.sessionbrowser.models import ModelsSessionByUserIDsResponse
from ....api.sessionbrowser.models import ResponseError


@click.command()
@click.argument("user_ids", type=str)
@click.option("--namespace", type=str)
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def get_session_by_user_i_ds(
        user_ids: str,
        namespace: Optional[str] = None,
        doc: Optional[bool] = None,
        login_as: Optional[str] = None,
):
    login_as_internal(login_as)
    if doc:
        click.echo(get_session_by_user_i_ds_internal.__doc__)
    result, error = get_session_by_user_i_ds_internal(
        user_ids=user_ids,
        namespace=namespace,
    )
    if error:
        raise Exception(f"GetSessionByUserIDs failed: {str(error)}")
    click.echo("GetSessionByUserIDs success")
