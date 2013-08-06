backend search_service_localhost {
  .host = "localhost";
  .port = "8080";
  .max_connections = 16;
  .probe = {
    .timeout = 500 ms;
    .interval = 10 s;
    .window = 5;
    .threshold = 2;
    .request = 
      "GET /robots.txt HTTP/1.1"
      "Host: search-service.systest.dbg.westfield.com"
      "Connection: close";
  }
}

director search_service random {
  { .backend = search_service_localhost; .weight = 1; }
}

