'use strict';

const Mongodb = require('@pick-star/cli-mongodb');
const { mongodnUrl, mongodbDbName } = require('../../config/db');

function mongo(){
    return new Mongodb(mongodnUrl, mongodbDbName);
}

module.exports = mongo;