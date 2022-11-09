import logging
import shlex
from typing import Any, Optional

import click

from accelbyte_py_sdk import initialize

from accelbyte_py_sdk_cli.iam import commands as iam_commands
from accelbyte_py_sdk_cli.achievement import commands as achievement_commands
from accelbyte_py_sdk_cli.basic import commands as basic_commands
from accelbyte_py_sdk_cli.cloudsave import commands as cloudsave_commands
from accelbyte_py_sdk_cli.dslogmanager import commands as dslogmanager_commands
from accelbyte_py_sdk_cli.dsmc import commands as dsmc_commands
from accelbyte_py_sdk_cli.eventlog import commands as eventlog_commands
from accelbyte_py_sdk_cli.gametelemetry import commands as gametelemetry_commands
from accelbyte_py_sdk_cli.gdpr import commands as gdpr_commands
from accelbyte_py_sdk_cli.group import commands as group_commands
from accelbyte_py_sdk_cli.leaderboard import commands as leaderboard_commands
from accelbyte_py_sdk_cli.legal import commands as legal_commands
from accelbyte_py_sdk_cli.lobby import commands as lobby_commands
from accelbyte_py_sdk_cli.match2 import commands as match2_commands
from accelbyte_py_sdk_cli.matchmaking import commands as matchmaking_commands
from accelbyte_py_sdk_cli.platform import commands as platform_commands
from accelbyte_py_sdk_cli.qosm import commands as qosm_commands
from accelbyte_py_sdk_cli.session import commands as session_commands
from accelbyte_py_sdk_cli.seasonpass import commands as seasonpass_commands
from accelbyte_py_sdk_cli.sessionbrowser import commands as sessionbrowser_commands
from accelbyte_py_sdk_cli.social import commands as social_commands
from accelbyte_py_sdk_cli.ugc import commands as ugc_commands

from accelbyte_py_sdk_cli._sessions import SessionWriter
from accelbyte_py_sdk_cli._sessions import TapSessionWriter
from accelbyte_py_sdk_cli._sessions import one_shot_websocket
from accelbyte_py_sdk_cli._sessions import start_batched_ws_session


@click.group()
def entry_point():
    initialize()


# noinspection PyUnresolvedReferences
@click.command()
@click.option("--continue_on_error", is_flag=True)
@click.option("--verbose", is_flag=True)
@click.option("--writer", type=click.Choice(["default", "tap"], case_sensitive=False))
@click.pass_context
def start_interactive_session(
    ctx,
    continue_on_error: bool = False,
    verbose: bool = False,
    writer: str = "default",
):
    writer = TapSessionWriter() if writer == "tap" else SessionWriter()

    click.echo = __intercept(ctx, "echo")
    logging.getLogger("accelbyte_py_sdk.http").error = __intercept(ctx, "log")

    error_count = 0

    while True:
        message = input()

        if message == "exit()":
            break
        elif message.strip() == "":
            continue

        # noinspection PyBroadException
        # pylint: disable=broad-except
        try:
            args = shlex.split(message)
            cmd_name, cmd, args = entry_point.resolve_command(ctx, args)
            sub_ctx = cmd.make_context(cmd_name, list(args), parent=ctx)
        except Exception as e:
            writer.write_warning(f"unable to resolve command '{message}'")
            if continue_on_error:
                error_count += 1
                continue
            else:
                exit(1)
                return

        # noinspection PyBroadException
        # pylint: disable=broad-except
        try:
            operation_id = cmd.operation_id
            is_deprecated = cmd.is_deprecated
        except Exception as e:
            writer.write_warning(f"operation identifier not found '{message}'")
            if continue_on_error:
                error_count += 1
                continue
            else:
                exit(1)
                return

        if is_deprecated:
            writer.write_warning(f"deprecated {operation_id}")
            if continue_on_error:
                error_count += 1
                continue
            else:
                exit(1)
                return

        # noinspection PyBroadException
        # pylint: disable=broad-except
        try:
            sub_ctx.command.invoke(sub_ctx)
        except Exception as e:
            indent = "  "
            delimiter = f"\n{indent}"
            error = operation_id
            lines = ["---", str(e)]
            if hasattr(ctx, "log") and isinstance(ctx.log, str):
                lines.extend(ctx.log.splitlines(keepends=False))
                ctx.log = None
            error += delimiter + delimiter.join(lines)
            writer.write_error(error.rstrip())
            if continue_on_error:
                error_count += 1
                continue
            else:
                exit(1)
                return

        success = operation_id
        if verbose and hasattr(ctx, "echo") and ctx.echo:
            echo = str(ctx.echo)
            if echo:
                indent = "  "
                success += f"\n{indent}---\n"
                success += "".join(
                    f"{indent}{line}" for line in echo.splitlines(keepends=True)
                ).rstrip()
            ctx.echo = None
        writer.write_log(success)

    print(writer.flush())

    if error_count != 0:
        exit(1)


def add_commands(grp, cmds, prefix: str = None):
    for cmd in cmds:
        grp.add_command(
            cmd, name=f"{f'{prefix}-' if prefix is not None else ''}{cmd.name}"
        )


def __intercept(obj, attr: str):
    def __intercept_impl(message: Optional[Any] = None, *args, **kwargs):
        setattr(obj, "attr", message)

    return __intercept_impl


add_commands(entry_point, iam_commands, prefix="iam")
add_commands(entry_point, achievement_commands, prefix="achievement")
add_commands(entry_point, basic_commands, prefix="basic")
add_commands(entry_point, dslogmanager_commands, prefix="dslogmanager")
add_commands(entry_point, cloudsave_commands, prefix="cloudsave")
add_commands(entry_point, dsmc_commands, prefix="dsmc")
add_commands(entry_point, eventlog_commands, prefix="eventlog")
add_commands(entry_point, gametelemetry_commands, prefix="gametelemetry")
add_commands(entry_point, gdpr_commands, prefix="gdpr")
add_commands(entry_point, group_commands, prefix="group")
add_commands(entry_point, leaderboard_commands, prefix="leaderboard")
add_commands(entry_point, legal_commands, prefix="legal")
add_commands(entry_point, lobby_commands, prefix="lobby")
add_commands(entry_point, match2_commands, prefix="match2")
add_commands(entry_point, matchmaking_commands, prefix="matchmaking")
add_commands(entry_point, platform_commands, prefix="platform")
add_commands(entry_point, qosm_commands, prefix="qosm")
add_commands(entry_point, session_commands, prefix="session")
add_commands(entry_point, seasonpass_commands, prefix="seasonpass")
add_commands(entry_point, sessionbrowser_commands, prefix="sessionbrowser")
add_commands(entry_point, social_commands, prefix="social")
add_commands(entry_point, ugc_commands, prefix="ugc")

entry_point.add_command(start_interactive_session)
entry_point.add_command(one_shot_websocket)
entry_point.add_command(start_batched_ws_session)


if __name__ == "__main__":
    entry_point()
