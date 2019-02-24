require 'minruby'

def evaluate(tree)
  case tree[0]
  when 'lit'
    tree[1]
  when '+'
    left = sum(tree[1])
    right = sum(tree[2])
    left + right
  when '-'
    left = sum(tree[1])
    right = sum(tree[2])
    left - right
  when '*'
    left = sum(tree[1])
    right = sum(tree[2])
    left * right
  else
    # ここでは tree[0] == '/'
    left = sum(tree[1])
    right = sum(tree[2])
    left / right
  end
end

str = gets
tree = minruby_parse(str)
answer = evaluate(tree)
p(answer)
