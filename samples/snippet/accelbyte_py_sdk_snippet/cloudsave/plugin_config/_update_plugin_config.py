import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.cloudsave import update_plugin_config
from accelbyte_py_sdk.api.cloudsave.models import ModelsPluginRequest
from accelbyte_py_sdk.api.cloudsave.models import ModelsPluginResponse
from accelbyte_py_sdk.api.cloudsave.models import ModelsResponseError

"""
body:
Definition: ModelsPluginRequest
app_config: ModelsAppConfig
Definition: ModelsAppConfig
    app_name: str
custom_config: ModelsCustomConfig
Definition: ModelsCustomConfig
    grpc_address: str
custom_function: ModelsCustomFunction
Definition: ModelsCustomFunction
    after_bulk_read_game_binary_record: bool
    after_bulk_read_game_record: bool
    after_bulk_read_player_binary_record: bool
    after_bulk_read_player_record: bool
    after_read_game_binary_record: bool
    after_read_game_record: bool
    after_read_player_binary_record: bool
    after_read_player_record: bool
    before_write_admin_game_record: bool
    before_write_admin_player_record: bool
    before_write_game_binary_record: bool
    before_write_game_record: bool
    before_write_player_binary_record: bool
    before_write_player_record: bool
extend_type: str

Example: '{"appConfig": {"appName": "MZ3eIqBSiKLxMqEw"}, "customConfig": {"GRPCAddress": "cvHH1SDUTg97w899"}, "customFunction": {"afterBulkReadGameBinaryRecord": false, "afterBulkReadGameRecord": true, "afterBulkReadPlayerBinaryRecord": true, "afterBulkReadPlayerRecord": false, "afterReadGameBinaryRecord": false, "afterReadGameRecord": true, "afterReadPlayerBinaryRecord": false, "afterReadPlayerRecord": false, "beforeWriteAdminGameRecord": false, "beforeWriteAdminPlayerRecord": true, "beforeWriteGameBinaryRecord": false, "beforeWriteGameRecord": false, "beforeWritePlayerBinaryRecord": true, "beforeWritePlayerRecord": true}, "extendType": "APP"}'
"""

result, error = update_plugin_config(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)