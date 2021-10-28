import json
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from ....api.platform import get_published_store_backup as get_published_store_backup_internal
from ....api.platform.models import ErrorEntity
from ....api.platform.models import StoreBackupInfo


@click.command()
@click.option("--namespace", type=str)
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def get_published_store_backup(
        namespace: Optional[str] = None,
        doc: Optional[bool] = None,
        login_as: Optional[str] = None,
):
    login_as_internal(login_as)
    if doc:
        click.echo(get_published_store_backup_internal.__doc__)
    result, error = get_published_store_backup_internal(
        namespace=namespace,
    )
    if error:
        raise Exception(f"getPublishedStoreBackup failed: {str(error)}")
    click.echo("getPublishedStoreBackup success")
