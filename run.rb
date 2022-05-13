require './decode_char.rb'
require './decode_word.rb'
require './decode.rb'

p decode_char('.-') # "a"
p decode_word('.- .. -.') # "ain"
p decode('.-- .-. .. - .   -- .   -- . ... ... .- --. .') # "write me message"