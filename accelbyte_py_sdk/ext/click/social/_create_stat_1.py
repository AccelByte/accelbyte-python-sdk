import json
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from ....api.social import create_stat_1 as create_stat_1_internal
from ....api.social.models import ErrorEntity
from ....api.social.models import StatCreate
from ....api.social.models import StatInfo


@click.command()
@click.option("--body", "body", type=str)
@click.option("--namespace", type=str)
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def create_stat_1(
        body: Optional[str] = None,
        namespace: Optional[str] = None,
        doc: Optional[bool] = None,
        login_as: Optional[str] = None,
):
    login_as_internal(login_as)
    if doc:
        click.echo(create_stat_1_internal.__doc__)
    try:
        body_json = json.loads(body)
        body = StatCreate.create_from_dict(body_json)
    except ValueError as e:
        raise Exception(f"Invalid JSON for 'body'. {str(e)}")
    result, error = create_stat_1_internal(
        body=body,
        namespace=namespace,
    )
    if error:
        raise Exception(f"createStat_1 failed: {str(error)}")
    click.echo("createStat_1 success")
