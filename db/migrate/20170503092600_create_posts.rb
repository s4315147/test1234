class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      
      t.string    :title
      t.string    :content
      
      # rake db:migrate   #진짜 데이터 베이스 생성
      #만약 틀린게 있으면 데이터 베이스를 다 떨어 트린다 # rake db:drop

      t.timestamps null: false
    end
  end
end

