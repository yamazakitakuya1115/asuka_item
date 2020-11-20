def item(buy, sell, kind, names)
  # kusa, udewa, makimono, onigiri
  names.each do |name|
    Item.create(buy: buy, sell: sell, kind: kind, name: name)
    Item.create(buy: ((buy*0.9).floor(2)).ceil, sell: ((sell*0.9).floor(2)).ceil, kind: kind, name: name + "（呪い）")
    Item.create(buy: ((buy*1.1).floor(2)).ceil, sell: ((sell*1.1).floor(2)).ceil, kind: kind, name: name + "（祝福）")
  end
end

def kusa
  a = "kusa"
  item(50, 25, a, ['雑草'])
  item(100, 50, a, ['薬草', '睡眠草', '混乱草'])
  item(300, 150, a, ['すばやさの種', '高とび草', '物忘れの草', 'キグニ族の種', 'くねくね草'])
  item(400, 200, a, ['命の草', '毒消し草', '胃拡張の種', '胃縮小の種', '超不幸の種'])
  item(500, 250, a, ['弟切草', '目ぐすり草', 'ドラゴン草'])
  item(700, 350, a, ['火炎草'])
  item(1000, 500, a, ['よくきき草'])
  item(1500, 700, a, ['ちからの種', '毒草'])
  item(2000, 1000, a, ['しあわせ草', '不幸の種', '無敵草'])
  item(2500, 1250, a, ['復活の草'])
  item(3000, 1500, a, ['天使の種'])
end

def udewa
  a = "udewa"
  item(2000, 1000, a, ['混乱よけの腕輪', 'サビよけの腕輪', 'ねむらずの腕輪', '呪いよけの腕輪', '必着の腕輪'])
  item(3000, 1500, a, ['たかとびの腕輪', 'ちからの腕輪', 'とうぞくの腕輪', 'ねがいの腕輪'])
  item(4000, 2000, a, ['遠投の腕輪', '百発百中の腕輪', 'まがりの腕輪'])
  item(5000, 2500, a, ['いやしの腕輪', 'ドレインよけの腕輪', 'よくみえの腕輪'])
  item(6000, 3000, a, ['会心の腕輪', '痛恨の腕輪'])
  item(7500, 3000, a, ['まもりの腕輪', '身がわりの腕輪'])
  item(10000, 5000, a, ['通過の腕輪', '透視の腕輪', 'パコレプキンの腕輪'])
  item(12000, 6000, a, ['値切の腕輪'])
  item(15000, 7500, a, ['うけながしの腕輪', 'しあわせの腕輪', 'ハラヘラズの腕輪', 'ハラヘリの腕輪'])
  item(25000, 1000, a, ['気力の腕輪'])
  item(25000, 12000, a, ['識別の腕輪'])
  item(25000, 10000, a, ['ワナ師の腕輪'])
end

def makimono
  a = "makimono"
  item(200, 100, a, ['ワナの巻物'])
  item(500, 250, a, ['識別の巻物', 'あかりの巻物', '水びたしの巻物', '火種の巻物', '引き上げの巻物'])
  item(1000, 500, a, ['おはらいの巻物', 'ゾワゾワの巻物', '必中の巻物', 'ファイトの巻物', 'ワナけしの巻物', 'はりつけの巻物', '飛ばずの巻物', '持ち帰りの巻物'])
  item(1200, 600, a, ['天の恵みの巻物', '地の恵みの巻物', 'バクスイの巻物', '炎上の巻物'])
  item(1500, 750, a, ['混乱の巻物', '落石の巻物', 'いかずちの巻物', '困った時の巻物', '困った巻物', 'モンスターハウスの巻物', '奥技の巻物'])
  item(2000, 1000, a, ['水がれの巻物', '大部屋の巻物', '壺われずの巻物', '壺増大の巻物', '転写の巻物'])
  item(3000, 1500, a, ['すいだしの巻物'])
  item(4000, 2000, a, ['メッキの巻物'])
  item(5000, 2500, a, ['白紙の巻物'])
  item(7500, 2500, a, ['聖域の巻物'])
  item(25000, 400, a, ['ねだやしの巻物'])
end

def onigiri
  a = "onigiri"
  item(100, 50, a, ['おにぎり'])
  item(200, 100, a, ['大きなおにぎり'])
  item(300, 150, a, ['巨大なおにぎり'])
  item(100, 20, a, ['焼きおにぎり'])
  item(200, 100, a, ['特製おにぎり'])
  item(500, 200, a, ['コヨリのおにぎり', '奇妙なおにぎり'])
  item(40, 1, a, ['まずそうなおにぎり'])
