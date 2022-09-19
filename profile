if [ "$DESKTOP_SESSION" = "i3" ]; then
    export $(gnome-keyring-daemon --start)
    # SSH_AGENT_PID required to stop xinitrc-common from starting ssh-agent
    export SSH_AGENT_PID=${GNOME_KEYRING_PID:-gnome}
fi

