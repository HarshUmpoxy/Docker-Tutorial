  +------------------+
  |                  |
  |     Service 1    |
  |  (nginx-ip x 1)  |
  |                  |
  +---------+--------+
            |
            |
  +---------+--------+
  |                  |
  |     Service 1    |
  |  (nginx-ip x 1)  |
  |                  |
  +---------+--------+
            |
            |                                   +------------------+     +------------------+
                                                |                  |     |                  |
            ------------------------------------|   Load Balancer  |     |      Browser     |
                                                |                  |     |                  |
                                                +------------------+     +------------------+
            |                             
  +---------+--------+
  |                  |
  |     Service 1    |
  |  (nginx-ip x 1)  |
  |                  |
  +---------+--------+
            |
            |
  +---------+--------+
  |                  |
  |     Service 1    |
  |  (nginx-ip x 1)  |
  |                  |
  +------------------+
 

## Explanation:

### Service 1 (nginx-ip):
Four instances of Nginx containers created from the custom image nginx-ip, each representing a backend server.
Load Balancer: A single instance of Nginx container acting as a load balancer, distributing requests to the backend servers.

### Load Balancing Methods:
Round-Robin: Requests are distributed evenly in a circular manner to each backend server.
Weighted (by traffic): Requests are distributed based on predefined weights assigned to each backend server, representing its capacity.
IP Hash (by client IP): Requests from the same client IP are consistently routed to the same backend server based on a hash function.
Least Connected (to backend servers): Requests are sent to the backend server with the fewest active connections.