class Kusa < ActiveHash::Base
  self.data = [
    {id: 1, buy: 50, sell: 25, kind: "kusa", name: "雑草"},
    {id: 2, buy: 45, sell: 23, kind: "kusa", name: "雑草（呪い）"},
    {id: 3, buy: 55, sell: 28, kind: "kusa", name: "雑草（祝福）"},
    {id: 4, buy: 100, sell: 50, kind: "kusa", name: "薬草"},
    {id: 5, buy: 90, sell: 45, kind: "kusa", name: "薬草（呪い）"},
    {id: 6, buy: 110, sell: 55, kind: "kusa", name: "薬草（祝福）"},
    {id: 7, buy: 100, sell: 50, kind: "kusa", name: "睡眠草"},
    {id: 8, buy: 90, sell: 45, kind: "kusa", name: "睡眠草（呪い）"},
    {id: 9, buy: 110, sell: 55, kind: "kusa", name: "睡眠草（祝福）"},
    {id: 10, buy: 100, sell: 50, kind: "kusa", name: "混乱草"},
    {id: 11, buy: 90, sell: 45, kind: "kusa", name: "混乱草（呪い）"},
    {id: 12, buy: 110, sell: 55, kind: "kusa", name: "混乱草（祝福）"},
    {id: 13, buy: 300, sell: 150, kind: "kusa", name: "すばやさの種"},
    {id: 14, buy: 270, sell: 135, kind: "kusa", name: "すばやさの種（呪い）"},
    {id: 15, buy: 330, sell: 165, kind: "kusa", name: "すばやさの種（祝福）"},
    {id: 16, buy: 300, sell: 150, kind: "kusa", name: "高とび草"},
    {id: 17, buy: 270, sell: 135, kind: "kusa", name: "高とび草（呪い）"},
    {id: 18, buy: 330, sell: 165, kind: "kusa", name: "高とび草（祝福）"},
    {id: 19, buy: 300, sell: 150, kind: "kusa", name: "物忘れの草"},
    {id: 20, buy: 270, sell: 135, kind: "kusa", name: "物忘れの草（呪い）"},
    {id: 21, buy: 330, sell: 165, kind: "kusa", name: "物忘れの草（祝福）"},
    {id: 22, buy: 300, sell: 150, kind: "kusa", name: "キグニ族の種"},
    {id: 23, buy: 270, sell: 135, kind: "kusa", name: "キグニ族の種（呪い）"},
    {id: 24, buy: 330, sell: 165, kind: "kusa", name: "キグニ族の種（祝福）"},
    {id: 25, buy: 300, sell: 150, kind: "kusa", name: "くねくね草"},
    {id: 26, buy: 270, sell: 135, kind: "kusa", name: "くねくね草（呪い）"},
    {id: 27, buy: 330, sell: 165, kind: "kusa", name: "くねくね草（祝福）"},
    {id: 28, buy: 400, sell: 200, kind: "kusa", name: "命の草"},
    {id: 29, buy: 360, sell: 180, kind: "kusa", name: "命の草（呪い）"},
    {id: 30, buy: 440, sell: 220, kind: "kusa", name: "命の草（祝福）"},
    {id: 31, buy: 400, sell: 200, kind: "kusa", name: "毒消し草"},
    {id: 32, buy: 360, sell: 180, kind: "kusa", name: "毒消し草（呪い）"},
    {id: 33, buy: 440, sell: 220, kind: "kusa", name: "毒消し草（祝福）"},
    {id: 34, buy: 400, sell: 200, kind: "kusa", name: "胃拡張の種"},
    {id: 35, buy: 360, sell: 180, kind: "kusa", name: "胃拡張の種（呪い）"},
    {id: 36, buy: 440, sell: 220, kind: "kusa", name: "胃拡張の種（祝福）"},
    {id: 37, buy: 400, sell: 200, kind: "kusa", name: "胃縮小の種"},
    {id: 38, buy: 360, sell: 180, kind: "kusa", name: "胃縮小の種（呪い）"},
    {id: 39, buy: 440, sell: 220, kind: "kusa", name: "胃縮小の種（祝福）"},
    {id: 40, buy: 400, sell: 200, kind: "kusa", name: "超不幸の種"},
    {id: 41, buy: 360, sell: 180, kind: "kusa", name: "超不幸の種（呪い）"},
    {id: 42, buy: 440, sell: 220, kind: "kusa", name: "超不幸の種（祝福）"},
    {id: 43, buy: 500, sell: 250, kind: "kusa", name: "弟切草"},
    {id: 44, buy: 450, sell: 225, kind: "kusa", name: "弟切草（呪い）"},
    {id: 45, buy: 550, sell: 275, kind: "kusa", name: "弟切草（祝福）"},
    {id: 46, buy: 500, sell: 250, kind: "kusa", name: "目ぐすり草"},
    {id: 47, buy: 450, sell: 225, kind: "kusa", name: "目ぐすり草（呪い）"},
    {id: 48, buy: 550, sell: 275, kind: "kusa", name: "目ぐすり草（祝福）"},
    {id: 49, buy: 500, sell: 250, kind: "kusa", name: "ドラゴン草"},
    {id: 50, buy: 450, sell: 225, kind: "kusa", name: "ドラゴン草（呪い）"},
    {id: 51, buy: 550, sell: 275, kind: "kusa", name: "ドラゴン草（祝福）"},
    {id: 52, buy: 700, sell: 350, kind: "kusa", name: "火炎草"},
    {id: 53, buy: 630, sell: 315, kind: "kusa", name: "火炎草（呪い）"},
    {id: 54, buy: 770, sell: 385, kind: "kusa", name: "火炎草（祝福）"},
    {id: 55, buy: 1000, sell: 500, kind: "kusa", name: "よくきき草"},
    {id: 56, buy: 900, sell: 450, kind: "kusa", name: "よくきき草（呪い）"},
    {id: 57, buy: 1100, sell: 550, kind: "kusa", name: "よくきき草（祝福）"},
    {id: 58, buy: 1500, sell: 700, kind: "kusa", name: "ちからの種"},
    {id: 59, buy: 1350, sell: 630, kind: "kusa", name: "ちからの種（呪い）"},
    {id: 60, buy: 1650, sell: 770, kind: "kusa", name: "ちからの種（祝福）"},
    {id: 61, buy: 1500, sell: 700, kind: "kusa", name: "毒草"},
    {id: 62, buy: 1350, sell: 630, kind: "kusa", name: "毒草（呪い）"},
    {id: 63, buy: 1650, sell: 770, kind: "kusa", name: "毒草（祝福）"},
    {id: 64, buy: 2000, sell: 1000, kind: "kusa", name: "しあわせ草"},
    {id: 65, buy: 1800, sell: 900, kind: "kusa", name: "しあわせ草（呪い）"},
    {id: 66, buy: 2200, sell: 1100, kind: "kusa", name: "しあわせ草（祝福）"},
    {id: 67, buy: 2000, sell: 1000, kind: "kusa", name: "不幸の種"},
    {id: 68, buy: 1800, sell: 900, kind: "kusa", name: "不幸の種（呪い）"},
    {id: 69, buy: 2200, sell: 1100, kind: "kusa", name: "不幸の種（祝福）"},
    {id: 70, buy: 2000, sell: 1000, kind: "kusa", name: "無敵草"},
    {id: 71, buy: 1800, sell: 900, kind: "kusa", name: "無敵草（呪い）"},
    {id: 72, buy: 2200, sell: 1100, kind: "kusa", name: "無敵草（祝福）"},
    {id: 73, buy: 2500, sell: 1250, kind: "kusa", name: "復活の草"},
    {id: 74, buy: 2250, sell: 1125, kind: "kusa", name: "復活の草（呪い）"},
    {id: 75, buy: 2750, sell: 1375, kind: "kusa", name: "復活の草（祝福）"},
    {id: 76, buy: 3000, sell: 1500, kind: "kusa", name: "天使の種"},
    {id: 77, buy: 2700, sell: 1350, kind: "kusa", name: "天使の種（呪い）"},
    {id: 78, buy: 3300, sell: 1650, kind: "kusa", name:"天使の種（祝福）"}
  ]
end