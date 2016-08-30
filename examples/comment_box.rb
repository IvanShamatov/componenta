class CommentBox
  def render
    Componenta::HTML.new do 
      h1 "Comment Box"
      CommentList.render
      CommentForm.render
    end 
  end
end



class CommentList
  def render
    Componenta::HTML.new do 
      comments.each do |comment|
        div({class: 'comment'}) do
          CommentItem.render(comment: comment)
        end
      end
    end
  end

  def comments
    Comment.where(thread_id: 10)
  end
end


class CommentForm
  def render
    Componenta::HTML.new do 
    end
  end
end

class CommentItem
  def render
  end
end