const http = require("http"),
  os = require("os");

let handler = (req, resp) => {
  resp.writeHead(200);
  resp.end(
    "Request from: " +
      req.connection.remoteAddress +
      "\n" +
      "Server: " +
      os.hostname() +
      "\n" +
      "Server Version: " +
      process.argv[2] +
      "\n"
  );
};

http.createServer(handler).listen(8080);
