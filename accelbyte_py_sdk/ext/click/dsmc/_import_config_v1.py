import json
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from ....api.dsmc import import_config_v1 as import_config_v1_internal
from ....api.dsmc.models import ModelsImportResponse
from ....api.dsmc.models import ResponseError


@click.command()
@click.option("--file", "file", type=str)
@click.option("--namespace", type=str)
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def import_config_v1(
        file: Optional[str] = None,
        namespace: Optional[str] = None,
        doc: Optional[bool] = None,
        login_as: Optional[str] = None,
):
    login_as_internal(login_as)
    if doc:
        click.echo(import_config_v1_internal.__doc__)
    try:
        file_json = json.loads(file)
        file = Any.create_from_dict(file_json)
    except ValueError as e:
        raise Exception(f"Invalid JSON for 'file'. {str(e)}")
    result, error = import_config_v1_internal(
        file=file,
        namespace=namespace,
    )
    if error:
        raise Exception(f"importConfigV1 failed: {str(error)}")
    click.echo("importConfigV1 success")
