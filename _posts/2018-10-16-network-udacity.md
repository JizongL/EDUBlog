---
layout: post
title:  Full Stack Udacity SQL Programming
date:   2018-10-12 10:00
categories: Network
tags: linux
---

* content
{: toc}




ping -c3 8.8.8.8


`printf 'HEAD / HTTP/1.1\r\nHost: en.wikipedia.org\r\n\r\n' | nc en.wikipedia.org 80`

`printf`

`nc -> netcat`

`nc localhost 22`

`|` pipeline

| Layer         | Protocols     | Concepts  |
| ------------- |:-------------:| -----:|
| Application   | HTTP,SSH      | URLS, Password |
| Transport     | TCP, UDP      |  Port numbers, Sessions |
| Internet      |   IP          | addresses,routes |
|Hardware       | wifi, ethernet, DSL     |  Signal, Strength, access points |


highest port number is 65535



1023 is reserved for root user.     


`lsof` utility lists open files, including network sockets.
`sudo lsof -i`


A address
DNS

Domain Name
Register
IP address

if DNS down, no access to the website.

The Resolver.

dig


CNAME
Canonical name

AAAA quad-A
IPv6 address

NS
DNS name server.


root server



Apache
virtual hosts

NGINX
multiple server blocks

C-Name
www.github.com is `C-Name` for the host github.com

Search Domain

32-bit address

Netblocks and Subnets
22-bit
24-bit


Ethernet Interface
eth0

wifi interface
wlan0

Loopback Interface
lo

Tunnel Interface

Virtual machine Interface


`ip addr show`

`ifconfig | less`

Routers and Default Gateways


private address Netblocks

three types
10.0.0.0/8
172.16.0.0/12
192.168.0.0/16

most common 192.168.0.0/24
default gateway 192.168.0.1

REF 1918 look up



Nat = network address translation

| protocol         | concepts     | where the code is  | failures |
| ------------- |:-------------:| |:-------------:| -----:|
|HTTP   | resources, UTLs, verbs, cookies       |Flasks, Apache, Browsers,... | error codes slow responses|
| TCP     | ports, sessions, stream, sockets      |OS kernal, system libraries | broken connections timeouts |
| IP      |   IP address, packets          | OS kernal, routers | various |
|wifi       | access points WPA passwords     |  device driver | network availability |


`sudo tcpdump -n port 53`


### The six basic TCP flags
The original TCP packet format has six flags. Two more optional flags have since been standardized, but they are much less important to the basic functioning of TCP. For each packet, tcpdump will show you which flags are set on that packet.

SYN (synchronize) [S] — This packet is opening a new TCP session and contains a new initial sequence number.
FIN (finish) [F] — This packet is used to close a TCP session normally. The sender is saying that they are finished sending, but they can still receive data from the other endpoint.
PSH (push) [P] — This packet is the end of a chunk of application data, such as an HTTP request.
RST (reset) [R] — This packet is a TCP error message; the sender has a problem and wants to reset (abandon) the session.
ACK (acknowledge) [.] — This packet acknowledges that its sender has received data from the other endpoint. Almost every packet except the first SYN will have the ACK flag set.
URG (urgent) [U] — This packet contains data that needs to be delivered to the application out-of-order. Not used in HTTP or most other current applications.

**ICMP and UDP don't have TCP flags**
If you look at tcpdump data for pings or basic DNS lookups, you will not see flags. This is because ping uses ICMP, and basic DNS lookups use UDP. These protocols do not have TCP flags or sequence numbers.


 Dynamic Host Configuration Protocol (DHCP)
 Media Access Control (MAC)
Internet Corporation for Assigned Names and Numbers (ICANN)
  The last word in a domain name represents a top-level domain



Bandwidth and latency

middleboxes
A firewall is one example of a class of network devices called middleboxes — devices that inspect, modify, or filter network traffic.


Clbuttic Mistake
