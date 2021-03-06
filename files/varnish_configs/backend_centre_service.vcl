backend centre_service_localhost {
  .host = "localhost";
  .port = "8080";
  .max_connections = 16;
  .probe = {
    .timeout = 1 s;
    .interval = 10 s;
    .window = 5;
    .threshold = 2;
    .request = 
      "GET /status.json HTTP/1.1"
      "Host: centre-service.development.dbg.westfield.com"
      "Connection: close";
  }
}

director centre_service random {
  { .backend = centre_service_localhost; .weight = 1; }
}

