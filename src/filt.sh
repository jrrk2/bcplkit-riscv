tr '\011' \# |sed -e 's=#=            EMIT("=' -e 's=$=")=' -e 's=#= ='|fgrep -v '".'|less
