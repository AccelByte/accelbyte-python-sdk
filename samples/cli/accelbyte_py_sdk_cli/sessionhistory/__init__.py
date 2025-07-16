# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template_file: python-cli-init.j2

# justice-session-history-service

from ._create_xray_ticket_observability import create_xray_ticket_observability
from ._create_xray_bulk_ticket_observability import (
    create_xray_bulk_ticket_observability,
)


commands = [
    create_xray_ticket_observability,
    create_xray_bulk_ticket_observability,
]
