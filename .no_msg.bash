git() {
    # If the command is exactly 'git commit' (without -m)
    if [[ "$1" == "commit" && "$*" != *"-m"* ]]; then
        shift # remove 'commit' from the argument list
        
        # Try a silent commit first
        ERR_MSG=$(GIT_EDITOR=: command git commit "$@" 2>&1)
        
        if [ $? -ne 0 ]; then
            # If it failed due to conflicts or empty staging, fallback to Vim
            if echo "$ERR_MSG" | grep -Ei "conflict|nothing to commit|error"; then
                GIT_EDITOR=vim command git commit "$@"
            else
                echo "$ERR_MSG"
            fi
        fi
    else
        # Run all other git commands normally
        command git "$@"
    fi
}