end
# onigiri

def tue1(tue1b, tue1s, tue1)
  tue1.each do |name|
    100.times do |i|
      tue_buy = tue1b
      tue_sell = tue1s
      tue_name = "#{name}[#{i}]"
      tue_buy += (tue1b/20) * i
      tue_sell += (tue1s/20) * i
      Item.create(buy: tue_buy, sell: tue_sell, kind: "tue", name: tue_name)
      Item.create(buy: (tue_buy * 0.9).ceil, sell: (tue_sell * 0.9).ceil, kind: "tue", name: tue_name + "（呪い）")
      Item.create(buy: (tue_buy * 1.1).ceil, sell: (tue_sell * 1.1).ceil, kind: "tue", name: tue_name + "（祝福）")
    end
  end
end

def tue2(tue1b, tue1s, tue1)
  tue1.each do |name|
    100.times do |i|
      tue_buy = tue1b
      tue_sell = tue1s
      tue_name = "#{name}[#{i}]"
      tue_buy += (tue1b/10) * i
      tue_sell += (tue1s/10) * i
      Item.create(buy: tue_buy, sell: tue_sell, kind: "tue", name: tue_name)
      Item.create(buy: (tue_buy * 0.9).ceil, sell: (tue_sell * 0.9).ceil, kind: "tue", name: tue_name + "（呪い）")
      Item.create(buy: (tue_buy * 1.1).ceil, sell: (tue_sell * 1.1).ceil, kind: "tue", name: tue_name + "（祝福）")
    end
  end
end

def tue
  tue1(500, 200, ['ふきとばしの杖'])
  tue1(800, 400, ['イカリの杖', '痛み分けの杖', '入れ替えの杖', 'けものみちの杖', 'ばくだんの杖', '場所替えの杖', '引きよせの杖'])
  tue2(800, 400, ['回復の杖'])
  tue1(1000, 500, ['転ばぬ先の杖'])
  tue1(1200, 400, ['鈍足の杖'])
  tue1(1200, 600, ['一時しのぎの杖'])
  tue1(2000, 500, ['封印の杖'])
  tue1(2000, 1000, ['いかずちの杖', 'クォーターの杖', 'とうめいの杖', 'トンネルの杖', '身がわりの杖'])
  tue2(2000, 1000, ['倍速の杖'])
  tue1(2500, 1200, ['オオイカリの杖', 'からぶりの杖', '火ばしらの杖'])
  tue1(3000, 1500, ['しあわせの杖'])
  tue2(3000, 1500, ['不幸の杖'])
end


def tubo1(tubo1b, tubo1s, tubo1)
  tubo1.each do |name|
    11.times do |i|
      tubo_buy = tubo1b
      tubo_sell = tubo1s
      tubo_name = "#{name}[#{i}]"
      tubo_buy += (tubo1b/20) * i
      tubo_sell += (tubo1s/20) * i
      Item.create(buy: tubo_buy, sell: tubo_sell, kind: "tubo", name: tubo_name)
    end
  end
end

def tubo
  tubo1(1000, 500, ['回復の壺', '水がめ', '弱化の壺'])
  tubo1(1200, 600, ['保存の壺', '換金の壺'])
  tubo1(1500, 750.0, ['識別の壺', '变化の壺'])
  tubo1(2000, 1000, ['やりすごしの壺', '底抜けの壺', '手封じの壺'])
  tubo1(3000, 1500, ['倉庫の壺'])
  tubo1(4000, 2000, ['合成の壺'])
  tubo1(5000, 2000, ['祝福の壺'])
  tubo1(15000, 7500, ['強化の壺'])
end

