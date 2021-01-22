#echo " {" > data.json.new

nkf -w contacts.json > contacts.json.utf
cat contacts.json.utf > data.json.new
### 相談件数 　contacts：連絡先

#echo "AAA" >> data.json.new

#nkf -w querents.json > querents.json.utf
#cat querents.json.utf >> data.json.new
#### そのまま手をつけない　querents：相談者

#echo "BBB" >> data.json.new

nkf -w  patients.json.new > patients.json.new.utf
cat patients.json.new.utf >> data.json.new
### 発症者一覧　patients：患者
### (CCC)
### (DDD)
#echo "GGG" >> data.json.new

#nkf -w  patients_summary.json > patients_summary.json.utf
#cat patients_summary.json.utf >> data.json.new
#### 記者発表資料からひろった発症人数

#echo "KKK" >> data.json.new

#nkf -w  discharges_summary.json > discharges_summary.json.utf
#cat discharges_summary.json.utf >> data.json.new
#### 

#echo "LLL" >> data.json.new

#nkf -w  inspections_summary.json > inspections_summary.json.utf
nkf -w  end.json > end.json.utf
#cat inspections_summary.json.utf >> data.json.new
cat end.json.utf >> data.json.new

### 検査実施件数
###　inspections：検査

#echo "END" >> data.json.new

# org  20967行
# new  20976行
#
