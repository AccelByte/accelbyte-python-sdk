from ._integration_test_case import IntegrationTestCase


class QosmTestCase(IntegrationTestCase):
# region test:heartbeat

    def test_heartbeat(self):
        from accelbyte_py_sdk.api.qosm import list_server
        from accelbyte_py_sdk.api.qosm.models import ModelsHeartbeatRequest
        from accelbyte_py_sdk.api.qosm import heartbeat

        # arrange
        result, error = list_server()
        self.assertIsNone(error, error)

        # act
        if len(result.servers) > 0:
            server = result.servers[0]
            body = (
                ModelsHeartbeatRequest()
                .with_ip(server.ip)
                .with_port(server.port)
                .with_region(server.region)
            )
            result, error = heartbeat(body=body)

        # assert
        self.assertIsNone(error, error)

# endregion test:heartbeat
