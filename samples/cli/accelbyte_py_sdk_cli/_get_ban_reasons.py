import click

from accelbyte_py_sdk.api.iam import admin_get_list_ban_reason_v3

from ._utils import login_as as login_as_internal


@click.command()
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def get_ban_reasons(
        doc,
        login_as,
):
    login_as_internal(login_as)
    if doc:
        click.echo(admin_get_list_ban_reason_v3.__doc__)
    result, error = admin_get_list_ban_reason_v3()
    if error:
        raise Exception(str(error))
    click.echo("Get ban reasons success.")
    if result and result.reasons:
        reasons = "\n- ".join([f'{r.reason}: {r.description}' for r in result.reasons])
        click.echo(f"Ban Reasons: \n- {reasons}")
