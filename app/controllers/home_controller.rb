class HomeController < ApplicationController
  def index
    
    #read
    @pps = Post.all.reverse  #controller 에서 페이지에 보여야하는것은 @ 가 앞에붙는다 
    
  end
  def write
    pp = Post.new   #Post는 아까만든 데이터베이스 테이블 이름
    pp.title = params[:tt]  #params = 불러오다 #index에 tt에 벨류를  있는 Post 데이터베이스에있는 title에 넣어준다
    pp.content = params[:cc]
    pp.save
    
    redirect_to"/home/index" #이 위에 명령어를 다 하면 홈 인덱스로넘어간다
    
      #진행되는 순서 index / route / controller
  end
  
  def delete
    dpp = Post.find(params[:id])  #id 를 찾아라 
    dpp.delete  #delete 는 지우는 function name이다 
    redirect_to"/home/index"
  end
  
  def update
    @pps = Post.find(params[:id])
  end
  
  def updates
    pp = Post.find(params[:id])
    pp.title = params[:tttt]
    pp.content = params[:cccc]
    pp.save
    
     redirect_to"/home/index"
  end
  
end