def buki1(strong, buy, sell, name)
  num = strong + 100
  num.times do |i|
    buki_buy = buy
    buki_sell = sell
    buki_name = name
    plusminus = i - strong
    if plusminus < 0
      buki_name = name + "#{plusminus}"
      buki_buy -= (buy * 0.05) * plusminus.abs
      buki_sell -= (sell * 0.05) * plusminus.abs
    elsif plusminus > 0
      buki_name = name + "+#{plusminus}"
      buki_buy += (buy * 0.05) * plusminus.abs
      buki_sell += (sell * 0.05) * plusminus.abs
    end
    if buki_buy <= 0
      buki_buy2 = nil
    else
      buki_buy2 = buki_buy
    end
    if buki_sell <= 0
      buki_sell2 = nil
    else
      buki_sell2 = buki_sell
    end
    Item.create(buy: buki_buy2, sell: buki_sell2, kind: "buki", name: buki_name)
    buki_buy_noroi = ((buki_buy*0.9).floor(2)).ceil
    buki_sell_noroi = ((buki_sell*0.9).floor(2)).ceil
    if buki_buy_noroi <= 0
      buki_buy_noroi2 = nil
    else
      buki_buy_noroi2 = buki_buy_noroi
    end
    if buki_sell_noroi <= 0
      buki_sell_noroi2 = nil
    else
      buki_sell_noroi2 = buki_sell_noroi
    end
    Item.create(buy: buki_buy_noroi2, sell: buki_sell_noroi2, kind: "buki", name: buki_name + "（呪い）")
    buki_buy_shuku = ((buki_buy*1.1).floor(2)).ceil
    buki_sell_shuku = ((buki_sell*1.1).floor(2)).ceil
    if buki_buy_shuku <= 0
      buki_buy_shuku2 = nil
    else
      buki_buy_shuku2 = buki_buy_shuku
    end
    if buki_sell_shuku <= 0
      buki_sell_shuku2 = nil
    else
      buki_sell_shuku2 = buki_sell_shuku
    end
    Item.create(buy: buki_buy_shuku2, sell: buki_sell_shuku2, kind: "buki", name: buki_name + "（祝福）")
  end
end

def buki
  buki1(2, 3000, 1500, '鍛えた木刀')
  buki1(3, 400, 200, 'こんぼう')
  buki1(5, 700, 300, '長巻')
  buki1(8, 1200, 500, 'カタナ')
  buki1(10, 5800, 1600, 'どうたぬき')
  buki1(18, 15000, 7000, '剛剣マンジカブラ')
  buki1(35, 20000, 10000, '火迅風魔刀')
  buki1(99, 55000, 20000, '秘剣カブラステギ')
  buki1(4, 5000, 2000, '成仏のカマ')
  buki1(5, 5000, 2500, 'マリンスラッシャー')
  buki1(6, 4500, 2000, '１ツ目殺し')
  buki1(6, 5000, 2500, 'ドレインバスター')
  buki1(6, 8000, 1800, '三日月刀')
  buki1(15, 10000, 5000, 'ドラゴンキラー')
  buki1(25, 30000, 15000, '龍神剣')
  buki1(5, 5000, 2500, 'モーニングスター')
  buki1(5, 20000, 10000, '如意棒')
  buki1(9, 5000, 2500, 'アイアンヘッドの頭')
  buki1(10, 3500, 1200, 'ヤリ')
  buki1(10, 8000, 4000, 'ぶっとびハンマー')
  buki1(12, 3000, 1500, '木づち')
  buki1(20, 6000, 2400, 'ミノタウロスの斧')
  buki1(50, 60000, 20000, '黄泉水底ノ鎖')
  buki1(1, 6000, 100, '衰弱の枝')
  buki1(2, 3500, 1600, 'つるはし')
  buki1(2, 15000, 3000, '妖刀かまいたち')
  buki1(2, 16000, 8000, 'ガマラのムチ')
  buki1(3, 5500, 2000, '根性の竹刀')
  buki1(3, 6000, 3000, '金の剣')
  buki1(3, 10000, 5000, '必中の剣')
  buki1(3, 10000, 5000, 'にぎりへんげの剣')
  buki1(4, 2000, 1000, 'かつおぶし')
  buki1(4, 20000, 10000, '車輪のやいば')
  buki1(5, 8000, 4000, '背水の剣')
  buki1(6, 20000, 10000, '回復の剣')
  buki1(7, 3200, 900, 'ケンゴウのカタナ')
  buki1(8, 1800, 900, '鉄扇')
  buki1(8, 2000, 1000, 'サトリのつるはし')
  buki1(35, 3000, 1500, '使い捨ての剣')
end

