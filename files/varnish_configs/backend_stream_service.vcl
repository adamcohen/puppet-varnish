backend stream_service_localhost {
  .host = "localhost";
  .port = "8080";
  .max_connections = 16;
  .probe = {
    .timeout = 500 ms;
    .interval = 10 s;
    .window = 5;
    .threshold = 2;
    .request = 
      "GET /status.json HTTP/1.1"
      "Host: stream-service.development.dbg.westfield.com"
      "Connection: close";
  }
}

director stream_service random {
  { .backend = stream_service_localhost; .weight = 1; }
}

