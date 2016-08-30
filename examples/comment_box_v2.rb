class CommentBox
  include Componenta

  render do 
    h1 "Comment Box"
    CommentList.render
    CommentForm.render
  end 
end

class CommentList
  include Componenta

  render do 
    comments.each do |comment|
      div class: 'comment' do
        CommentItem.render(comment: comment)
      end
    end
  end

  def comments
    Comment.where(thread_id: 10)
  end
end


class CommentForm
  include Componenta

  render do 
  end
end


class CommentItem
  include Componenta
  render do 
  end
end