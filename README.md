Scrutiny
========

About
-----

Scrutiny is a distributed system monitor, similar to Xymon or Nagios. It was built to be flexible,
extensible, and easy to use. It consists of two parts:

#### Server ####
Scrutiny Server receives all client data and provides a dashboard for monitoring your systems, 
and provides alerting and notification features when the reported metrics hit their trigger conditions.

#### Client ####
The Scrutiny client resides on each system, and provides the analysis of the systems and reports that
data to the server.

Status
------

Scrutiny is still in a pre-alpha phase - in other words, I just came up with the idea, and I wanted 
to have it written down in such a way that I would tackle the project.

TODOs
-----

#### Server ####
* Create Server
* Provide Notification settings
* provide alerting settings
* provide user login/access credentials
* add charting/graphing/timeline system

#### Client ####
* Create Client
* Manage connectivity between client and server
* Create example monitor scripts

Legal Stuff
-----------

Copyright (c) 2012, Christopher Kruse
All rights reserved.

Redistribution and use in source and binary forms, with or without
modification, are permitted provided that the following conditions are met:

    * Redistributions of source code must retain the above copyright
      notice, this list of conditions and the following disclaimer.

    * Redistributions in binary form must reproduce the above copyright
      notice, this list of conditions and the following disclaimer in the
      documentation and/or other materials provided with the distribution.

    * Neither the name of the <organization> nor the
      names of its contributors may be used to endorse or promote products
      derived from this software without specific prior written permission.

THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND
ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
DISCLAIMED. IN NO EVENT SHALL <COPYRIGHT HOLDER> BE LIABLE FOR ANY
DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
(INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND
ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
(INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
