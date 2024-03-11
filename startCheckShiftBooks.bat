rem //文字コード対応やで
chcp 65001

setlocal enabledelayedexpansion

pushd "I:\Systems\Public\休日出勤・深夜残業届\旧\CheckList\source"
cscript "checkShiftBooks.vbs"
popd

endlocal
exit 0