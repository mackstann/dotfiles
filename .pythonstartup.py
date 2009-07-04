import sys, os, time, re, random, pprint
sys.ps1 = "\033[34m>>>\033[0m "
sys.ps2 = "\033[32m...\033[0m "

try:
    import readline
except ImportError:
    print "no readline :("
else:
    import rlcompleter
    readline.parse_and_bind("tab: complete")
    readline.parse_and_bind("set editing-mode vi")

