#!/usr/bin/env bash

if [ ! -f tmp/pids/server.pid ]; then
  echo "File tmp/pids/server.pid does not exists. Fine.";
else
  echo "File tmp/pids/server.pid exists! Removing...";
  rm tmp/pids/server.pid
fi

#echo "Precompiling assets"
#bundle exec rake assets:precompile

echo "Running rails server"
bin/rails s -b 0.0.0.0

echo "Exited with code ${?}"
exit $?

