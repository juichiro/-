#ver2
#リファクタリング
#範囲でア..オと書けるのをど忘れしていた
#同じ処理が多すぎる？

targets = ['キシモト', 'イトウ', 'ババ', 'カネダ', 'ワダ', 'ハマダ']



def index(targets)
  gojyuon = [
    ('ア'..'オ'),
    ('カ'..'コ'),
    ('サ'..'ソ'),
    ('タ'..'ト'),
    ('ナ'..'ノ'),
    ('ハ'..'ボ'),
    ('マ'..'モ'),
    ('ヤ'..'ヨ'),
    ('ラ'..'ロ'),
    ('ワ'..'ン')
  ]
  result = []
gojyuon.each do |gyou|
  targets.sort.each do |data|
    if gyou.include?(data[0])
      result.empty? || result.last[0]!=gyou.first ? result << [gyou.first,[data]] : result.last[1] << data
    end
  end
 end
 result
end

p index(targets)
