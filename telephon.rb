#カタカナ文字列の配列を渡すと、ア段の音別にグループ分けした配列を返すプログラムを作成せよ。
#各要素は50音順にソートもすること。
#IN: ['キシモト', 'イトウ', 'ババ', 'カネダ', 'ワダ', 'ハマダ']
#OUT: [ ['ア', ['イトウ']], ['カ', ['カネダ', 'キシモト']], ['ハ', ['ハマダ', 'ババ']], ['ワ', ['ワダ']] ]


array = ['キシモト', 'イトウ', 'ババ', 'カネダ', 'ワダ', 'ハマダ']

def index(array)
  hash = {}
  result = []

  array.sort.each do |data|
    case data[0]
    when 'ア','イ','ウ','エ','オ' then
      hash['ア'] ? hash['ア'] << data :  hash['ア'] = [data]
    when 'カ','キ','ク','ケ','コ' then
      hash['カ'] ? hash['カ'] << data :  hash['カ'] = [data]
    when 'サ','シ','ス','セ','ソ' then
      hash['サ'] ? hash['サ'] << data :  hash['サ'] = [data]
    when 'タ','チ','ツ','テ','ト' then
      hash['タ'] ? hash['タ'] << data :  hash['タ'] = [data]
    when 'ナ','ニ','ヌ','ネ','ノ' then
      hash['ナ'] ? hash['ナ'] << data :  hash['ナ'] = [data]
    when 'ハ','ヒ','フ','ヘ','ホ','バ','ビ','ブ','ベ','ボ' then
      hash['ハ'] ? hash['ハ'] << data :  hash['ハ'] = [data]
    when 'マ','ミ','ム','メ','モ' then
      hash['マ'] ? hash['マ'] << data :  hash['マ'] = [data]
    when 'ヤ','ユ','ヨ' then
      hash['ヤ'] ? hash['ヤ'] << data :  hash['ヤ'] = [data]
    when 'ラ','リ','ル','レ','ロ' then
      hash['ラ'] ? hash['ラ'] << data :  hash['ラ'] = [data]
    when 'ワ','ヲ','ン' then
      hash['ワ'] ? hash['ワ'] << data :  hash['ワ'] = [data]
    end
 end
  hash.sort
end

p index(array)
