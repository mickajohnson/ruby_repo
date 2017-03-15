class Node
  attr_accessor = :red, :value, :left, :right, :parent
  def initialize val, parent=nil
    @value = val
    @red = true
    @left = nil
    @right = nil
    @parent = parent
  end
end

class Tree

  def initialize val
    @root = new Node(val)
    @root.red = false
  end

  def right_rotate grandparent
    grandparent.left.parent = grandparent.parent
    if grandparent.parent
      if grandparent.parent.left == grandparent
        grandparent.parent.left = grandparent.left
      else
        grandparent.parent.right = grandparent.left
      end
    end
    parent = grandparent.left
    grandparent.left = parent.right
    if grandparent.left
      grandparent.left.parent = grandparent
    end
    parent.right = grandparent
    grandparent.parent = parent
    grandparent.red = !grandparent.red
    parent.red = !parent.red
  end

  def left_rotate
    grandparent.right.parent = grandparent.parent
    if grandparent.parent
      if grandparent.parent.right == grandparent
        grandparent.parent.right = grandparent.right
      else
        grandparent.parent.left = grandparent.right
      end
    end
    parent = grandparent.right
    grandparent.right = parent.left
    if grandparent.right
      grandparent.right.parent = grandparent
    end
    parent.left = grandparent
    grandparent.parent = parent
    grandparent.red = !grandparent.red
    parent.red = !parent.red
  end

  def insert val
    runner = @root
    while true
    if val > runner.value
      if runner.right
        runner = runner.right
      else
        runner.right = new Node(val, runner)
        runner = runner.right
        break
      end
    else
      if runner.left
        runner = runner.left
      else
        runner.left = new Node(val, runner)
        runner = runner.left
        break
      end
    end

    unless runner.parent.red
      return
    end

    grandparent = runner.parent.parent
    uncle = runner

    if grandparent.left == runner.parent
      uncle = grandparent.right
    else
      uncle = grandparent.left
    end

    if uncle.red
      uncle.red = !uncle.red
      runner.parent.red = !runner.parent.red
      grandparent.red = !grandparent.red
      if grandparent.parent == nil
        grandparent.red = false
      end
    else
      if runner.parent == grandparent.left
        if runner.parent.left == runner
          right_rotate grandparent
        else

        end
      else
        if runner.parent.right == runner
          left_rotate grandparent
        else
          
        end
      end

    end

  end

  def lookup val
    runner = @root
    while runner.value != val
      if val > runner.value
        if runner.right
          runner = runner.right
        else
          return false
        end
      else
        if runner.left
          runner = runner.left
        else
          return false
        end
      end
    end
    return true
  end

end
