from datetime import datetime
from typing import List, Optional

from ._ctypes import PermissionStruct


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


def validate_resource(resource: str, expected_resource: str) -> bool:
    # Split both the resource and the expected resource into tokens with ':' as delimiter.
    r_items = resource.split(":")
    e_items = expected_resource.split(":")

    r_items_len = len(r_items)
    e_items_len = len(e_items)
    min_len = min(r_items_len, e_items_len)

    # Compare each token in the resource and the expected resource from left to right.
    for i in range(min_len):
        r_token = r_items[i]
        e_token = e_items[i]
        # If token string match or other one is '*', then proceed to next token.
        # Otherwise, we can stop here because the resource does not match.
        # |                       vvv : DOES NOT MATCH
        # | resource(1):          BAR
        # | expected_resource(1): FOO
        if r_token != e_token and r_token != "*":
            return False

    # If the number of resource tokens < the number of expected resource tokens.
    if r_items_len < e_items_len:
        # If the last resource token is '*',
        # we can stop here because the resource does not match.
        # |                           vvv : DOES NOT MATCH!
        # | resource(2):          FOO:BAR
        # | expected_resource(3): FOO:BAR:BAZ
        if r_items[-1] != "*":
            return False

        # If the second resource token from the right is 'NAMESPACE' or 'USER',
        # we can stop here because the resource does not match.
        # |                           vvvv : DOES NOT MATCH
        # | resource(3):          FOO:USER:*
        # | expected_resource(4): FOO:BAR:BAZ:QUX
        elif r_items_len >= 2 and r_items[-2] in ("NAMESPACE", "USER"):
            return False

    # If the number resource tokens > the number of expected resource tokens.
    if r_items_len > e_items_len:
        for i in range(e_items_len, r_items_len):
            # If the remaining resource tokens are ALL '*', then proceed.
            # Otherwise, we can stop here and the resource does not match.
            # |                           vvv : DOES NOT MATCH!
            # | resource(2):          FOO:BAR
            # | expected_resource(1): FOO
            if r_items[i] != "*":
                return False

    return True


def validate_action(action: int, expected_action: int) -> bool:
    return (action & expected_action) == expected_action


def validate_permission(
    target: PermissionStruct, permissions: List[PermissionStruct]
) -> bool:
    for permission in permissions:
        if validate_action(permission.action, target.action) and validate_resource(
            permission.resource, target.resource
        ):
            return True

    return False
