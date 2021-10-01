import click

from accelbyte_py_sdk.api.iam import admin_ban_user_v3
from accelbyte_py_sdk.api.iam.models import ModelBanCreateRequest

from ._utils import login_as as login_as_internal


@click.command()
@click.argument("user_id")
@click.argument("ban")
@click.argument("comment")
@click.argument("end_date")
@click.argument("reason")
@click.option("--namespace")
@click.option("--skip_notif", type=bool, default=True)
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def add_user_ban(
        user_id,
        ban,
        comment,
        end_date,
        reason,
        namespace,
        skip_notif,
        doc,
        login_as,
):
    login_as_internal(login_as)
    if doc:
        click.echo(admin_ban_user_v3.__doc__)
    result, error = admin_ban_user_v3(
        body=ModelBanCreateRequest.create(
            ban=ban,
            comment=comment,
            end_date=end_date,
            reason=reason,
            skip_notif=skip_notif
        ),
        user_id=user_id,
        namespace=namespace
    )
    if error:
        raise Exception(str(error))
    click.echo("Add user ban success.")
