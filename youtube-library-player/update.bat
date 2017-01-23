@echo ### Youtube library update DB ###
@echo off
@del db.js
@echo part 1 of 3
wget.exe -q -O json1 --header="Accept-Language:ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4" "https://www.youtube.com/audioswap_ajax?action_get_tracks=1&ads=false&dl=true&s=music&mr=1000&si=0&qid=0&sh=true"
@echo part 2 of 3
wget.exe -q -O json2 --header="Accept-Language:ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4" "https://www.youtube.com/audioswap_ajax?action_get_tracks=1&ads=false&dl=true&s=music&mr=1000&si=1000&qid=1&sh=true"
@echo part 3 of 3
wget.exe -q -O json3 --header="Accept-Language:ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4" "https://www.youtube.com/audioswap_ajax?action_get_tracks=1&ads=false&dl=true&s=music&mr=1000&si=2000&qid=2&sh=true"
@echo ; >>json1
@echo ; >>json2
@echo ; >>json3
@echo var json1 = >> db.js
@type json1 >> db.js
@del json1
@echo var json2 = >> db.js
@type json2 >> db.js
@del json2
@echo var json3= >> db.js
@type json3 >> db.js
@del json3
@echo Finish
pause