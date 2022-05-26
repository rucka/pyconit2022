IDENTITY="python3 services/identity/main.py"
PROFILE="python3 services/profile/main.py"
CONTENT="yarn workspace @pyconit2022/content start"
PRICE="yarn workspace @pyconit2022/price start"
OMS="yarn workspace @pyconit2022/oms start"
ACCOUNTING="yarn workspace @pyconit2022/accounting start"
WEBSITE="yarn workspace @pyconit2022/website dev"

killall ${IDENTITY} 2>/dev/null
killall ${PROFILE} 2>/dev/null
killall ${CONTENT} 2>/dev/null
killall ${PRICE} 2>/dev/null
killall ${OMS} 2>/dev/null
killall ${ACCOUNTING} 2>/dev/null
killall ${WEBSITE} 2>/dev/null

(trap 'kill 0' SIGINT; ${CONTENT} & ${PRICE} & ${OMS} & ${ACCOUNTING} & ${IDENTITY} & ${PROFILE} & ${WEBSITE})
