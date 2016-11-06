#!/bin/bash
$(mysql -u "root" "-ppassword" "headers" < "/opt/headers.sql")
