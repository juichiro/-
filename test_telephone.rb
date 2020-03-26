require 'minitest/autorun'
require './ver2_telephone.rb'

class TestTelephon < Minitest::Test

def test_index
  array = ['キシモト', 'イトウ', 'ババ', 'カネダ', 'ワダ', 'ハマダ']
  assert_equal [ ['ア', ['イトウ']], ['カ', ['カネダ', 'キシモト']], ['ハ', ['ハマダ', 'ババ']], ['ワ', ['ワダ']] ] , index(array)
end

end
