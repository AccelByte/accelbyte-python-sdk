import json
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from ....api.social import import_stats as import_stats_internal
from ....api.social.models import ErrorEntity
from ....api.social.models import StatImportInfo


@click.command()
@click.option("--file", "file", type=str)
@click.option("--replace_existing", "replace_existing", type=bool)
@click.option("--namespace", type=str)
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def import_stats(
        file: Optional[str] = None,
        replace_existing: Optional[bool] = None,
        namespace: Optional[str] = None,
        doc: Optional[bool] = None,
        login_as: Optional[str] = None,
):
    login_as_internal(login_as)
    if doc:
        click.echo(import_stats_internal.__doc__)
    try:
        file_json = json.loads(file)
        file = Any.create_from_dict(file_json)
    except ValueError as e:
        raise Exception(f"Invalid JSON for 'file'. {str(e)}")
    result, error = import_stats_internal(
        file=file,
        replace_existing=replace_existing,
        namespace=namespace,
    )
    if error:
        raise Exception(f"importStats failed: {str(error)}")
    click.echo("importStats success")
