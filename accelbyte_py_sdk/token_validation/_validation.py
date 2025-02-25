from typing import List, Optional

from ._cache_types import NamespaceContextCache
from ._ctypes import PermissionStruct


STUDIO_GAME_DELIMITER: str = "-"


def validate_action(action: int, expected_action: int) -> bool:
    return (action & expected_action) == expected_action


def validate_resource(
    resource: str,
    expected_resource: str,
    namespace_context_cache: Optional[NamespaceContextCache] = None,
    **kwargs,
) -> bool:
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
            if r_token.endswith("-") and i > 0:
                prev_r_token = r_items[i - 1]
                if prev_r_token == "NAMESPACE":
                    if (
                        STUDIO_GAME_DELIMITER in e_token
                        and len(e_token.split(STUDIO_GAME_DELIMITER)) == 2
                        and e_token.startswith(r_token)
                    ):
                        continue
                    if r_token == f"{e_token}{STUDIO_GAME_DELIMITER}":
                        continue
                    if namespace_context_cache:
                        context = namespace_context_cache.get_namespace_context(
                            namespace=e_token,
                            **kwargs,
                        )
                        if (
                            context is not None
                            and context.type_ == "Game"
                            and r_token.startswith(context.studio_namespace)
                        ):
                            continue
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


def validate_permission(
    target: PermissionStruct,
    permissions: List[PermissionStruct],
    namespace_context_cache: Optional[NamespaceContextCache] = None,
    **kwargs,
) -> bool:
    for permission in permissions:
        if validate_action(permission.action, target.action) and validate_resource(
            permission.resource, target.resource, namespace_context_cache, **kwargs
        ):
            return True

    return False
