import json
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from ....api.social import update_stat as update_stat_internal
from ....api.social.models import ErrorEntity
from ....api.social.models import StatInfo
from ....api.social.models import StatUpdate


@click.command()
@click.argument("stat_code", type=str)
@click.option("--body", "body", type=str)
@click.option("--namespace", type=str)
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def update_stat(
        stat_code: str,
        body: Optional[str] = None,
        namespace: Optional[str] = None,
        doc: Optional[bool] = None,
        login_as: Optional[str] = None,
):
    login_as_internal(login_as)
    if doc:
        click.echo(update_stat_internal.__doc__)
    try:
        body_json = json.loads(body)
        body = StatUpdate.create_from_dict(body_json)
    except ValueError as e:
        raise Exception(f"Invalid JSON for 'body'. {str(e)}")
    result, error = update_stat_internal(
        stat_code=stat_code,
        body=body,
        namespace=namespace,
    )
    if error:
        raise Exception(f"updateStat failed: {str(error)}")
    click.echo("updateStat success")
