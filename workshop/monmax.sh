
case $1 in
        1 | 01 | ja* ) msg="January has 31 days"    ;;
        2 | 02 | fe* ) msg="February has 28 days"   ;;
        3 | 03 | mar*) msg="March has 31 days"      ;;
        4 | 04 | ap* ) msg="April has 30 days"      ;;
        5 | 05 | may ) msg="May has 31 days"        ;;
        6 | 06 | jun*) msg="June has 30 days"       ;;
        7 | 07 | jul*) msg="July has 31 days"       ;;
        8 | 08 | au* ) msg="August has 31 days"     ;;
        9 | 09 | se* ) msg="September has 30 days"  ;;
            10 | oc* ) msg="October has 31 days"    ;;
            11 | no* ) msg="November has 30 days"   ;;
            12 | de* ) msg="December has 31 days"   ;;
                   * ) msg="Invalid month"          ;;
esac
echo $msg
