class Comment
  class Box
    include Componenta

    render do 
      h1 "Comment Box"
      List.render
      Form.render
    end 
  end

  class List
    include Componenta

    render do 
      comments.each do |comment|
        div class: 'comment' do
          Item.render(comment: comment)
        end
      end
    end

    def comments
      Comment.where(thread_id: 10)
    end
  end


  class Form
    include Componenta

    render do 
    end
  end


  class Item
    include Componenta
  
    render do 
    end
  end
end