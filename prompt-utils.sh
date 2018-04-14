# Expected: brew, git, git-completion

__pwd_last3() {
    typeset start=${PWD/${HOME}/\~}
    typeset delete=${start%/*/*/*}
    typeset partial=${start#${delete}/}
    if [[ "${partial}" != /* && "${partial}" != \~* ]]
    then
        partial="${partial}"
    fi
    echo "${partial}"
}


