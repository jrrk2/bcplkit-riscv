tr '\011' \# < icint.s|sed -e 's=#=            EMIT("=' -e 's=$=")=' -e 's=#= ='|fgrep -v '".'|less
