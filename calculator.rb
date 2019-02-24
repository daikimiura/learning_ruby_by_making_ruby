require 'minruby'

def sum(tree)
  if tree[0] == 'lit'
    tree[1]
  else
    left = sum(tree[1])
    right = sum(tree[2])
    left + right
  end
end

# str = gets
# tree = minruby_parse(str)
tree = minruby_parse("(1 + 2) + (3 + 4)")
# answer =
answer = sum(tree)
p(answer)
