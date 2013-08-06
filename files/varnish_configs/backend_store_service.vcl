backend store_service_localhost {
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
      "Host: store-service.systest.dbg.westfield.com"
      "Connection: close";
  }
}

director store_service random {
  { .backend = store_service_localhost; .weight = 1; }
}

