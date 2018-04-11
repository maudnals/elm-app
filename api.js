const jsonServer = require('json-server');

// create an express server
const server = jsonServer.create();

// set defaults middlewares (logger, cors and no-cache)
server.use(jsonServer.defaults());

// create router
const router = jsonServer.router('db.json');

// configure server to use router
server.use(router);

// start server
server.listen(4000);
