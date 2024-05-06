import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.cloudsave import create_plugin_config
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

Example: '{"appConfig": {"appName": "yv9uxwJr5cHj8DVw"}, "customConfig": {"GRPCAddress": "dOy2xy8hVYUswP74"}, "customFunction": {"afterBulkReadGameBinaryRecord": false, "afterBulkReadGameRecord": true, "afterBulkReadPlayerBinaryRecord": true, "afterBulkReadPlayerRecord": true, "afterReadGameBinaryRecord": false, "afterReadGameRecord": true, "afterReadPlayerBinaryRecord": false, "afterReadPlayerRecord": true, "beforeWriteAdminGameRecord": false, "beforeWriteAdminPlayerRecord": false, "beforeWriteGameBinaryRecord": false, "beforeWriteGameRecord": true, "beforeWritePlayerBinaryRecord": false, "beforeWritePlayerRecord": false}, "extendType": "CUSTOM"}'
"""

result, error = create_plugin_config(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
