## Python Extend SDK CLI Sample App Operation Index for Sessionhistory service.

### Operation `create_xray_ticket_observability`
```sh
$ python -m accelbyte_py_sdk_cli 'sessionhistory-create-xray-ticket-observability' \
    '{"action": "string", "activeAllianceRule": {}, "activeMatchingRule": [{}], "function": "string", "gameMode": "string", "isBackfillMatch": false, "isRuleSetFlexed": false, "iteration": 1, "matchID": "string", "namespace": "string", "remainingPlayersPerTicket": [1], "remainingTickets": 1, "sessionTickID": "string", "tickID": 1, "ticketID": "string", "timeToMatchSec": 3.14, "timestamp": "2000-01-01T12:34:56Z", "unbackfillReason": "string", "unmatchReason": "string"}' \
    'string' \
    > result.txt
```

### Operation `create_xray_bulk_ticket_observability`
```sh
$ python -m accelbyte_py_sdk_cli 'sessionhistory-create-xray-bulk-ticket-observability' \
    '{"ticketObservabilities": [{}]}' \
    'string' \
    > result.txt
```