def tate1(strong, buy, sell, name)
  num = strong + 100
  num.times do |i|
    tate_buy = buy
    tate_sell = sell
    tate_name = name
    plusminus = i - strong
    if plusminus < 0
      tate_name = name + "#{plusminus}"
      tate_buy -= (buy * 0.1) * plusminus.abs
      tate_sell -= (sell * 0.1) * plusminus.abs
    elsif plusminus > 0
      tate_name = name + "+#{plusminus}"
      tate_buy += (buy * 0.1) * plusminus.abs
      tate_sell += (sell * 0.1) * plusminus.abs
    end
    if tate_buy <= 0
      tate_buy2 = nil
    else
      tate_buy2 = tate_buy
    end
    if tate_sell <= 0
      tate_sell2 = nil
    else
      tate_sell2 = tate_sell
    end
    Item.create(buy: tate_buy2, sell: tate_sell2, kind: "tate", name: tate_name)
    tate_buy_noroi = ((tate_buy*0.9).floor(2)).ceil
    tate_sell_noroi = ((tate_sell*0.9).floor(2)).ceil
    if tate_buy_noroi <= 0
      tate_buy_noroi2 = nil
    else
      tate_buy_noroi2 = tate_buy_noroi
    end
    if tate_sell_noroi <= 0
      tate_sell_noroi2 = nil
    else
      tate_sell_noroi2 = tate_sell_noroi
    end
    Item.create(buy: tate_buy_noroi2, sell: tate_sell_noroi2, kind: "tate", name: tate_name + "（呪い）")
    tate_buy_shuku = ((tate_buy*1.1).floor(2)).ceil
    tate_sell_shuku = ((tate_sell*1.1).floor(2)).ceil
    if tate_buy_shuku <= 0
      tate_buy_shuku2 = nil
    else
      tate_buy_shuku2 = tate_buy_shuku
    end
    if tate_sell_shuku <= 0
      tate_sell_shuku2 = nil
    else
      tate_sell_shuku2 = tate_sell_shuku
    end
    Item.create(buy: tate_buy_shuku2, sell: tate_sell_shuku2, kind: "tate", name: tate_name + "（祝福）")
  end
end

def tate
  tate1(2, 3500, 500, '鍛えた木の盾')
  tate1(2, 10000, 5000, 'みやびやかな盾')
  tate1(5, 400, 200, '青銅甲の盾')
  tate1(9, 1200, 600, '鉄甲の盾')
  tate1(12, 10000, 2000, '獣王の盾')
  tate1(16, 15000, 3500, '風魔の盾')
  tate1(99, 55000, 20000, 'ラセン風魔の盾')
  tate1(5, 4000, 2000, 'ゴムバンの盾')
  tate1(5, 4000, 1600, 'ガマラの盾')
  tate1(5, 5000, 2000, '地雷ナバリの盾')
  tate1(5, 4000, 2000, 'バトルカウンター')
  tate1(5, 5500, 2700, 'どんぶりの盾')
  tate1(5, 15000, 7500, '身かわしの盾')
  tate1(6, 6000, 3000, 'うろこの盾')
  tate1(6, 15000, 3500, 'しあわせの盾')
  tate1(8, 20000, 10000, '不動の盾')
  tate1(10, 6000, 3000, 'ドラゴンシールド')
  tate1(12, 2400, 1200, '重装の盾')
  tate1(30, 8000, 4000, '正面戦士の盾')
  tate1(40, 1600, 600, '使い捨ての盾')
  tate1(1, 40000, 20000, 'サトリの盾')
  tate1(2, 2000, 1000, '皮の盾')
  tate1(2, 10000, 5000, '見切りの盾')
  tate1(3, 12000, 4000, 'やまびこの盾')
  tate1(4, 2000, 1000, 'おまつりの盾')
  tate1(4, 6000, 1500, 'トドの盾')
  tate1(4, 10000, 4000, '金の盾')
  tate1(7, 13000, 5000, '矛の盾')
  tate1(9, 15000, 7500, 'グランドカウンター')
  tate1(50, 60000, 30000, '黄泉巫女神の盾')
end

def ya1(buy, sell, kind, name)
  99.times do |i|
    buy2 = buy
    buy2 = buy * (i + 1)
    sell2 = sell
    sell2 = sell * (i + 1)
    Item.create(buy: buy2, sell: sell2, kind: kind, name: "#{i + 1}本の#{name}")
  end
end

def tama1(buy, sell, kind, name)
  99.times do |i|
    buy2 = buy
    buy2 = buy * (i + 1)
    sell2 = sell
    sell2 = sell * (i + 1)
    Item.create(buy: buy2, sell: sell2, kind: kind, name: "#{i + 1}個の#{name}")
  end
end

def ya
  ya1(20, 2, "ya", '木の矢')
  ya1(60, 10, "ya", '鉄の矢')
  ya1(60, 4, "ya", '毒矢')
  ya1(80, 20, "ya", "銀の矢")
  ya1(120, 40, "ya", "会心の矢")
  ya1(200, 80, "ya", "かまいたちの矢")
end

def tama
  tama1(100, 50, "tama", "大砲の弾")
  tama1(150, 70, "ishi", "デブータの石")
end

def fuumaseki
  Item.create(buy: 100000, sell: 50000, kind: "fuumaseki", name: "風魔石")
end

# tue
# tubo
# kusa
# udewa
# makimono
# buki
# tate
# ya
# tama
# onigiri
# fuumaseki
