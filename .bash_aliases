# User specific aliases and functions

alias l='ls -lh'
alias la='ls -lah'
alias ll='l'
alias ne='emacs -nw'
alias yup='sudo yum update --skip-broken -y'
alias clean='find . -type f  \( -name "*~" -or -name "#*#" \) -print -delete'
alias clear='printf "\ec"'
alias grep='grep --color=always'
alias setjava5='export JAVA_HOME=$JAVA_HOME_5'
alias setjava6='export JAVA_HOME=$JAVA_HOME_6'
alias setjava7='export JAVA_HOME=$JAVA_HOME_7'
alias df='df -h'

alias lf='ls -Gl | grep ^d' #Only list directories
alias lsd='ls -Gal | grep ^d' #Only list directories, including hidden ones

# thanks to:  http://blog.blindgaenger.net/colorize_maven_output.html
# and: http://johannes.jakeapp.com/blog/category/fun-with-linux/200901/maven-colorized
# Colorize Maven Output
alias maven="command mvn"
color_maven() {
  maven $* | sed -e 's/Tests run: \([^,]*\), Failures: \([^,]*\), Errors: \([^,]*\), Skipped: \([^,]*\)/[1;32mTests run: \1[0m, Failures: [1;31m\2[0m, Errors: [1;33m\3[0m, Skipped: [1;34m\4[0m/g' \
    -e 's/\(\[WARN\].*\)/[1;33m\1[0m/g' \
    -e 's/\(WARN.*\)/[0;33m\1[0m/g' \
    -e 's/\(\[INFO\].*\)/[1;32m\1[0m/g' \
    -e 's/\(\[ERROR\].*\)/[1;31m\1[0m/g' \
    -e 's/\(BUILD FAILURE.*\)/[1;31m\1[0m/g' \
    -e 's/\(FAILURE!.*\)/[1;31m\1[0m/g' \
    -e 's/\(BUILD SUCCESS.*\)/[1;37m\1[0m/g' \
    -e 's/\(SUCCESS.*\)/[1;37m\1[0m/g' 
    
}

alias mvn=color_maven
