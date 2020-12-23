select tool in nmap metasploit wireshark
do
    # echo "Awesome tool $tool"
    case "$tool" in
    "nmap")
        echo "nmap is best network mapping tool " ;;
    "metasploit")
        echo "Metasploitis exploiting tool ";;
    "wireshark")
        echo "Wireshare is network scanner ";;
        *)
        echo "Incorret Selection";;
    esac
done