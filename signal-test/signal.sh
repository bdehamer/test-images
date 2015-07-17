#!/bin/sh

for sig in SIGHUP SIGINT SIGQUIT SIGABRT SIGTERM SIGUSR1 SIGUSR2 SIGSTOP; do
  trap "echo 'Exiting with $sig'; exit 1" $sig
done

echo "Waiting for signal..."
while :; do sleep 1; done
