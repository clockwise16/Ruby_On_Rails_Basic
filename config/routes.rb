Rails.application.routes.draw do
  get '/' => 'home#index' #홈컨트롤러의 인덱스 액션에 넣어줄거야
  get '/lotto' =>  'home#lotto' #홈커트롤러 안에 lotto 액션
  get '/lunch' =>  'home#lunch'
  get '/search' => 'home#search'
end
