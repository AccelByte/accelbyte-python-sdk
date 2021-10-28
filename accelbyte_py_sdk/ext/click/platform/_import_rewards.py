import json
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from ....api.platform import import_rewards as import_rewards_internal
from ....api.platform.models import ErrorEntity


@click.command()
@click.argument("replace_existing", type=bool)
@click.option("--file", "file", type=str)
@click.option("--namespace", type=str)
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def import_rewards(
        replace_existing: bool,
        file: Optional[str] = None,
        namespace: Optional[str] = None,
        doc: Optional[bool] = None,
        login_as: Optional[str] = None,
):
    login_as_internal(login_as)
    if doc:
        click.echo(import_rewards_internal.__doc__)
    try:
        file_json = json.loads(file)
        file = Any.create_from_dict(file_json)
    except ValueError as e:
        raise Exception(f"Invalid JSON for 'file'. {str(e)}")
    result, error = import_rewards_internal(
        replace_existing=replace_existing,
        file=file,
        namespace=namespace,
    )
    if error:
        raise Exception(f"importRewards failed: {str(error)}")
    click.echo("importRewards success")
