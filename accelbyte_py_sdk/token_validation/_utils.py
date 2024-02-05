from datetime import datetime
from typing import Optional


def replace_resource(
    resource: str,
    namespace: Optional[str] = None,
    token_namespace: Optional[str] = None,
    publisher_namespace: Optional[str] = None,
    user_id: Optional[str] = None,
    cross_allowed: bool = False,
) -> str:
    new_resource = resource

    if (
        cross_allowed
        and token_namespace is not None
        and (publisher_namespace == token_namespace or publisher_namespace == namespace)
    ):
        new_resource = new_resource.replace("{namespace}", token_namespace)

    if namespace is not None:
        new_resource = new_resource.replace("{namespace}", namespace)

    if user_id is not None:
        new_resource = new_resource.replace("{userId}", user_id)

    return new_resource


def str2datetime(s: str) -> datetime:
    # from: 'YYYY-mm-ddTHH:MM:SS.fffffffffZ'
    # to:   'YYYY-mm-ddTHH:MM:SS.fffZ+0000'
    tz = "Z+0000" if s.endswith("Z") else ""  # Add explicit UTC timezone.
    s = s[0:23] + tz
    return datetime.strptime(s, "%Y-%m-%dT%H:%M:%S.%fZ%z")
