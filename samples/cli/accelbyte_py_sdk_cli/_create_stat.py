import json
import yaml

import click

from accelbyte_py_sdk.api.social import create_stat as create_stat_internal
from accelbyte_py_sdk.api.social.models import StatCreate

from ._utils import login_as as login_as_internal


@click.command()
@click.argument("stat_create")
@click.option("--namespace")
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def create_stat(
        stat_create,
        namespace,
        doc,
        login_as,
):
    login_as_internal(login_as)
    if doc:
        click.echo(create_stat_internal.__doc__)
    stat_create = json.loads(stat_create)
    body = StatCreate.create_from_dict(stat_create)
    result, error = create_stat_internal(
        body=body,
        namespace=namespace,
    )
    if error:
        raise Exception(str(error))
    click.echo("Create stat success.")
    click.echo(yaml.safe_dump(result.to_dict()))
