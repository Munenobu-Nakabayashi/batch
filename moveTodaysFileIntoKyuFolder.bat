rem //文字コード対応やで
chcp 65001

setlocal enabledelayedexpansion

pushd "I:\Systems\Public\休日出勤・深夜残業届"
rem cscript "checkShiftBooks.vbs"

rem //本日の西暦8桁を取得する
set yyyymmdd=%date:~0,4%%date:~5,2%%date:~8,2%

rem //本日日付を持つエクセルファイルを検索し【旧】フォルダーへ移動させる（※移動可能ファイルは本日日付を持つエクセルファイルのみ）
for %%a in (*_%yyyymmdd%.xlsx) do (
     rem //移動できなかった場合を考慮し標準エラー出力をチェックファイルへ追記モードで掃出す
     chcp 932
     echo. >> .\旧\CheckList\%yyyymmdd%.txt
     move %%a .\旧 >> .\旧\CheckList\%yyyymmdd%.txt 2>&1
     chcp 65001
)

popd

endlocal
exit 0