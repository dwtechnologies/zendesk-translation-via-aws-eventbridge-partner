const agentIntNoteEvent = require('../test/lambda-test-zendesk-internal-note.json);
const custCommEvent = require('../test/lambda-test-zendesk-customer-public.json');
const AWS = require('aws-sdk');

AWS.config.loadFromPath('../config/credentials.json');

function getTestEvent(id) {
    return custCommEvent;
}

module.exports = {
    getTestEvent: getTestEvent
}
