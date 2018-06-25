class HomeController < ApplicationController # 상속하겠다
    def index
        render 'home/index' # 홈폴더안에 인덱스.erb를 넣겠다
        # erb :index 와 비슷하다. # 이름을 같게 하면 [erb :] 생략 가능
    end
    
    def lotto
        #로또번호 6개 추천하는 ruby 코드
        @lotto = (1..45).to_a.sample(6)
        render 'home/lotto'
    end

    def lunch
        #점심메뉴 추천 ruby 코드
        #1. 원하는 메뉴를 menu 배열에 저장
        #2. menu에서 랜덤으로 하나를 뽑아 lunch에 넣어주고
        #3. 'home/lunch'에서 @lunch를 보내준다
        menu = ["20층", "김까", "시래기"]
        @lunch = menu.sample
        # render 'home/dinner' (erb)
    end
    
    def search
        # form을 통해 검색어를 입력 받아
        # naver, daum, google에 넘겨준다.
    end
end