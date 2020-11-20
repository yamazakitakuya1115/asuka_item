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
# kusa

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
# udewa

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
# makimono

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
tubo